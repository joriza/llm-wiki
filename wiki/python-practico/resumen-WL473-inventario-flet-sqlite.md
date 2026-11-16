# WL-473 — Construí un control de inventario en Flet + SQLite y lo entregué en 4 días

- **Fuente original**: `raw/wl/tramo-78/2026-08-25-construi-un-control-de-inventario-en-flet-sqlite-y-lo-entregue-en-4-dias.md` ([Vídeo](https://www.youtube.com/watch?v=jw1IOxgbd3s))
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-08-25 · **Duración**: 08:28
- **Dominio provisional**: python-practico (CRUD de escritorio Flet+SQLite — caso entregado a cliente)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Caso real de entrega de un sistema de inventario de escritorio en **4 días** (cotizado 3 semanas por otro proveedor): Flet (UI, open source) + SQLite (embebida), ejecutable sin Python/internet/suscripciones en la máquina del cliente.

## Lecciones metodológicas

1. **Recortar alcance, no escribir más rápido**: preguntar «¿qué haces hoy a mano?» (no «qué te gustaría tener») → 4 pantallas diarias (entradas, salidas, búsqueda, stock bajo); fuera: reportes, multiusuario, códigos de barra, sucursales, facturación, dashboard — «si el cliente no lo hace hoy a mano, no lo metas en la versión 1». «Se construyen 15 funciones que fallan un poco en vez de 4 que funcionan bien.»
2. **Esquema primero, interfaz después**: 3 tablas (productos, movimientos, categorías); **stock nunca guardado — se calcula sumando movimientos** («el número nunca se desincroniza del historial, porque son la misma fuente de verdad»).
3. **Tres decisiones que evitan bugs grandes**: `PRAGMA foreign_keys=ON` (SQLite no valida referencias por defecto), `CHECK` en tipo (solo entrada/salida), `CHECK` cantidad > 0 (evita el clásico stock negativo por typo que «miente durante semanas»).
4. **Sin ORM** para 3 tablas: una función por operación; alerta de stock bajo = comparación al dibujar la tabla (fila roja), sin notificaciones ni jobs.
5. **Entrega**: Flet empaqueta ejecutable con intérprete incluido; build en máquina del desarrollador (VS con workload C++ para Windows); verificación de que el `.db` distribuido no contenga datos de prueba; **respaldo automático** de 10 líneas (copia del `.db` con fecha al cerrar) — «la diferencia entre un cliente tranquilo y uno que te llama en pánico un lunes».
6. Flet hot-reload como acelerador de desarrollo de UI.

## Señales de triage

- Caso de primera mano con decisiones técnicas justificadas — buena calidad didáctica; cifras de tiempos (4 días vs 3 semanas) declaradas sin verificación — señaladas.
- CTA y autorreferencias (video previo de Flet) excluidos.
- Conexión temática con WL-466 (mismo canal, misma semana: trazabilidad en contabilidad) — batería «software a nichos no tech».

## Cruces

- [[codigo-espinoza]] +1 (13.ª WL — cuota alta esta semana: 466/467/473), [[routing-por-coste]] marginal (coste de licencias/servidores = 0), WL-348 (límites Sheets), WL-466 (mismo canal), WL-386 (SII Python).
- Tema «MVP por recorte de alcance» conecta con [[odd-metodologia]] y WL-450 (SDD) para la consolidación.

## Veredicto de triage

Caso práctico concreto con decisiones bien argumentadas; conservar.


## Ver también

- [[codigo-espinoza]]
- [[historia-software-corporativa]]
- [[routing-por-coste]]
