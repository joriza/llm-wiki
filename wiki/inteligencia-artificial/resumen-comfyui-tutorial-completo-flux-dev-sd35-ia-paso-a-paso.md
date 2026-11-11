# Resumen: ComfyUI Tutorial Completo — Flux Dev, Stable Diffusion 3.5 y más

- **Tipo**: resumen de fuente (tutorial técnico: GPU en la nube + ComfyUI para generación de imágenes).
- **Canal**: IA Paso a Paso (página de entidad pendiente de consolidación).
- **Publicado**: 2024-11-11. **Duración**: 31:38.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=HXo47zMFQyk).
- **Raw**: [raw/inteligencia-artificial/2024-11-11-comfyui-tutorial-completo-flux-dev-sd35-ia-paso-a-paso.md](../../raw/inteligencia-artificial/2024-11-11-comfyui-tutorial-completo-flux-dev-sd35-ia-paso-a-paso.md) (transcripción de subtítulos manuales con marcas de tiempo).
- **Páginas de concepto asociadas**: pendientes de consolidación (ComfyUI, RunPod, Flux Dev, Stable Diffusion 3.5, nodos personalizados, Hugging Face tokens).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Si tu GPU no da la talla para modelos locales (una RTX 3090 «ya cuesta 1000-1300 €»), la alternativa es **alquilar cómputo en la nube con RunPod** y ejecutar ComfyUI con plantillas de un clic. El autor demuestra el flujo completo — deploy de un pod con Flux Dev, generación, descarga de Stable Diffusion 3.5 Large desde Hugging Face a la nube, nodos personalizados y lotes de prompts — y cierra con la contabilidad real: **~0,80 € por casi dos horas de tutorial, «la imagen nos cuesta un céntimo»**.

## Recorrido del vídeo

- **[00:44–03:30] Por qué RunPod y elección de GPU**: RunPod es de pago (crédito mínimo ~10 €) pero muy barato. En **Pods → Deploy** se elige GPU: RTX 4090 (0,69 USD/h), 2000-series (0,28), y la recomendada del canal, **RTX 3090 a 0,43 USD/h** (~0,40 €) — «1300 horas de uso para igualar el precio de la gráfica». Confiesa que el enlace de la descripción es de referido.
- **[03:30–06:37] Deploy con plantilla**: apartado **Pod Template** — plantillas de la comunidad que despliegan aplicaciones «con un clic»; buscar la de Flux Dev (por Pinokio, v1.2). Configuración clave: **volumen de disco persistente a 100 GB** (sin coste extra) para los modelos pesados (Flux pesa 18 GB). Deploy on demand: la primera configuración tarda ~15-20 minutos (~0,15 €) porque descarga los modelos.
- **[07:00–08:44] Conexión y conceptos de ComfyUI**: dos puertos — **7860 (ComfyUI listo para usar)** y **8888 (JupyterLab**, el sistema de archivos). ComfyUI funciona por **nodos**: checkpoint, prompt positivo/negativo, tamaño (512×512 por defecto), **seed** (misma seed → imágenes similares), **steps** (detalle), **CFG** (libertad del modelo), sampler y scheduler. Primera recomendación: pulsar **Refresh** al cargar. Los **workflows** son archivos JSON que se arrastran (los del canal, gratis en la descripción).
- **[09:45–13:27] Primer workflow (Flux Dev)**: Flux no usa prompt negativo — «nos centramos en el prompt a secas»; ajustar resolución, número de imágenes, seed y **steps a 28** (valor que le gusta). Error típico nº 1: falta de un archivo VAE — el error muestra lo disponible y «es lo mismo pero con otro nombre»: seleccionarlo y Refresh. La **primera generación tarda 3-4 minutos** (precarga del modelo); después ~**40 segundos por imagen** en la 3090. El progreso se ve resaltando los nodos en verde.
- **[13:27–14:39] Descarga de resultados**: clic derecho sobre la imagen → guardar; o en **JupyterLab → workspace/ComfyUI/output** → clic derecho → descargar la carpeta como ZIP («para mí la opción más cómoda»).
- **[14:39–21:31] Añadir Stable Diffusion 3.5 Large desde Hugging Face**: buscar el **modelo** (no el Space) en Hugging Face; como la descarga debe ocurrir en la nube: crear un **Access Token** en Hugging Face y en la terminal de JupyterLab (`cd ComfyUI/models/checkpoints`) usar el comando de descarga con el token sustituido (lo deja en la descripción) — 16 GB a ~30 MB/s (~7 min). Además un **text encoder** (clip_g, 1,3 GB, ~1 min) — el autor lo descarga primero por error en checkpoints y lo corrige en `models/clip`. Workflow oficial de SD3.5 de Hugging Face arrastrado a ComfyUI; ajustar los nombres case-sensitive de modelo y encoders (clip_g, clip_l, t5xxl); resolución en **múltiplos de 64**; SD3.5 **sí permite prompt negativo**; pasos 40, sampler DPM++ 2M, scheduler sgm_uniform.
- **[23:49–26:12] Nodos personalizados**: Manager → **Custom Nodes Manager** → instalar p. ej. **ComfyUI Inspire Pack**; el «Reconnecting» durante la instalación es habitual; para reiniciar NO usar el botón de ComfyUI sino **parar y arrancar el pod** — parado se paga **0,02 USD/h** de almacenamiento en vez de 0,43, y al reactivar «no tiene que hacer descargas, todo está almacenado» (1-2 minutos).
- **[26:54–30:38] Lotes de prompts con Inspire Pack**: un workflow con nodo personalizado que lee un **archivo .txt con múltiples prompts** (en `custom_nodes/.../prompts/example`) y genera todas las imágenes en cola automáticamente; la ruta de guardado viene definida en el propio workflow (carpeta con fecha/nombre de archivo dentro de output).
- **[30:38–31:38] Dejar de pagar y balance**: en Pods → **Stop** (2 céntimos/h) → **Terminate** (papelera) para no gastar nada. Contabilidad del tutorial: **~0,80 € totales**. «Muchas veces vale más la pena esto que la gráfica de 1000 €».

## Puntos clave

1. **GPU en la nube como alternativa a comprar hardware**: RTX 3090 a 0,43 USD/h vs. 1000-1300 € de compra [01:20-03:30].
2. **Plantillas de un clic (Pinokio)** en RunPod + disco persistente de 100 GB para modelos pesados [03:56-05:45].
3. **Errores típicos y su solución**: VAE con otro nombre (seleccionar y Refresh), nombres case-sensitive de modelos en SD3.5, descargue de encoders en la carpeta correcta (`models/clip`) [11:07-11:47, 20:20-21:31].
4. **Hugging Face token para descargar modelos a la nube**: Access Token + comando con Bearer en la terminal de JupyterLab [15:41-18:45].
5. **Economía del pod**: Stop = 0,02 USD/h; Terminate = 0; la primera imagen tras cargar modelo tarda minutos, luego ~40 s [25:16-25:42, 30:38-30:59].
6. **Automatización por lotes**: Inspire Pack lee prompts de un .txt y genera la cola entera sin pegar uno a uno [26:54-28:41].

## Notas sobre la fuente

- Transcripción de subtítulos **manuales**; errores del reconocedor literales en el raw («rampot» por RunPod, «Config UI/confi» por ComfyUI, «pinto/quintio» por Pinokio, «hacking FACE» por Hugging Face, «Jupiter Lab» por JupyterLab, «D P M 2 2 M» por DPM++ 2M). Este resumen los normaliza.
- La «plantilla Pinokio» citada delimita versiones (v1.2 del template); los enlaces de workflows/comandos están en la descripción del video (no en el raw).
- Fuente 8/57 de la playlist «IA-Recursos»; séptimo canal nuevo del lote (IA Paso a Paso), entidad aplazada.
