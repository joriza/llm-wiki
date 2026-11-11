# Resumen: FLUX KONTEXT EN LOCAL Y GRATIS

- **Tipo**: resumen de fuente (tutorial técnico de IA generativa de imágenes local).
- **Canal**: Academia SD (página de entidad pendiente de consolidación).
- **Publicado**: 2025-06-27. **Duración**: 09:01.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=qPtUhkAmZOc).
- **Raw**: [raw/inteligencia-artificial/2025-06-27-flux-kontext-en-local-y-gratis-academia-sd.md](../../raw/inteligencia-artificial/2025-06-27-flux-kontext-en-local-y-gratis-academia-sd.md) (transcripción de subtítulos manuales con marcas de tiempo).
- **Páginas de concepto asociadas**: [[generacion-local-de-imagenes]] (Kontext Dev + GGUF).
- **Disposición de la ingesta**: Nueva.

## Tesis central

FLUX.1 Kontext — «el modelo más innovador y potente en local» — puede usarse gratis en el propio ordenador vía **ComfyUI**, resolviendo su mayor barrera (el consumo de VRAM) con **checkpoints GGUF cuantizados**: **Q2** para GPUs de solo 6 GB, **Q6** para 12 GB y **Q8** para 14 GB o más. El video es una guía de instalación precisa (checkpoints, text encoders, VAE, LoRA de aceleración, workflow y nodos faltantes) y de configuración según la memoria disponible, con la técnica de prompting como «la clave para que Flux Kontext funcione perfectamente».

## Recorrido del vídeo

- **[00:00–00:45] Capacidades del modelo**: cambiar estilos, mantener **consistencia del personaje**, restaurar imágenes, colorear imágenes antiguas, editar cualquier imagen «y mucho más».
- **[00:22–02:10] Descargas y ubicaciones**: checkpoints **GGUF** (Q2/Q6/Q8 según VRAM) → `Models\Diffusion_Models`; text encoders **Clip_L** y **T5** (versión FP8 Scaled) → `Models\Text_Encoders`; VAE **ae.safetensors** → `Models\VAE`; **LoRA Hyper-Flux** (genera con muchos menos pasos) → `Models\LoRAs`. Actualizar **ComfyUI** a la última versión (portable: carpeta Update → «Update ComfyUI», o «Update ComfyUI and Python Dependencies» si no funciona); arrancar con «Run NVIDIA GPU» («bastante mejor que la versión Fast FP16» para Kontext).
- **[02:31–03:24] Workflow**: descargar el fichero del workflow y arrastrarlo al área de trabajo; cerrar el aviso de nodos faltantes; en el **Manager** → «Install Missing Custom Nodes» → Install en cada uno → Restart; sin nodos en rojo, listo.
- **[03:24–04:30] Configuración**: checkpoint según VRAM; seleccionar VAE, Clip-L, T5 y el LoRA Hyper-Flux; imagen de referencia + prompt; resolución de salida en un nodo específico — puede ser cualquiera, no necesita ser proporcional a la original (limitada solo por la VRAM disponible).
- **[04:54–06:06] Aceleración y memoria**: los métodos de aceleración **LoRA** y **TeaCache** «pueden afectar ligeramente a la calidad» y **aumentan el consumo de VRAM** — con 6-8 GB conviene desactivarlos (clic derecho → **Bypass**). Sin el LoRA de aceleración, ajustar a un **mínimo de 20 pasos**; con el LoRA, entre 8 y 12 (el autor recomienda 12). Configuración de consumo mínimo: LoRA y TeaCache desactivados, checkpoint Q2, resolución baja (512x512), 20 pasos → consumo medido «de poco más de 6 GB» (incluyendo sus programas de captura/edición abiertos).
- **[06:06–07:51] Prompts y capacidades**: «la clave... está en saber escribir los prompts adecuados» — **simples y directos** (ejemplo: «Cambia el color del vestido a verde»). Además de editar: consistencia de personaje en otro lugar/acción/estilo. Enlaces recomendados: guía de prompts para Kontext y los ejemplos de la web de **Black Forest Labs**. **Dos imágenes de referencia**: activar el segundo nodo y conectar su LATENT al KSampler (la resolución la define entonces ese nodo; la primera se ignora); al volver a una sola imagen, reconectar el LATENT del VAE Encode al KSampler. El prompt multi-imagen debe ser muy específico (elemento de la primera imagen, interacción con el elemento de la segunda, lugar, acciones, estilo) — «es posible que no os salga a la primera».
- **[07:51–08:35] Veredicto**: «Flux Kontext es un modelo increíble con impresionantes características que consigue **consistencias superiores al ControlNet IP-Adapter**; capaz de cambiar textos y carteles, mantener coherencia espacial, restaurar imágenes antiguas y casi todo lo que se te ocurra».

## Puntos clave

1. **GGUF como solución de VRAM**: Q2 (6 GB), Q6 (12 GB), Q8 (14+) — el mismo modelo cuantizado para cada GPU [00:45-00:55].
2. **Anatomía completa de la instalación ComfyUI**: diffusion model + 2 text encoders + VAE + LoRA de aceleración + workflow + instalación de nodos faltantes desde el Manager [01:06-03:24].
3. **Trade-off aceleración/calidad/memoria**: LoRA Hyper-Flux y TeaCache aceleran (8-12 pasos vs. mínimo 20) pero degradan levemente la imagen y consumen más VRAM → Bypass con GPUs modestas [04:54-05:36].
4. **Configuración mínima verificada**: Q2 + 512x512 + 20 pasos sin aceleración ≈ 6 GB de VRAM [05:36-06:06].
5. **Prompting de edición**: instrucciones simples y directas; el multi-imagen exige prompts muy específicos y tiene curva [06:24-07:51].
6. **Ventaja competitiva**: consistencia de personaje superior al ControlNet IP-Adapter; edición de textos/carteles y coherencia espacial [07:51-08:10].

## Notas sobre la fuente

- Transcripción de subtítulos **manuales** (texto limpio, sin garbiñaduras relevantes); se conservan literales.
- Tutorial técnico preciso (rutas de carpetas, nodos, parámetros) — útil como referencia de configuración; alternativa sin censura de pago alineada con la serie de la playlist (fuentes 1, 4, 5).
- Fuente 6/57 de la playlist «IA-Recursos»; quinto canal nuevo del lote (Academia SD), entidad aplazada.
