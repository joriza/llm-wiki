# Curso COMPLETO de PYTHON desde CERO para BACKEND

- **Fuente**: [[../../raw/python-practico/2023-01-05-curso-completo-de-python-desde-cero-para-backend.md|2023-01-05-curso-completo-de-python-desde-cero-para-backend.md]]
- **Canal**: MoureDev by Brais Moure (Brais Moure)
- **Publicado**: 2023-01-05
- **Dominio**: `python-practico/`
- **Tipo**: resumen de fuente (curso en vídeo, 475 min)
- **Tema**: curso integral de backend con Python y [[fastapi|FastAPI]]: conceptos, CRUD, autenticación JWT, MongoDB y despliegue en Deta.

## Qué es el curso

Tercera entrega de la serie Python de MoureDev (tras los cursos de fundamentos y nivel intermedio): 8 horas en directo editadas en 18 lecciones que construyen un backend completo desde cero. Elegido deliberadamente **FastAPI frente a Django y Flask**: argumenta que FastAPI «se está comiendo» el terreno de los dos frameworks establecidos dentro de Python para backend, apoyándose en la Developer Survey de Stack Overflow (FastAPI encabeza la satisfacción entre los frameworks de Python de la época; Django y Flask muy por debajo) y en su uso por empresas como Netflix, Uber y Microsoft. Puntualiza que Python «ya no es lento» — el mito viene de hace una década — y que Python 3.11 trae mejoras de rendimiento de ~60 %.

## Contenido por bloques

1. **Conceptos base**: frontend vs backend, qué es una API como capa de comunicación entre sistemas desacoplados, y el rol de los estándares (**OpenAPI**, **JSON Schema**) para que clientes y servidores «hablen el mismo idioma».
2. **Type hints**: repaso del tipado dinámico de Python (una variable puede cambiar de tipo en ejecución) y de las anotaciones de tipo desde 3.5: no cambian el comportamiento (tipado débil — se puede anotar `int` y asignar un `str`), pero ayudan al editor y son **el fundamento sobre el que FastAPI valida las peticiones**: si el endpoint declara `str` y llega otra cosa, la petición se rechaza.
3. **Primer servidor**: instalación de `fastapi` + `uvicorn` como servidor ASGI de desarrollo, primera ruta `@app.get("/")`, y **documentación automática** generada por FastAPI (Swagger UI en `/docs`, ReDoc en `/redoc`).
4. **API REST de usuarios (CRUD)**: datos en memoria; búsqueda por query string y por ID en la URL (path params); códigos de estado HTTP (200/201, 404 con `HTTPException`, 422 para validación); tipos de operaciones GET/POST/PUT/DELETE (listar, leer, crear, modificar parcial o totalmente, borrar).
5. **Modelos con Pydantic**: `BaseModel` como el contrato JSON de cada entidad (el «folio» con estructura cerrada del que habla la metáfora del vídeo); valores por defecto, `Optional`, validación automática de tipos al recibir payloads.
6. **Autenticación JWT**: login que verifica credenciales contra los usuarios; contraseñas hasheadas con **bcrypt** (`passlib`); token firmado con `python-jose` (HS256) con `exp` de caducidad; sistema de dependencias de FastAPI (`Depends`) para proteger endpoints con `HTTPBearer` y devolver 401 con cabecera `WWW-Authenticate`.
7. **Base de datos**: migración de la lista en memoria a **MongoDB Atlas** (capa gratuita); conexión con **pymongo** (aclarando el rol del driver); operaciones CRUD contra la base real y configuración de acceso desde cualquier IP para el laboratorio.
8. **Despliegue en Deta** (nota de época): plataforma gratuita de microservicios de 2023, ya con Deta Space; pasos: `requirements.txt` (y adaptar el código a Python 3.9, la versión que Deta soportaba — cuidado con `typing` y sintaxis posterior), `deta login` y `deta deploy`; el dominio lo asigna la plataforma; los logs se ven con Deta Visor.

## Valor y contexto

- Es la pieza que completa el arco API del dominio: parte del punto exacto donde termina el tutorial de Open Sessions ([[resumen-crea-web-apis-con-python-y-fastapi-paso-a-paso]]) y añade lo que este no cubría — modelos Pydantic, auth JWT, base de datos real y despliegue.
- Contraste con los tutoriales de Flask del dominio ([[resumen-como-funciona-flask-python-mvc]], [[resumen-creando-una-api-flask-python-super-facil]], [[resumen-tutorial-flask-framework-de-python-para-aplicaciones-web-desde-cero]]): misma escala de proyecto, pero con validación por type hints, docs automáticas y servidor ASGI en vez de templates/Jinja.
- El despliegue contrasta con el de la web con Reflex de MoureDev ([[resumen-como-crear-una-web-con-python-desde-cero]]): ahí Vercel + DNS propio, aquí Deta con dominio de la plataforma — dos momentos de la misma preocupación (sacar el proyecto de localhost).
- Notas de época (2023): Python 3.10/3.11 recién llegados; Deta en su etapa Space (después discontinuada para este uso); Swagger UI/OpenAPI ya estándar.
- Sin patrocinios; contenido didáctico continuo con promociones del propio canal (repo, Discord, Twitch).

## Citas al original

Todas las afirmaciones provienen de `raw/python-practico/2023-01-05-curso-completo-de-python-desde-cero-para-backend.md` (transcripción automática; marcas de tiempo en el original).
