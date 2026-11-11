# FastAPI

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 2/7 del lote python-practico).
- **Fuentes**: [[resumen-el-script-de-python-que-me-libero-del-trabajo-8-horas-y-genera-dinero-mientras-d]].

**FastAPI** es el framework Python para exponer scripts como **servicios web (APIs)**. La fuente lo presenta como el paso que convierte «persona que programa» en «persona que vende soluciones»: en ~10 líneas cualquier script se vuelve un servicio consumible por no-programadores o herramientas no-code (Make, n8n). Dato del canal: pasó de 15.000 estrellas en GitHub (2020) a más de 70.000 (2025) — el framework Python de crecimiento más rápido (afirmación no verificada).

Patrón demostrado — script de limpieza como microservicio:

```python
from fastapi import FastAPI, UploadFile
import polars as pl

app = FastAPI()

@app.post("/limpiar")
async def limpiar(archivo: UploadFile):
    df = pl.read_csv(archivo.file)
    df = (df.rename({c: c.replace(" ", "_") for c in df.columns})
            .drop_nulls(["email"]))
    return {"estado": "procesado", "filas_originales": df.height,
            "columnas": df.columns}

@app.get("/estado")
def estado():
    return {"servicio": "activo", "version": "1.0"}
```

Despliegue típico citado: VPS barato (Railway/Render/DigitalOcean, ~5 USD/mes). En el pipeline de [[automatizacion-con-python]], FastAPI es el paso de **exposición** (entradas: archivos a limpiar, datos de formularios de [[playwright|Playwright]]; salidas: JSON).
