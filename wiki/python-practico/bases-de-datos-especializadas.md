# Bases de datos especializadas

- **Tipo**: página de concepto.
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 6/7 del lote python-practico).
- **Fuentes**: [[resumen-tutorial-duckdb-la-bbdd-rapida-y-ligera-ideal-para-analitica-etl-scripting-micro]].

## La tesis: la «guerra de bases de datos» se gana por especialización

«No se gana con una base de datos que sirva para todo»: el campo se reparte entre motores especializados por tipo de carga — NoSQL, datos JSON, almacenamiento en memoria, grafos, vectores — y ahora el analítico columnar. Elegir motor es elegir **el nicho de carga**, no un ganador universal.

## DuckDB como caso de especialización analítica

DuckDB ocupa el nicho **analítico en una sola máquina**: almacenamiento **columnar** (ideal para agregaciones), un solo binario sin instalación, SQL completo sobre archivos (CSV/JSON/Parquet) y modo in-memory o persistido en archivo. Encaja en ETL por scripts, análisis exploratorio y persistencia de microservicios con estado chico o datos precargados — **no** escala horizontalmente (cada instancia tendría su copia). Alternativa moderna a SQLite/HyperSQL en aplicaciones chicas.

## Matriz de decisión (del tutorial)

| ¿Tu carga es...? | Herramienta del nicho |
| --- | --- |
| Analítica/ETL en una máquina, sobre archivos | DuckDB (columnar, SQL sobre archivos) |
| Datos >100k filas en memoria, dentro de Python | [[polars]] (DataFrame rápido; SQL también posible vía puente con DuckDB) |
| Estado relacional pequeño de una app embebida | SQLite |
| Grafos / vectores / documentos / series temporales | Motores especializados de cada nicho (mencionados, no consolidados aún en la wiki) |

## Relación con la wiki

- En el pipeline de [[automatizacion-con-python]], DuckDB es candidata para el paso de **procesamiento/ETL por lotes** (complemento SQL de [[polars]]).
- La regla general coincide con [[codigo-de-plomeria]]: no reescribas infraestructura; elige el motor que ya resolvió tu nicho.
