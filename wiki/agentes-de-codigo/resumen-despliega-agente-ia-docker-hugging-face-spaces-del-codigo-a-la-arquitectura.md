# Resumen: Despliega tu Agente de IA con Docker y Hugging Face Spaces (GRATIS)

- **Tipo**: resumen de fuente (tutorial técnico: despliegue de agente RAG con Docker y Hugging Face Spaces).
- **Canal**: Del Código a la Arquitectura (página de entidad pendiente de consolidación; misma serie que [[resumen-llmops-evaluar-agente-rag-ragas-del-codigo-a-la-arquitectura]]).
- **Publicado**: 2025-09-19. **Duración**: 12:05.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=V9TcltcpkYY).
- **Raw**: [raw/inteligencia-artificial/2025-09-19-despliega-agente-ia-docker-hugging-face-spaces-del-codigo-a-la-arquitectura.md](../../raw/inteligencia-artificial/2025-09-19-despliega-agente-ia-docker-hugging-face-spaces-del-codigo-a-la-arquitectura.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: pendientes de consolidación (Docker, Hugging Face Spaces, agentes RAG, FastAPI, LangChain).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Del prototipo local a una aplicación robusta en la nube, gratis: el agente multimodal de la serie (consume APIs, hace CRUD, extrae información de documentos) se **refactoriza**, se empaqueta con **Docker** y se despliega en **Hugging Face Spaces** (SDK Docker, plantilla blanca). Cambio clave previo: el agente ahora devuelve, además de la respuesta, **el contexto exacto que usó** para generarla — «muy importante para poder evaluar la calidad de nuestro RAG de forma objetiva» en el siguiente video (el panel con RAGAs ya ingresado como fuente 19/57).

## Recorrido del vídeo

- **[00:28–02:00] Refactorización previa al despliegue**: el proyecto de experimentación «tenía rutas y endpoints por todas partes» (RAG, memoria, reranking) — funcionaba pero «no era adecuado para un despliegue real». Se unifica en un único endpoint en `agent.py`, se reorganizan herramientas y servicios, y se añade la extracción del contexto desde los **intermediate_steps de LangChain** (herramienta «buscar contextos en documentos») con `return_intermediate_steps: true`.
- **[02:20–05:41] El Dockerfile**: imagen base **Python slim** (ligera, sin paquetes innecesarios); variables de entorno: `DEBIAN_FRONTEND` (sin confirmaciones), `PYTHONUNBUFFERED` (logs en tiempo real para depurar), `PIP_NO_CACHE_DIR` (imagen más pequeña), `HF_HOME` (carpeta específica para modelos); `apt-get` con **build-essential y git** (necesarios por torch) y limpieza con `rm -rf`; **seguridad**: crear usuario `appuser` «para evitar correr la aplicación con root, que tiene todos los permisos»; WORKDIR /code, COPY requirements.txt, instalación de dependencias; carpeta de caché con chown; **pre-descarga del modelo sentence-transformers durante el build** — «el modelo ya está incluido en la imagen final... evita posibles timeouts cuando el contenedor arranque por primera vez en la nube». Fix descubierto en pruebas: añadir el prefijo `sentence-transformers/` al nombre del modelo en `core/embedding.py` (en Hugging Face daba «no encontraba el modelo»). De vuelta a root para copiar el código y asignar propietario; **EXPOSE 7860**; CMD con uvicorn en localhost:7860.
- **[06:46–08:27] Hugging Face Spaces**: cuenta → **New Space** (nombre, licencia opcional) → **Space SDK: Docker** + plantilla blanca → repositorio git vacío; subir archivos por web o git (el autor usa git en VS Code: init + remote con la URL del Space + add + commit).
- **[08:27–09:54] Configuración y push**: el **README.md es la configuración del Space** (documentación por propiedad) — hay que copiar el bloque generado a nuestro README local. En **Settings → Variables and secrets** se agregan las variables y secretos que la API necesita. `git push` falla («historial de commits en local es diferente al de Hugging Face») → **`git push --force`**. HF detecta el Dockerfile y **construye la imagen automáticamente** (build y logs visibles); el estado pasa a **running**.
- **[10:22–12:05] Prueba y cierre**: endpoint = `usuario-space.hf.space`; documentación **Swagger** en `/docs`; «Try it out» con «¿qué es la ingeniería de prompts?» → respuesta **+ contexto** (los datos para el panel de evaluación del siguiente video). Cierre con la pregunta que abre la fuente 19/57: «¿cómo sabemos si está funcionando bien... si nuestro RAG es un RAG de calidad?»

## Puntos clave

1. **Refactorizar antes de desplegar**: un endpoint único, herramientas ordenadas, y devolver el **contexto usado** vía `return_intermediate_steps` — prerequisito para evaluar RAG objetivamente [00:28-02:00].
2. **Dockerfile con higiene**: imagen slim, variables de entorno de build (unbuffered, no-cache), limpieza de apt, y **usuario no-root** por seguridad [02:20-04:19].
3. **Modelo pre-descargado en el build**: evita timeouts de primer arranque en la nube; fix del prefijo `sentence-transformers/` en el nombre del modelo [05:05-06:10].
4. **HF Spaces con SDK Docker**: repo git, README.md como configuración del Space, secrets/variables, push forzado por historial divergente, build automático al detectar Dockerfile [07:09-10:22].
5. **Free y probado**: endpoint público `usuario-space.hf.space` con Swagger en `/docs` — respuesta + contexto listos para el panel RAGAs [10:22-11:19].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («Hugan/Hugin Face», «Crub» por CRUD, «rack/RAC» por RAG, «FAS API» por FastAPI, «lunchain» por LangChain, «RMI» por README.md, «kit» por git). Este resumen los normaliza.
- Parte de la serie con la fuente 19/57 (evaluación con RAGAs): consolidación conjunta pendiente.
- Fuente 20/57 de la playlist «IA-Recursos».
