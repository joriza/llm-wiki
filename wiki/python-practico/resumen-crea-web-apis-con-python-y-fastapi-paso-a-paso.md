# Resumen: Crea Web APIs con Python y FastAPI paso a paso

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-01-02-crea-web-apis-con-python-y-fastapi-paso-a-paso.md` (video en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «fast up/fasa/fase/quaier/happy»→FastAPI, «paita»→PyCharm, «ubicar/uvi corn/ubicó»→uvicorn, «jason»→JSON, «payton»→python-multipart, «göttling»→Go (transcripción dudosa del lenguaje enviado de ejemplo), «xavi»→FastAPI) — https://www.youtube.com/watch?v=wPJ7q2V4s3Y — Open Sessions, 2021-01-02 (12:31).

## Primer API con FastAPI en ~10 líneas

Tutorial introductorio que construye una mini API REST con **dos endpoints** (GET y POST) sobre una variable en memoria con datos JSON (lista de lenguajes de programación). El mensaje central: la implementación es mínima — el GET completo son tres líneas y todo el archivo, con imports, ronda las 10 líneas.

- **Entorno**: proyecto en PyCharm con ambiente virtual; solo dos dependencias: `fastapi` y `uvicorn`.
- **Uvicorn como servidor**: FastAPI no incluye servidor de pruebas integrado (a diferencia de Django o Flask), pero uvicorn se integra bien y sirve también para producción. Arranque: `uvicorn main:app --reload` (puerto 8000 por defecto; `--reload` refresca los cambios sin reiniciar).
- **Endpoint GET**: decorador `@app.get("/")`; la función convierte el diccionario a JSON y lo retorna — se prueba desde el navegador o Postman.
- **Endpoint POST**: requiere dependencia adicional para decodificar el body (`python-multipart`), decorador `@app.post(...)`, recepción del body vía `request.form()` y construcción del nuevo registro duplicando el diccionario para no mutar el original antes de agregar el índice nuevo.
- **Async**: los métodos de FastAPI pueden ser síncronos o asíncronos; el POST se declara `async` y el `await` sobre la lectura del body para controlar el flujo de la información que llega y evitar excepciones.

## Dónde encaja en la wiki

Cuarta fuente de API REST del dominio y primera de FastAPI «desde cero»: complementa los tres tutoriales de Flask ([[resumen-creando-una-api-flask-python-super-facil]], [[resumen-como-funciona-flask-python-mvc]], [[resumen-tutorial-flask-framework-de-python-para-aplicaciones-web-desde-cero]]) mostrando el contraste de enfoques — Flask arma rutas con `@app.route(..., methods=[...])` y servidor propio de desarrollo, FastAPI usa decoradores por método (`@app.get`/`@app.post`) y delega el servidor a uvicorn. Las capacidades avanzadas que esta fuente no toca (validación con Pydantic, OpenAPI, async a fondo) están en [[fastapi]] y en el pipeline de exposición de [[automatizacion-con-python]].

---

**Ver también**: [[fastapi]] · [[resumen-creando-una-api-flask-python-super-facil]] · [[resumen-taller-consumir-apis-con-python-poke-api]].
