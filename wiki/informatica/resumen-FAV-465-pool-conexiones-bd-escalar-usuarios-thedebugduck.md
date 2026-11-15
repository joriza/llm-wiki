# FAV-465 — El secreto para que tu Base de Datos soporte miles de usuarios (TheDebugDuck)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=UJnsiQk11Dc) — Canal **TheDebugDuck**, publicado 2026-08-02, 12:32, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-pool-conexiones-bd-miles-usuarios-thedebugduck.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## El puzzle de apertura

API en producción, pico de 1000 usuarios, servidor web con 200 hilos. ¿Tamaño del pool de conexiones a la BD? **A) 200** (una por hilo), **B) 1000** (una por usuario), **C) 10**. La intuición (A o B, «más plazas = más servicio») es la que tumba sistemas en producción: la respuesta correcta es **C, un pool pequeño (~10 conexiones)**.

## Por qué la intuición falla

- El pool **no es como las filas del supermercado** (más cajas = más rápido): las conexiones **pelean por recursos reales dentro del motor** (CPU, discos). Con 200 sesiones simultáneas, los núcleos gastan más tiempo en *context switching* que ejecutando SQL — como un mesero atendiendo 50 mesas a la vez: todos comen más tarde.
- El síntoma engañoso: errores **504 Gateway Timeout** con la CPU de la BD **al 2%**. Los hilos del web server están congelados esperando una conexión libre, o el motor está saturado intentando atender miles de sesiones a la vez. La BD libre esperando trabajo que la app no puede enviarle.
- Analogía del valet parking: mil llaves para un solo encargado no estacionan más rápido.

## Qué cuesta realmente abrir una conexión

TCP three-way handshake (3 RTT) + negociación TLS (certificados y claves) + autenticación en el motor + reserva de memoria de sesión. Abrir/cerrar por cada petición HTTP caería la API aunque el SELECT tarde 0,5 ms. El **connection pool** es un grupo de conexiones ya abiertas y autenticadas que los hilos toman prestadas, usan para la query y **devuelven inmediatamente** — nadie tiene conexión privada; hay límite de plazas y fila de espera. **El pool es un cuello de botella hecho a propósito para proteger a la BD.**

## La fórmula real

Documentada en **HikariCP** y la wiki de **PostgreSQL**: `conexiones = cores × 2 + discos efectivos` (spindle_count). Un servidor de 8 cores + SSD ≈ **17 conexiones**, no 1000. El límite lo marcan cores y discos, no usuarios web. Si no alcanza, la pregunta correcta no es «¿cómo agrando el pool?» sino **«¿por qué las peticiones retienen la conexión tanto tiempo?»**. Subir `max pool size` ante cada timeout es un parche falso.

## Fugas y anti-patrones

- **Pool leak**: liberar la conexión solo en el camino feliz (sin `try-with-resources`/`finally`/`release`) — una excepción y la conexión queda «fantasma». En producción no da error claro: el pool se llena, la petición 101 entra en connection timeout, el balanceador devuelve 504. HikariCP trae **leak detection** que apunta a la línea exacta del bug.
- **Nunca pedir una segunda conexión** dentro de un método que ya tiene una abierta.
- **Jamás mantener una transacción abierta durante una llamada HTTP** a otra API/microservicio: si tarda 2 s, 20 peticiones simultáneas agotan el pool en 1 s — colapso por retención de recursos con la BD sin hacer nada.

## Escala horizontal y configuración

- **50 pods × pool de 20 = 1000 conexiones** golpeando la BD: las grandes empresas ponen un **proxy de conexiones** (PgBouncer para PostgreSQL, ProxySQL para MySQL) que multiplexa miles de conexiones de app en un puñado de conexiones reales.
- Dos configuraciones obligatorias antes de producción: **connection timeout corto** (2-3 s: fallar rápido, liberar, que avisen las métricas) y **leak detection threshold** (alerta en logs si una conexión lleva >5-10 s fuera del pool).
- Checklist final: try-with-resources/finally en todas las queries, timeout configurado, max pool size con la fórmula, y al escalar a réplicas, sumar conexiones totales y considerar proxy.

## Valor

Didáctico y preciso sobre **escalabilidad y池 de conexiones** — el contra-punto de ingeniería al caos de datos de [[resumen-FAV-463-anecdota-bd-sin-relaciones-sin-pk-tocode]] y complemento de arquitectura de [[resumen-FAV-448-monolito-vs-microservicios-thedebugduck]] (mismo canal: **TheDebugDuck llega a 2 fuentes**, FAV-448/465 → entidad candidata, umbral ≥2 cumplido, deferida). Cruza también con [[resumen-FAV-458-ordenar-un-millon-de-datos-torti-code]] (el hardware — cores y discos — manda sobre la intuición).

## Notas

- ASR: «PG bouncer» = PgBouncer; «pool leak» correcto; «lluvia de errores 500» del cierre vs 504 del desarrollo — inconsistencia menor del guion.
- CTA final excluido de la síntesis.
