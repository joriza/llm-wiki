# Resumen: La MEJOR IA Gratis e Ilimitada Para Crear Imágenes SIN CENSURA

- **Tipo**: resumen de fuente (tutorial/reseña de herramienta de IA generativa de imágenes local).
- **Canal**: CreaTuIA (página de entidad pendiente de consolidación; misma fuente que [[resumen-4-mejores-ias-sin-censura-imagenes-gratis-creatuiia]]).
- **Publicado**: 2025-10-16. **Duración**: 17:35.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=O1IKmUk2Dzs).
- **Raw**: [raw/ia-media-generativa/2025-10-16-mejor-ia-gratis-ilimitada-imagenes-sin-censura-creatuiia.md](../../raw/ia-media-generativa/2025-10-16-mejor-ia-gratis-ilimitada-imagenes-sin-censura-creatuiia.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[generacion-local-de-imagenes]] (Fooocus local).
- **Disposición de la ingesta**: Nueva.

## Tesis central

La herramienta del video es **Fooocus** (transcrito «Focus»), una interfaz gratuita y de código para **Stable Diffusion que corre en local** — y esa es «la clave»: al no depender de un servidor web, «no tiene tantas restricciones» y permite generar sin censura «todo lo que se te venga por la cabeza». Requiere hardware modesto (~4 GB de VRAM y 6 GB de RAM) o puede ejecutarse gratis en **Google Colab** (mismos resultados, con re-descarga por sesión y menor velocidad). El video es una guía en profundidad de su interfaz y herramientas, con la advertencia honesta de que, siendo gratuita, «no la podemos comparar con la IA de pago» y que el autor la usaría «solo para generar imágenes de personas» (en paisajes añade «una capa como si fuese de pintura»).

## Recorrido del vídeo

- **[00:00–03:52] Instalación en dos modos**: **local** — descargar, descomprimir y ejecutar el archivo `.run` (variantes base, anime y realistic; la base alcanza) — o **Google Colab** («un ordenador virtual que nos deja Google»): botón play, ejecutar, esperar la descarga; «lo único que cambia de local a nube es la velocidad» y la re-descarga por sesión.
- **[03:52–07:40] Configuración (pestaña Settings)**: **presets** (anime, realista, pony, playground; el autor deja «initial»); **performance** — Quality (60 pasos), Speed, Extreme Speed, Lightning e Hyper-SRD (~30 pasos con «resultados casi iguales»; recomienda Quality para realismo); **aspect ratio** variado; **número de imágenes** (por defecto 2, hasta 32 por prompt); formato de salida PNG/JPG/WebP; **negative prompt** opcional (evitar deformaciones, ojos de distinto color, etc.); **semilla** (identificador reproducible de cada imagen); **history log**. Pestaña **Style**: presets combinables («al final se te va a hacer como un remix»), p. ej. interiores con «Real State» o «Hyper Realist». Pestañas **Models/Advanced** (modelos de Stable Diffusion y LoRA): «no toques nada».
- **[08:03–10:44] Demostración de calidad**: con performance Quality (60 pasos — «a mayor número de pasos... hasta conseguir el resultado final»), genera retratos con «nivel de detalle de la chaqueta y de los pelos de la barba excelente». Limitación reconocida: en paisajes el realismo baja («añade como un filtro o una capa como si fuese de pintura»); «esta IA yo la utilizaría para generar imágenes de personas».
- **[10:44–16:14] Input Image — el potencial real de Fooocus**: **Upscale or Variation** (variación fuerte de una imagen de referencia, útil para despegarse del original); **Upscale 2X** (duplica dimensiones/calidad); **Image Prompt** (usar una imagen como «plus» del prompt escrito); **PyraCanny** («clonar poses» de una imagen de referencia combinándola con prompt); **CPDS** («exactamente igual que PyraCanny, pero para imitar fondos»); **Face Swap** desde prompt (la referencia «solo tiene que ser de la cara de tu modelo», cuanto más cercana mejor; parámetros **Stop At** y **Weight** controlan la fuerza — Face Swap 0,9, Image Prompt 0,5; Stop en 1 para clonar cara y pelo); combinación de herramientas (Face Swap + PyraCanny a la vez); **Inpaint/Outpaint** (ampliar la imagen en todas las direcciones); **Inpaint Detail** (editar zonas, p. ej. cambiar el color de los ojos).
- **[16:14–17:50] Utilidades finales**: **Describe** (imagen → prompt), mejora de imagen, **Metadata** (extraer metadata), **Enhance** (mejorar la imagen de salida sin subir nada). Cierre: «Fooocus es una IA muy buena, pero existen mejores IAs... sin censuras que rozan el realismo» (gancho de suscripción).

## Puntos clave

1. **Lo local como condición de la «sin censura»**: al correr en el propio hardware (o Colab) no hay servidor que filtre contenido [00:41-01:35, 09:15].
2. **Requisitos accesibles**: ~4 GB de VRAM y 6 GB de RAM; Google Colab como alternativa gratuita sin hardware propio [00:41, 02:48].
3. **Performance = pasos de difusión**: Quality 60 pasos vs. Hyper-SRD ~30 con resultados casi iguales — el trade-off calidad/velocidad explicado en simple [05:28-05:51].
4. **Control fino por imagen**: seed, negative prompt, hasta 32 imágenes por prompt y estilos combinables en «remix» [06:14-07:40].
5. **Input Image es el corazón**: PyraCanny (poses), CPDS (fondos/profundidad), Face Swap con Stop At/Weight, Image Prompt, Inpaint/Outpaint y Describe [10:44-16:14] — herramientas de la familia ControlNet aplicadas sin línea de comandos.
6. **Límite honesto**: buena para personas/modelos, débil para paisajes; «no la podemos comparar con la IA de pago» [09:56-10:44].

## Notas sobre la fuente

- Transcripción automática con errores literales conservados en el raw («Focus» por **Fooocus**, «room» por .run, «Piracanny» por PyraCanny, «CPDs/CPRS» por CPDS, «ad pass» por Advanced, «ADC Real State», «Chaconía» ilegible). Este resumen los normaliza (la identificación de Fooocus es segura por la interfaz descrita: presets, performance modes Quality/Hyper-SRD, PyraCanny/CPDS/Face Swap/Inpaint).
- Misma serie y canal que la fuente 1/57 (CreaTuIA, reseñas de IAs de imagen sin censura); contenido sensible registrado como contenido de la fuente.
- Fuente 4/57 de la playlist «IA-Recursos».
