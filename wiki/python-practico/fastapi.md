# FastAPI

**Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-15 (relevo 5 del lote python-practico).
- **Fuentes**: [[resumen-el-script-de-python-que-me-libero-del-trabajo-8-horas-y-genera-dinero-mientras-d]] · [[resumen-estas-5-librerias-hacen-que-el-resto-sea-innecesario]] (actualización de la fuente 3) · [[resumen-crea-web-apis-con-python-y-fastapi-paso-a-paso]] (tutorial introductorio, relevo 5) · [[resumen-curso-completo-de-python-desde-cero-para-backend]] (curso integral con auth JWT/MongoDB/despliegue, relevo 6).

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

## Aporte de la fuente 3 (arquitectura backend)

Lo que FastAPI genera automáticamente: soporte **async**, inyección de dependencias, validación vía [[pydantic|Pydantic]], **documentación OpenAPI**, parsing de requests y serialización de respuestas con tipos seguros — «sin código pegamento ni decoradores apilados seis niveles». Citado en producción por **OpenAI, Anthropic y Microsoft**; rendimiento comparable a Node.js y Go en cargas IO (afirmaciones del canal). Comparación honesta con **Litestar** (más rápido en benchmarks): el ecosistema, la documentación y la comunidad de FastAPI lo hacen la elección correcta «para el 90 % de los proyectos». Se enmarca en [[codigo-de-plomeria]]: el framework elimina la plomería de validación/docs/parsing.

## Aporte de la fuente 4 (tutorial desde cero, 2021)

[[resumen-crea-web-apis-con-python-y-fastapi-paso-a-paso]] (Open Sessions) recorre el caso más básico: mini API REST GET/POST sobre datos en memoria en ~10 líneas, con las dos únicas dependencias (`fastapi`, `uvicorn`). Datos que la fuente fija: FastAPI no trae servidor de pruebas integrado (a diferencia de Django/Flask) y se despliega con `uvicorn main:app --reload` en el puerto 8000; el POST necesita `python-multipart` y se declara `async` con `await` sobre la lectura del body. Complementa los tutoriales de Flask del dominio mostrando el contraste de enfoques (decoradores por método vs `@app.route` con `methods`).

## Aporte de la fuente 5 (curso integral, 2023)

[[resumen-curso-completo-de-python-desde-cero-para-backend]] (MoureDev) es el recorrido completo de producción: CRUD de usuarios con modelos **Pydantic** (el «contrato JSON» de cada entidad), códigos HTTP y `HTTPException`, **autenticación JWT** end-to-end (bcrypt para hashear contraseñas con `passlib`, firma HS256 con `python-jose`, caducidad `exp`, protección de endpoints vía sistema de dependencias `Depends` + `HTTPBearer` con 401 y `WWW-Authenticate`), persistencia real en **MongoDB Atlas** con pymongo, y despliegue en **Deta** (nota de época 2023: Python 3.9 máximo, `requirements.txt` + `deta deploy`). Argumento del curso: FastAPI «se está comiendo» el terreno de Django y Flask para backend — satisfacción récord en la Developer Survey y uso en Netflix/Uber/Microsoft. Junto con el tutorial de Open Sessions cubre el arco completo: de «mini API en 10 líneas» a «servicio autenticado, persistente y desplegado».
