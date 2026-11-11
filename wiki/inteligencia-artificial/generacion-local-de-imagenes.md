# Generación local de imágenes (IA generativa de imágenes abierta)

- **Tipo**: página de concepto.
- **Dominio**: `inteligencia-artificial/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 11 resúmenes de la playlist «IA-Recursos» (2024-08-18 a 2026-06-28) + 1 del corpus previo.
- **Ver también**: [[xavier-mitjana]] · [[alejavi-rivera]] · [[agentes-de-codigo]].
- **Nota**: el contenido «sin censura» se registra aquí como posición de las fuentes (los modelos/plataformas abiertos no filtran), no como recomendación de uso.

## El concepto

La generación de imágenes con modelos **abiertos ejecutados en local o con acceso gratuito** como alternativa a las plataformas cerradas de pago (Midjourney, DALL·E). Los motores recurrentes del corpus son la familia **FLUX** (Black Forest Labs: Schnell, Dev, Pro, Kontext, Krea-dev) y **Stable Diffusion** (vía Fooocus o ComfyUI), junto a los abiertos chinos (Qwen Image, Wan) y los agregadores/Spaces de Hugging Face.

## Motores y versiones consolidados por las fuentes

- **FLUX.1** — tres versiones (Schnell rápida, Dev intermedia, Pro de pago); en los benchmarks citados «dos en la primera posición y su modelo más pequeño en la quinta, todos por delante de Midjourney 6». Puntos fuertes: realismo, manos/pies sin deformar, texto (corto y largo) integrado en la escena. Progresión del corpus: guía general (11/57) → guía de acceso gratuito (10/57) → **Kontext Dev** (open weights 12B, edición por instrucciones, 9/57) → **Krea-dev** vía Inference API (21/57).
- **Fooocus (Stable Diffusion)** — interfaz con requisitos bajos (~4-6 GB VRAM/RAM, GTX 900+; alternativa Google Colab, incluso desde el móvil): presets, performance (pasos de difusión), seed, negative prompt y el conjunto **Input Image** de la familia ControlNet sin línea de comandos (PyraCanny = clonar poses; CPDS = imitar fondos; Face Swap con Stop At/Weight; Inpaint/Outpaint; Describe). Dos fuentes del mismo software desde ángulos distintos: calidad/uso (4/57) y accesibilidad/requisitos (5/57).
- **FLUX.1 Kontext Dev en ComfyUI** — instalación completa: checkpoints **GGUF cuantizados** (Q2 para 6 GB de VRAM, Q6 para 12, Q8 para 14+), text encoders (Clip_L + T5 FP8), VAE, LoRA Hyper-Flux (8-12 pasos vs. mínimo 20, con coste en calidad y más VRAM → Bypass en GPUs modestas) y configuración mínima verificada (Q2 + 512×512 + 20 pasos ≈ 6 GB) (6/57).
- **ComfyUI en la nube (RunPod)** — cuando la GPU local no alcanza: RTX 3090 a 0,43 USD/h con plantillas de un clic, disco persistente para modelos de 16-18 GB, Hugging Face Access Token para descargar modelos a la nube, y economía verificada (~0,80 € el tutorial completo; «la imagen nos cuesta un céntimo») (8/57).
- **IA local china y media**: Qwen Image (texto legible en imágenes; español aún débil), Wan 2.2 (animar a vídeo) (7/57); Qwen que separa imágenes en hasta 8 **capas editables** («Photoshop con IA») (17/57); Kling O1: edición de vídeo por instrucciones «como nano banana, pero en vídeo» (14/57).
- **Ideogram 4.0 abierto (diseño, no solo imagen)**: primer modelo fundacional abierto de Ideogram (9,3 B) — texto legible, layouts, colores y control por JSON; web con créditos diarios y **ComfyUI en local e ilimitado** con plantilla y descarga automática del modelo (resumen-la-ia-gratis-que-esta-destrozando). Refuerza la línea del LoRA de identidad con Ideogram (35/57).
- **Vídeo abierto local (2026)**: **Bernini** (ByteDance) — framework abierto de edición de vídeo por instrucciones con multi-input («una especie de Nano Banana para vídeo») — y **LTX Desktop** (Lightricks) — generación local 4K con audio y editor de timeline con IA, sin nube ni coste (resumen-la-ia-gratis-que-esta-destrozando). Se suman a Kling O1 (14/57) y LTX 2.3 (35/57) como la vertiente de vídeo del concepto.

## Ejes transversales

1. **Lo local como condición de libertad**: sin servidor que filtre, las fuentes presentan el modelo abierto como «sin censura, sin límites»; y sin suscripción — el eje repetido por CreaTuIA (1, 4), MUSYN (5), Creador Inteligente (10) y Alejavi Rivera (11).
2. **La escalera de acceso gratuito**: Hugging Face Spaces (Schnell sin cuenta; Dev con cuenta gratuita por prioridad) → Glif para **Pro** gratis (con GPT-4o mini como optimizador de prompt) → SeaArt/「cart」 con 150 créditos diarios → plataforma web (Perchance, PixNova, RafaelAI) para volumen instantáneo (10/57, 11/57, 1/57).
3. **Ingeniería de prompts como multiplicador**: la expansión de prompt («Magic Prompt» de Ideogram, replicada con ChatGPT o dentro de un Glif) convierte prompts cortos en detallados — argumento de que Midjourney/DALL·E aplican esa ingeniería internamente y con modelos puros se puede replicar (11/57, 10/57).
4. **Fine-tuning por tareas**: del LoRA de aceleración (6/57) a los **LoRAs de acción** — entrenar el modelo con pares entrada→salida propios para automatizar ediciones repetitivas («sustituir Photoshop está un paso más cerca») (9/57, Lab); LoRA de identidad con ~20-30 fotos y la regla «basura dentro, basura fuera» (35/57).
5. **Control fino de la generación**: pasos de difusión, CFG (peso del prompt), seed, negative prompt y estilos combinables, compartidos por Fooocus (4/57, 5/57) y ComfyUI/RunPod (8/57).
6. **Consistencia de personaje como frontera**: FLUX Kontext supera según las fuentes al ControlNet IP-Adapter; la iteración conversacional mantiene al personaje entre ediciones (6/57, 9/57); en vídeo, LTX 2.3 con hoja de referencias (35/57).

## Divergencias pendientes de verificación

- Requisitos de Fooocus: 4 GB VRAM/6 GB RAM (4/57) vs. ~8 GB RAM y compatibilidad AMD (5/57) — verificar contra el GitHub oficial (lllyasviel) antes de elevar un dato a referencia.
- La plataforma transcrita «cart» de 10/57 y «GTube» de 1/57 no se identificaron con seguridad: pendientes antes de crear páginas de herramienta.

## Fuentes de este concepto

- [[resumen-4-mejores-ias-sin-censura-imagenes-gratis-creatuiia]] (1/57) · [[resumen-mejor-ia-gratis-ilimitada-imagenes-sin-censura-creatuiia]] (4/57) · [[resumen-nueva-herramienta-imagen-ia-sin-censura-gratis-musyn]] (5/57) · [[resumen-flux-kontext-en-local-y-gratis-academia-sd]] (6/57) · [[resumen-todas-las-herramientas-ia-gratis-ilimitadas-xavier-mitjana]] (7/57) · [[resumen-comfyui-tutorial-completo-flux-dev-sd35-ia-paso-a-paso]] (8/57) · [[resumen-automatiza-tareas-edicion-imagenes-flux-kontext-dev-xavier-mitjana-lab]] (9/57) · [[resumen-imagenes-prohibidas-creadas-con-ia-guia-gratis-creador-inteligente]] (10/57) · [[resumen-como-midjourney-gratis-mejor-sin-censura-flux1-alejavi-rivera]] (11/57) · [[resumen-ia-china-reventar-todo-alejavi-rivera]] (14/57) · [[resumen-google-dispara-tu-productividad-novedad-xavier-mitjana]] (17/57) · [[resumen-api-hugging-face-web-app-ia-ia-comunia]] (21/57) · [[resumen-entrena-tu-propia-ia-gratis-xavier-mitjana]] (35/57) · [[resumen-la-ia-gratis-que-esta-destrozando-a-las-suscripciones-alejavi-rivera]] (Ideogram 4.0, Bernini, LTX Desktop).
