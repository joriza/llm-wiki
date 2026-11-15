# FAV-466 — El error con UUIDs que destruye el rendimiento de tu Base de Datos (TheDebugDuck)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=KiuZT8XYYdw) — Canal **TheDebugDuck**, publicado 2026-09-12, 17:40, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-error-uuids-rendimiento-bd-thedebugduck.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## El escenario

Proyecto sin equipo de arquitectura: la historia de usuario solo dice «crear entidad pedido» y la elección del tipo de ID recae en el desarrollador. Opciones sobre la mesa: **bigserial/identity** (entero de 64 bits, defecto de los ORM), **UUID v4** (128 bits aleatorios, «se ve más seguro») y **UUID v7** (128 bits con marca de tiempo al inicio, ordenable). El equipo elige UUID v4 porque «los enteros son de principiantes». Tres meses después, producción se degrada.

## Por qué UUID v4 rompe el índice B-tree

- PostgreSQL organiza la PK en un **B-tree**. Con IDs secuenciales, cada inserción cae en la última hoja (típicamente en RAM): escritura inmediata, sin divisiones. Con IDs aleatorios, cada inserción cae en una página cualquiera: el motor busca la página vieja en disco, la sube a RAM, la divide y la reescribe → tormenta de I/O con CPU «alta» solo buscando espacio libre.
- En **MySQL/InnoDB es peor**: la tabla se almacena físicamente ordenada por la PK, así que un UUID v4 además **reordena físicamente la tabla** en cada inserción.
- Analogía del vídeo: taquillas de un centro de paquetes — el serial llena la siguiente puerta al final del pasillo; el UUID obliga al encargado a buscar huecos entre taquillas de hace 6 meses por todo el edificio.
- **Precedente industrial**: Instagram (2012, blog de ingeniería) intentó UUIDs aleatorios como PK en PostgreSQL a escala de millones de fotos y lo abandonó por la tormenta de I/O; migraron a IDs de 64 bits propios (tiempo + shard).

## El problema opuesto: serial expuesto

- `dominio.com/pedidos/1847` + backend que solo verifica sesión (no pertenencia) = **IDOR** (Insecure Direct Object References): cambiar la URL a 1846 muestra pedidos ajenos.
- Incluso con permisos impecables, el contador expone métricas del negocio (compra a las 9:00 = #1847, a las 14:00 = #1910 → 63 pedidos en la mañana).

## El límite de JavaScript: Snowflake

- IDs de 64 bits propios (Twitter/**Snowflake**) superan `Number.MAX_SAFE_INTEGER` (2⁵³−1): el navegador **redondeaba** y dos tweets distintos terminaban con el mismo ID en la UI. Twitter tuvo que añadir `id_str` como cadena en su API. La estructura del ID en la BD no basta: hay que pensar cómo viaja por la red.

## Distribuidas: el problema se invierte

- En BD distribuidas por rangos (**CockroachDB, TiDB, Spanner**) los datos se reparten por rangos de claves: un serial cae siempre en el mismo nodo → **hotspot** (un servidor absorbe el 100% de escrituras). La documentación de CockroachDB recomienda justamente UUID v4 para esparcir carga. Lo que en un nodo era ventaja es aquí cuello de botella.

## UUID v7 (RFC 9562, 2024)

- Primeros 48 bits = timestamp en ms: IDs ordenables cronológicamente → inserción al final del B-tree tan eficiente como un serial, pero con **generación descentralizada** (cualquier microservicio genera el ID sin consultar la secuencia central). PostgreSQL reciente ya lo soporta.
- En distribuidas puede **volver a causar hotspots**: no es solución universal.

## Regla de oro: separar almacenamiento interno del contrato público

- La PK existe para optimizar el índice; el ID público existe para seguridad y contrato. **Stripe** lo documenta: IDs públicos opacos con prefijo (`cus-`, `pi-`) que no son el serial interno ni un UUID crudo.
- Patrón recomendado: bigserial o UUID v7 interno + columna secundaria con hash/token opaco para búsquedas externas.
- **Migración en caliente prohibida**: `ALTER TABLE` de bigserial → UUID v4 reescribe filas, reconstruye el B-tree desordenado, puede tardar horas y bloquear la BD (irrecuperable ni con `VACUUM FULL`/`OPTIMIZE TABLE`); con 10 tablas hijas por FK el peso de índices se duplica. Estrategia correcta: columnas paralelas, migración por lotes en background.
- Checklist de decisión: **infraestructura** (¿motor de un nodo o distribuida?), **visibilidad** (¿el ID sale en URLs/APIs?), **generación** (¿clientes generan el ID sin secuencia central?).

## Valor

Cierre técnico y coherente del clúster [[resumen-FAV-463-anecdota-bd-sin-relaciones-sin-pk-tocode]]–[[resumen-FAV-465-pool-conexiones-bd-escalar-usuarios-thedebugduck]] de **bases de datos** (este vídeo completa un trío de decisiones de diseño: modelo, pool e ID — el motor manda sobre la intuición). **TheDebugDuck llega a 3 fuentes** (FAV-448/465/466 → entidad candidata, umbral ≥2 ya cumplido, sigue deferida). Cruza con la nota de [[resumen-FAV-448-monolito-vs-microservicios-thedebugduck]]: no agregar complejidad distribuida (Snowflake, hexagonal) que la infraestructura no pide.

## Notas

- ASR: «big serial» = bigserial; «taquilla» consistente; resoplidos marcados; CTA final excluido de la síntesis.
