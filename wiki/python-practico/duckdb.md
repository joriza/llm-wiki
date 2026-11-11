# DuckDB

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 6/7 del lote python-practico).
- **Fuentes**: [[resumen-tutorial-duckdb-la-bbdd-rapida-y-ligera-ideal-para-analitica-etl-scripting-micro]] · [[bases-de-datos-especializadas]] (el nicho que ocupa).

**DuckDB** es una base de datos **analítica columnar** embebida: un único binario sin instalación (releases en GitHub para Linux/Windows/Mac), SQL completo, y dos modos — **in-memory** o **persistido en archivo** (`.db`, con backups por copia del archivo).

## La funcionalidad distintiva

**SQL directo sobre archivos**: `SELECT * FROM 'tips.csv'` trata CSV, JSON y Parquet como tablas; CSVs complejos se configuran (delimitador, cabecera, tipos). Desde bash, `duckdb -c "..."` con salidas `--csv`/`--json` y `COPY ... TO 'salida.parquet'` — el kit ETL por scripting.

## En Python

```python
import duckdb
duckdb.sql("SELECT * FROM 'tips.csv'").show()
duckdb.sql("SELECT * FROM 'tips.csv'").write_csv("resultado.csv")
duckdb.sql("SELECT * FROM 'tips.csv'").write_parquet("resultado.parquet")
# puente bidireccional con Pandas:
duckdb.sql("SELECT * FROM mi_dataframe")      # el DataFrame es «tabla»
df = duckdb.sql("SELECT ... ").df()           # el resultado vuelve a DataFrame
```

## Dónde sí y dónde no

- **Sí**: ETL por scripts, análisis exploratorio en una máquina, persistencia de microservicios con datos precargados o estado chico; alternativa moderna a SQLite/HyperSQL en apps chicas.
- **No**: escalado horizontal (cada instancia tendría su copia — resolver por otra vía); para DataFrames grandes en memoria, ver [[polars]].

Posicionamiento del canal: «auténtica navaja suiza» — el nicho analítico de [[bases-de-datos-especializadas]].
