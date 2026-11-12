# Resumen: Mira Como Uso la API de Hugging Face — Creo una Web App con IA

- **Tipo**: resumen de fuente (tutorial: web app de texto-a-imagen con la Inference API de Hugging Face).
- **Canal**: IAcomunIA (página de entidad pendiente de consolidación).
- **Publicado**: 2025-08-04. **Duración**: 23:49.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=f3MzCRVRe3E).
- **Raw**: [raw/ia-uso-practico/2025-08-04-api-hugging-face-web-app-ia-ia-comunia.md](../../raw/ia-uso-practico/2025-08-04-api-hugging-face-web-app-ia-ia-comunia.md) (transcripción de subtítulos manuales es-419 con marcas de tiempo).
- **Páginas de concepto asociadas**: [[generacion-local-de-imagenes]] (FLUX.1 Krea-dev vía API).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Construcción en vivo de un **generador de imágenes texto-a-imagen 100% funcional**: interfaz **Vue 3 + Tailwind** (dark/light, indigo/slate/purple vía CDN) conectada a la **Inference API de Hugging Face** con el modelo **FLUX.1 Krea-dev** (transcrito «Flux 1 crea dev», «nuevo este mes en Hugging Face» — «podría ser cualquier otro modelo»). El código completo lo genera una **CLI conectada a OpenRouter** con modelos gratuitos (Horizon Alpha/Beta; prueba también Qwen 3 Coder), y el video muestra el ciclo real de desarrollo: generación → errores → correcciones conversacionales → producto funcionando.

## Recorrido del vídeo

- **[00:03–05:19] Proyecto y stack**: la HF Inference API «permite ejecutar modelos de machine learning sin configurar infraestructura, con acceso a cientos de modelos a través de una interfaz única». Se elige Vue 3 «lo bastante fácil de implementar» (sirve React u otro); demo oficial en los Spaces de HF como referencia; requiere **token** de Hugging Face. Verificación previa de Node (18.15 → actualiza a 20.19.4, requerido por su CLI).
- **[05:47–09:15] El CLI y los modelos vía OpenRouter**: usa CLI conectada a OpenRouter con tokens gratuitos (Horizon Alpha, Horizon Beta, Qwen 3 Coder, GLM 4.5). Primera instrucción: «créame una web frontend usando Vue JS con Tailwind, modo dark y modo light con colores indigo, slate y purple; usa el CDN de Tailwind para mayor rapidez... formulario y vista previa del resultado». Horizon Alpha falló (periodo de prueba/token agotado); prueba Qwen 3 Coder; termina usando **Horizon Beta** («un poco menor a Horizon Alpha pero con buen desempeño en código»), que responde con el plan y genera todo el repositorio.
- **[09:15–11:54] Generación del repositorio**: el asistente pide confirmaciones para crear archivos y ejecutar comandos; el autor prefiere ejecutar el proyecto él mismo. Revisión del código generado: parámetros del modelo, vista previa, características. Menciona contenidos para miembros («únete», super gracias) y donaciones.
- **[12:26–14:40] Token y petición a la API**: crear nuevo token en HF (nombre, permisos de lectura/escritura) → «podemos conectarnos a todos los modelos... de forma gratuita». HF tiene límites de peticiones sin suscripción — suficiente para validar un producto en desarrollo. Pestaña **Deploy → JavaScript** muestra el ejemplo de petición (fetch) que se copia al **README** del proyecto para dárselo como contexto al CLI con `@readme`.
- **[15:07–18:37] Integración y seguridad del token**: el modelo pregunta «¿fetch directo o SDK?» → se deja fetch tal cual el ejemplo del README. Se crea un archivo **.env** para ocultar las claves («que no estén a la vista... de Git»); aviso: el token usado es de prueba y hay que tener precaución con membresías caras.
- **[18:37–21:05] Depuración en vivo**: la imagen no se renderiza («no reconoce la respuesta») aunque el token responde — abre el inspector del navegador: llega un archivo **base64**; le pide al modelo que solucione el tipo de dato JSON recibido → «me solucionó el inconveniente rápidamente» (y de paso un spinner más llamativo y botón de descarga). Resultado: primera imagen generada; «este producto es 100% funcional».
- **[21:05–23:49] Cierre y plataforma**: resumen del stack (Vue 3, CLI + OpenRouter con Horizon Beta, HF Inference API — «no solo este modelo, sino cualquier otro de generación de imágenes») y promoción de iacomunia.com (catálogo de herramientas de IA por categorías, newsletter, membresías; en mantenimiento).

## Puntos clave

1. **HF Inference API como capa de infraestructura**: cientos de modelos con una interfaz única, sin infraestructura propia [01:52, 12:26].
2. **FLUX.1 Krea-dev recién llegado a HF** como modelo de generación (con permiso de lectura/escritura del token) [01:16, 12:49].
3. **CLI + OpenRouter como equipo de desarrollo**: instrucciones en lenguaje natural generan el repo completo; fallback entre modelos cuando un free tier falla (Alpha → Qwen 3 Coder → Beta) [05:47-09:15].
4. **Depuración guiada por el inspector**: el error «no reconoce la respuesta» era un base64 mal interpretado — corregido conversando con el modelo [19:36-20:36].
5. **Buenas prácticas básicas**: .env para el token fuera de Git; conocer los límites de peticiones del free tier de HF [17:26-18:04, 13:19-13:54].

## Notas sobre la fuente

- Transcripción de subtítulos **manuales es-419**; variantes del nombre de Hugging Face literales en el raw («Hogging/Hooky/Hugiface/Hookin/Hugy/Hoogie Face») y «Flux 1 crea dev» — probablemente **FLUX.1 Krea-dev** (novedad de agosto de 2025 en HF); «Open Routro» por OpenRouter; «NB» por .env; «Ritmi» por README.md. Este resumen los normaliza.
- Fuente 21/57 de la playlist «IA-Recursos»; decimosexto canal nuevo del lote (IAcomunIA), entidad aplazada.
