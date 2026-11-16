# Bases de datos (clúster T4)

- **Tipo**: página de concepto.
- **Dominio**: `informatica`.
- **Creada**: 2026-11-15 (consolidación de la ventana Vs + Docencia T4 — umbral ≥2 verificado por conteo real; el clúster estaba deferido en los resúmenes).
- **Fuentes**: [[resumen-FAV-452-sql-server-historia-sybase-archivo-del-futuro]] (historia cliente/servidor: Sybase → SQL Server) · [[resumen-FAV-463-anecdota-bd-sin-relaciones-sin-pk-tocode]] (anti-patrones: BD «relacional» sin PK/relaciones/tipos) · [[resumen-FAV-465-pool-conexiones-bd-escalar-usuarios-thedebugduck]] (connection pool: la fórmula real) · [[resumen-FAV-466-error-uuids-rendimiento-bd-thedebugduck]] (elección de PK: serial vs UUID).
- **Ver también**: [[bases-de-datos-especializadas]] (dominio python-practico — nicho analítico DuckDB).

## El concepto

Cuatro fuentes que cubren **todo el ciclo de una base de datos**: la historia (por qué es cliente/servidor), el anti-patrón (qué pasa sin diseño), la operación (cuántas conexiones soporta realmente) y el diseño fino (qué clave primaria elegir).

1. **Historia** (FAV-452): las bases de archivos no escalaban a usuarios concurrentes → arquitectura cliente/servidor (1984-1989): el motor centralizado lee tablas, aplica permisos y coordina transacciones. Sybase creó el núcleo; Microsoft lo llevó a Windows NT y ganó por efecto de plataforma, no por calidad de motor (detalle en [[historia-software-corporativa]]).
2. **El anti-patrón** (FAV-463): BD sin PK ni foreign keys, columnas dinámicas (`telefono_1..9` — violación de 1FN), todo `varchar` NULL y SQL injection en el login. Sin claves no hay normalización posible; sin integridad no hay reportes ni escalabilidad. Deuda técnica incobrable documentada con capturas.
3. **Operación** (FAV-465): el pool de conexiones es un **cuello de botella a propósito** para proteger al motor — `conexiones = cores × 2 + discos efectivos` (HikariCP/PostgreSQL): un servidor de 8 cores ≈ 17 conexiones, no 1000. Síntoma clásico: 504 con la BD al 2 % de CPU. Anti-patrones: pool leak (liberar solo en el camino feliz) y mantener una transacción abierta durante una llamada HTTP.
4. **Diseño de PK** (FAV-466): UUID v4 aleatorio rompe el B-tree (tormenta de I/O; en MySQL/InnoDB además reordena la tabla físicamente — precedente Instagram); el serial expuesto abre IDOR y filtra métricas; Snowflake (64 bits tiempo+shard) supera `MAX_SAFE_INTEGER` de JS (`id_str`); en BD distribuidas por rangos el problema se invierte y UUID v4 esparce carga (CockroachDB).

## La tesis transversal

Las decisiones «de infraestructura» (motor, pool, tipo de ID) son decisiones de **arquitectura de software** con consecuencias de producción verificables — y la intuición («más conexiones = más servicio», «UUID se ve más seguro») es sistemáticamente el error.

## Notas

- FAV-452 pertenece también al clúster [[historia-software-corporativa]] — página puente entre ambos conceptos.
- Ampliada en T48 (2026-11-16) con dos fuentes del backlog WL: [[resumen-WL261-transacciones-sql-aislamiento-thedebugduck]] (WL-261, informatica-teoria/ — niveles de aislamiento: la regla vive en una fila o en varias; update atómico vs `FOR UPDATE`; right skew) y [[resumen-WL280-error-fechas-consultas-hdeleon]] (WL-280, informatica-teoria/ — índice B-tree en fechas y el «asesino de índices»: funciones DAY/MONTH/YEAR que lo ignoran). Completan la capa de operación y diseño con transacciones y optimización de consultas.
