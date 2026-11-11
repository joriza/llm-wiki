# Resumen: Automatiza CUALQUIER TAREA de EDICIÓN de IMÁGENES — Flux Kontext [DEV]

- **Tipo**: resumen de fuente (anuncio/tutorial técnico de modelo de edición de imágenes por instrucciones).
- **Canal**: Xavier Mitjana - Lab (sub-canal de [[xavier-mitjana]]).
- **Publicado**: 2025-06-27. **Duración**: 15:42.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Le-ZOJ9ydtQ).
- **Raw**: [raw/inteligencia-artificial/2025-06-27-automatiza-tareas-edicion-imagenes-flux-kontext-dev-xavier-mitjana-lab.md](../../raw/inteligencia-artificial/2025-06-27-automatiza-tareas-edicion-imagenes-flux-kontext-dev-xavier-mitjana-lab.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[generacion-local-de-imagenes]] (Kontext Dev + LoRAs de acción).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Black Forest Labs liberó los **pesos abiertos (open weights) de FLUX.1 Kontext Dev** — la versión de desarrollo del Kontext Pro, un modelo de **12.000 millones de parámetros** — con licencia **no comercial gratuita** (las licencias comerciales se pagan). Dos consecuencias: (1) se puede ejecutar «en chips de consumo» y probar gratis (Hugging Face, ComfyUI con soporte nativo); (2) al ser open weights, se puede **entrenar por tareas**: no solo objetos, sino «entrenar habilidades, entrenar acciones concretas», lo que «hace que sustituir Photoshop esté un paso más cerca» — automatizar ediciones repetitivas entrenando el modelo con las propias ediciones satisfactorias hechas a mano.

## Recorrido del vídeo

- **[00:00–03:47] Qué es y qué hace**: edición de imágenes con una sola instrucción — eliminar y añadir elementos, transferir un objeto a otro contexto (el peluche), trabajar con texto, y **consistencia de personaje** iterativa: añadir bigote, plano entero, versión realista, cambiar vestimenta, cambiar de contexto. Disponible en Hugging Face y con soporte nativo en ComfyUI; para uso comercial, en proveedores de inferencia.
- **[03:47–05:01] Rendimiento**: en benchmarks se compara «más o menos» con la generación de imágenes de ChatGPT — ligeramente por encima en calidad baja, justo por debajo en media; «entiende muy bien el contexto», atiende instrucciones y permite ediciones globales y locales. Familia Kontext (Pro/Max) disponible en **Freepik** (patrocinador): ejemplo conversacional — foto de estudio de un hombre de 30 → «cambia el jersey por una camisa verde» → retrato de medio cuerpo con «FLUX» en la camiseta → al desierto → montando un camello. En Freepik se puede mezclar: imagen generada con GPT Image 1 editada luego con Flux (cambiar gorila por oso polar + logo «bananas»). La suite incluye vídeo (Veo 3 transcrito como «BO3», Kling 2.1 Master, Hailuo 2 de MiniMax; cupón «chavier» 20%).
- **[06:51–09:14] Prueba gratis en Hugging Face Space**: imagen de un vaquero generada en ChatGPT → «edita la imagen para ponerle una chaqueta roja» → en ~**27 segundos**, edición precisa (la cara cambia «un poquito»); «crea una imagen de un plano medio del personaje» → headshot algo ajustado; título con texto («cowboy moderno», letras blancas con borde negro por detrás) — «no se ha adherido muy bien al prompt» (lo colocó sobre el bolsillo), pero demuestra que trabaja con texto.
- **[09:14–11:34] ComfyUI en local**: soporte nativo (blog oficial): actualizar ComfyUI (o el de escritorio) → Workflows → plantillas → Flux → **FLUX.1 Kontext Dev** → instalar dependencias con un clic. Demo: coche rojo → azul → «make the car green»; imágenes de 1024×1024, **~30 segundos por edición**, igual que en Hugging Face.
- **[11:34–15:27] Fine-tuning por tareas (FAL)**: entrenar con un pequeño dataset de pares entrada→salida. Ejemplos ya entrenados por FAL: **peinado brócoli** (el modelo base lo interpreta mal; el entrenado aplica el estilo sin instrucciones), **background change** (por instrucción), **cartoonify** (sin instrucción alguna), **foto profesional** (cualquier foto → foto de estudio), **reframe/outpaint** a 9:16, **weather effect** (cambiar el clima). Idea del autor: «si tenemos que hacer 100 veces una misma edición... entrenar el modelo con las primeras ediciones satisfactorias que hayamos hecho a mano» para que el resto sea automático y eficiente.

## Puntos clave

1. **Open weights no comerciales**: Kontext Dev (12B) gratis para uso personal; licencias comerciales de pago; corre «en chips de consumo» [00:26-03:17].
2. **Edición conversacional con consistencia**: instrucciones encadenadas mantienen al personaje (jersey → camisa verde → plano medio → desierto → camello) [04:35-05:50].
3. **Rendimiento**: comparable a la generación de imágenes de ChatGPT según benchmarks, con muy buena obediencia a instrucciones y ediciones globales y locales [03:47-04:35].
4. **Tres vías de acceso**: gratis en Hugging Face Space (~27 s/edición), en local vía plantilla nativa de ComfyUI (~30 s, 1024×1024), o comercial en proveedores de inferencia [07:19-11:34].
5. **La joya: fine-tuning por tareas** — LoRAs de acción (brócoli, fondo, cartoonify, foto de estudio, reframe, clima); entrenar con pares entrada/salida propios para automatizar ediciones repetitivas [11:34-15:27].
6. **Límites observados**: cambios de cara leves en las ediciones; la colocación de texto por detrás del personaje falló en la prueba [08:14-09:14].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («Flux Context/un Context» por Kontext, «open wage/open wes» por open weights, «Hagin/Haging/hacking face» por Hugging Face, «Confi» por ComfyUI, «Freepic/Freeak/Freepak» por Freepik, «BO3» probablemente Veo 3, «Cling» por Kling, «Hiluo» por Hailuo, «GPT1 de imagen» por GPT Image 1). Este resumen los normaliza.
- Incluye patrocinio (Freepik, cupón «chavier» 20%) registrado como tal.
- Relacionada con las fuentes 6/57 (FLUX Kontext local, Academia SD) y 7/57 (mismo autor, canal principal); consolidación conjunta pendiente.
- Fuente 9/57 de la playlist «IA-Recursos».
