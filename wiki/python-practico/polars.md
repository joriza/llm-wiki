# Polars

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 2/7 del lote python-practico).
- **Fuentes**: [[resumen-el-script-de-python-que-me-libero-del-trabajo-8-horas-y-genera-dinero-mientras-d]].

**Polars** es una librería Python de análisis y transformación de datos, posicionada como reemplazo de **Pandas** cuando el volumen de datos hace lento al estándar — el canal la adoptó para archivos de más de ~100.000 filas y cita benchmarks de 2024 con hasta 10× de mejora en operaciones comunes (afirmación del canal, no verificada aquí).

Flujo típico demostrado (limpieza de un CSV de ventas):

```python
import polars as pl
df = pl.read_csv("ventas.csv")
df = df.rename({c: c.replace(" ", "_") for c in df.columns})
df = df.filter(pl.col("monto") > 0)
df = df.drop_nulls(["email"]).with_columns(pl.col("email").str.to_lowercase())
resumen = (df.group_by("region")
             .agg(pl.col("monto").sum().alias("total_venta"),
                  pl.col("cliente").n_unique().alias("clientes_unicos")))
resumen.write_csv("reporte_limpio.csv")
```

En el pipeline de [[automatizacion-con-python]], Polars es el paso de **limpieza y procesamiento** (también consume Excel) y el motor detrás de los servicios de limpieza expuestos por [[fastapi]].
