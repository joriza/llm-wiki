# Resumen: Tutorial DuckDB — la BBDD rápida y ligera para analítica, ETL, scripting y microservicios

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2024-07-03-tutorial-duckdb-la-bbdd-rapida-y-ligera-ideal-para-analitica-etl-scripting-micro.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «dcdb/ddb»→DuckDB, «parket»→Parquet, «Kagel»→Kaggle) — https://www.youtube.com/watch?v=o5d1Q8_sv7s — NullSafe Architect, 2024-07-03 (32:08).
- **Nota**: fuente 6/7 del lote python-practico. El segmento de promoción del sitio personal del canal queda fuera de la síntesis técnica.

## La tesis: la guerra de bases de datos se gana por especialización

«No se gana con una base de datos que sirva para todo»: el campo se reparte por especialización — NoSQL, JSON, en memoria, grafos, vectores. **DuckDB** es la especializada en **analítica**: guarda los datos **por columnas** (idónea para agregaciones), es un **único binario** sin instalación (se descarga de GitHub releases; Linux/Windows/Mac), y trabaja sobre una sola máquina — no escala horizontalmente, y para su nicho no hace falta [01:05-04:43]. Se posiciona como alternativa a HypersQL o SQLite para aplicaciones chicas. Modos de trabajo: **in-memory** o **persistido en archivo** (para backups y continuar otro día) [08:01-08:42].

## SQL directo sobre archivos

La funcionalidad estrella: **consultar archivos como si fueran tablas** — `SELECT * FROM 'tips.csv'` lee CSV, JSON o Parquet directamente, con `DESCRIBE` para el esquema y SQL puro encima (agregaciones tipo `GROUP BY sexo` con media y redondeo de porcentaje de propinas incluidos) [09:21-11:27]. Para CSVs complejos se configura delimitador, cabecera y tipos de campo en la cláusula de lectura [12:05-12:47]. También lista el contenido de directorios (filename, contenido, última modificación) [17:33].

## Scripting y conversión de formatos (la «navaja suiza»)

Desde bash: `duckdb -c "consulta"` ejecuta SQL contra archivos, con salida en **CSV o JSON** (`-csv`, `-json`) — y `COPY (...) TO 'output.parquet'` genera **Parquet** (formato de la Apache Foundation, estándar de big data) [13:40-16:47]. Ese es el rol ETL: leer de un formato, transformar, escribir a otro, todo en scripts.

## Persistencia y Python

`duckdb miarch.db` pasa a modo persistente: `CREATE TABLE t1 AS SELECT * FROM 'tips.csv'` importa datos y los INSERT/DELETE quedan en el archivo `.db` (~524 KB en el ejemplo) [18:33-20:06]. En Python (`pip install duckdb`): `duckdb.sql("SELECT * FROM 'tips.csv'").show()` [23:05-25:28]; los resultados se exportan con `.write_csv()` / `.write_parquet()`. Y el puente con **Pandas es bidireccional**: un DataFrame se consulta con SQL (`duckdb.sql("SELECT * FROM customers")` donde `customers` es el DataFrame) y el resultado vuelve a DataFrame con `.df()` [26:27-28:10].

## Dónde encaja y dónde no

Casos fuertes: scripts que procesan CSV/Parquet de un lado a otro (ETL), análisis exploratorio en una máquina, y **persistencia de microservicios con datos precargados o estado chico** — con la advertencia explícita del canal: **no escala horizontalmente** (cada instancia del micro tendría su propia copia de datos; el escalado habría que resolverlo por otra vía) [23:57-24:31, 29:54-30:34]. Cruces en la wiki: es la alternativa *en SQL* al procesamiento en memoria de [[polars]] y encaja como pieza de ETL en [[automatizacion-con-python]]; la tesis de especialización está desarrollada en [[bases-de-datos-especializadas]].

---

**Ver también**: [[duckdb]] (entidad-herramienta) · [[bases-de-datos-especializadas]] (concepto) · [[polars]] · [[automatizacion-con-python]].
