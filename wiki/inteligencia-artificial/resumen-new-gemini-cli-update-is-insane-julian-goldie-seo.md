# Resumen: NEW Gemini CLI Update is INSANE!

- **Tipo**: resumen de fuente (novedad/herramienta: extensiones de Gemini CLI).
- **Canal**: Julian Goldie SEO (página de entidad pendiente de consolidación; el video lo presenta el «avatar digital» del CEO de Goldie Agency).
- **Publicado**: 2025-12-01. **Duración**: 08:34.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=x14zcZHjz5M).
- **Raw**: [raw/inteligencia-artificial/2025-12-01-new-gemini-cli-update-is-insane-julian-goldie-seo.md](../../raw/inteligencia-artificial/2025-12-01-new-gemini-cli-update-is-insane-julian-goldie-seo.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]] (CLI agéntica).
- **Disposición de la ingesta**: Nueva.

## Tesis central

La nueva actualización de **Gemini CLI** añade **extensiones**: herramientas que «viven dentro» de la CLI — monday.com, Postman, Figma, bases de datos, herramientas cloud — eliminando el cambio de contexto («no más saltar entre 10 herramientas distintas»). La galería oficial ya supera las **100 extensiones**, la instalación es de un comando, y la actualización añade además **smart model routing** (elige automáticamente el mejor modelo según la tarea) y un **codebase investigator** (subagente para entender y navegar el código).

## Recorrido del vídeo

- **[00:00–01:10] La novedad**: las extensiones son «herramientas que ahora viven dentro de tu Gemini CLI»: monday.com para tableros de proyecto, Postman para APIs, Figma para diseño, bases de datos, cloud — «una línea de comandos que lo hace todo»; más de 100 extensiones en la galería oficial recién lanzada. Presentación del «avatar digital» de Julian Goldie (CEO de Goldie Agency).
- **[01:29–02:27] Ejemplo monday.com y gestión**: antes — abrir monday.com, revisar el sprint, actualizar, volver; ahora — «show me my sprint summary, mark bug 123 is done, add a comment to this issue» sin cambiar de contexto. Instalación: `gemini extensions install` + URL de GitHub o ruta local («10 segundos de encontrarla a tenerla corriendo»); gestión: listar, actualizar, habilitar/deshabilitar, desinstalar; actualización masiva con `gemini extensions update-all`.
- **[02:27–03:25] Por qué importa**: el flujo típico alterna terminal → Postman → gestor de tareas → base de datos («tu cerebro rebota»); ahora «tu terminal se convierte en el hub central donde viven todas tus herramientas»: más velocidad, foco y menos energía mental en cambios de contexto. (Aquí inserta la promoción de su «AI Profit Boardroom».)
- **[03:25–04:28] Extensiones destacadas**: **Postman** (tests de API desde la CLI), **Figma** («puede explotarte la mente»: extraer specs de diseño, revisar componentes, incluso enviar actualizaciones a los archivos de diseño desde la terminal), **bases de datos** (Elastic, MySQL, PostgreSQL: consultar, analizar — con lenguaje natural «sin recordar la sintaxis exacta» de las queries, por la integración con Gemini). La galería cubre cloud, CI/CD, code review, gestión de proyectos, diseño, seguridad, testing; si algo falta, «puedes construir el tuyo propio».
- **[04:28–05:18] Bajo el capó y novedades extra**: cada extensión es un paquete autocontenido con un **MCP server**, playbooks, comandos y contexto. Además: **smart model routing** (Gemini CLI elige automáticamente el modelo adecuado — respuestas rápidas cuando se necesita velocidad, modelos potentes para análisis profundo) y **codebase investigator** (subagente para entender y navegar la propia base de código).
- **[05:18–06:45] Cómo empezar y seguridad**: instalar Gemini CLI (docs); explorar la galería (transcrito «gemini.com/extensions», la dirección de la galería oficial); copiar el comando de instalación y usarlas con lenguaje natural. **Advertencia de seguridad**: «las extensiones pueden cambiar cómo se comporta Gemini CLI — antes de instalar algo, revisa la fuente y asegúrate de confiar»; la galería oficial está curada. Pro tip: **crear extensiones propias** con `gemini extensions new <nombre>` (plantilla con toda la estructura) — para herramientas internas, sistemas propietarios o «cosas raras de nicho»; para equipos: paquete de extensiones común = onboarding sin enseñar 10 herramientas.
- **[07:11–08:34] Recapitulación y cierre**: resumen del anuncio + pregunta a la audiencia («¿cuál instalarías primero?») + promoción del boardroom.

## Puntos clave

1. **Extensiones en la CLI**: herramientas de terceros (monday.com, Postman, Figma, bases de datos, cloud) integradas en Gemini CLI; >100 en la galería oficial [00:00-01:10].
2. **Instalación y ciclo de vida en comandos simples**: install (GitHub URL o ruta local), list, update, update-all, enable/disable, uninstall [01:42-02:27, 05:35-06:03].
3. **Arquitectura**: cada extensión empaqueta un MCP server + playbooks + comandos + contexto [04:28-04:42].
4. **Smart model routing automático**: el modelo adecuado por tarea (velocidad vs. análisis profundo) sin configuración [04:42-04:58].
5. **Codebase investigator**: subagente para entender la propia base de código [04:58-05:18].
6. **Seguridad ante todo**: revisar la fuente antes de instalar (las extensiones alteran el comportamiento de la CLI); galería oficial curada; posibilidad de crear extensiones propias con plantilla [06:03-06:45].

## Notas sobre la fuente

- **Fuente en inglés** (subtítulos automáticos en); resumen en español por convención. El encabezado del raw dice «español» por artefacto del extractor; la transcripción no fue modificada.
- La dirección de la galería transcrito como «gemini.com/extensions» conviene verificarla (la documentación oficial vive en geminicli.com) en consolidación.
- Contenido con fuerte promoción comercial (AI Profit Boardroom, dos inserciones) registrado como tal; el video lo presenta un «avatar digital» del autor.
- Fuente 13/57 de la playlist «IA-Recursos»; undécimo canal nuevo del lote (Julian Goldie SEO), entidad aplazada.
