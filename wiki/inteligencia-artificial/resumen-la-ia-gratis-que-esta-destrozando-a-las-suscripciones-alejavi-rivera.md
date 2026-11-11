# Resumen: La IA GRATIS que está DESTROZANDO a las Suscripciones de Pago

- **Tipo**: resumen de fuente (reseña-guía: 5-6 herramientas open source privadas).
- **Canal**: Alejavi Rivera (ver [[alejavi-rivera]], 6.ª fuente del lote).
- **Publicado**: 2026-06-14. **Duración**: 26:52.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=VAw9w_IRMEs).
- **Raw**: [raw/inteligencia-artificial/2026-06-14-la-ia-gratis-que-esta-destrozando-a-las-suscripciones-de-pago.md](../../raw/inteligencia-artificial/2026-06-14-la-ia-gratis-que-esta-destrozando-a-las-suscripciones-de-pago.md) (subtítulos manuales es-ES, transcripción literal).
- **Páginas de concepto asociadas**: [[generacion-local-de-imagenes]] (Ideogram 4.0 en ComfyUI); [[agentes-de-codigo]] (Odysseus como espacio agéntico).
- **Disposición de la ingesta**: Nueva.

## Tesis central

«No hay jaula más cómoda que la que te convence de que estarás más seguro dentro»: frente a suscripciones de tres cifras, un catálogo de alternativas **gratuitas, privadas e ilimitadas** que buscan escapar de la dependencia de las grandes tecnológicas. Datos de contexto que dan forma al argumento: los modelos abiertos van solo ~4 meses por detrás de los cerrados (2026), cuestan 6 veces menos (ahorro estimado de 25.000 M USD/año), y el ~40 % de las interacciones con IA ya contiene información sensible.

## Herramientas presentadas

- **[02:20-08:13] Handy (dictado local)**: transcripción por voz open source en cualquier campo de texto (alternativa a Whisper Flow); nació porque su creador (CJ País(?)) se rompió un dedo. Sin WiFi (modelos en local: recomendado Parakeet v3 por equilibrio precisión/velocidad), para Mac/Windows/Linux. Tecla activable configurable, palabras personalizadas (nombres de marca/propios que los modelos fallan: «Academia Artificial», «Consultoría Artificial», «Alejavi»). Métrica del canal: teclado ~45 palabras/min vs. >200 con dictado — mejora también los **inputs** a los LLM, no solo los outputs. Mención: **Eloquent** de Google (Mac/iPhone) — interfaz más amigable, pero solo en inglés.
- **[08:38-13:37] Odysseus (espacio agéntico)**: la categoría agéntica es la que más crece (de 27 % a 65 % de uso en 170.000 herramientas MCP analizadas por una firma). Odysseus: chats, agentes, MCP, research, memoria, email, tareas — gratis, ilimitada, privada. Su «pero»: en local se duerme al apagar el PC; solución del tutorial: **Docker en un VPS** (despliegue en ~5 s desde el catálogo de Docker Manager, sin terminal), activo 24/7 en «una nube privada» (recomienda plan KVM2 de Hostinger; patrocinio con cupón del canal). Conecta con OpenRouter (>300 modelos; gratis escribiendo «free») y con Ollama. «Ya no hablamos de alternativas gratuitas, sino de construir tu propio centro de mando de IA». Tutorial completo en el vídeo anterior del canal.
- **[13:37-18:30] Gemma 4 (12B) + modelo de difusión de Google**: 12.000 M de parámetros con visión, audio y razonamiento que corre en portátiles con ~16 GB de VRAM/memoria unificada — supera a Gemma 3 (27B) con la mitad de tamaño; la clave no es el tamaño sino «acercar la IA multimodal y agéntica al ordenador normal» («la de pago no va a desaparecer, pero dejará de ser una obligación»). Instalación por `ollama pull` con variantes MLX (M1-M5). Además, Google lanzó un modelo de difusión (licencia Apache 2.0) que genera texto de forma simultánea: hasta ~1.000 tok/s en GPU de consumo, 4 veces más rápido con calidad similar.
- **[18:30-21:13] Ideogram 4.0 (imagen de diseño)**: primer modelo fundacional abierto de Ideogram (9,3 B); no es «otro generador de imágenes»: diseño real — texto legible, layouts, colores, control por JSON. Web: hasta 2K, 12 imágenes/día con créditos (el ejemplo del logo con la «J» fundiéndose en el mar costó 4 créditos por 4 imágenes). En local e ilimitado: **ComfyUI** con plantilla del modelo y descarga automática.
- **[21:13-24:38] Bernini (vídeo, ByteDance)**: framework abierto de generación/edición de vídeo del dueño de TikTok/CapCut (tras Seedance 2.0). Edición por instrucciones sobre vídeo: añadir personas, pasar a invierno con nieve, cambiar fondo o perspectiva; multi-input (imagen + vídeo, múltiples referencias integradas): «una especie de Nano Banana para vídeo».
- **[24:38-26:52] LTX Desktop (Lightricks)**: app local de vídeo sin nube ni coste (Windows/Linux/Mac; 16 GB VRAM mínimo para modelos locales, o APIs). Genera vídeo 4K/50 fps/20 s con **audio** desde imagen, audio o prompt, e incluye un **editor de timeline** con IA que rellena huecos reinterpretando el concepto. Cierre: «no se trata de ser uno más, sino de hacer más que uno».

## Puntos clave

1. **Economía del argumento**: abiertos a ~4 meses de los cerrados, 6x más baratos, 40 % de interacciones con datos sensibles — la privacidad deja de ser nicho [01:21-02:20].
2. **Handy demuestra que el input importa**: dictar >200 palabras/min mejora la calidad de lo que le das al LLM [07:22-08:13].
3. **Odysseus + VPS con Docker = «centro de mando» de IA propio, 24/7 y privado** [09:16-13:37].
4. **Gemma 4 12B**: rendimiento de su antecesor 27B con la mitad de parámetros en hardware de gama media [13:37-16:15].
5. **Ideogram 4.0 en ComfyUI**: diseño con texto legible y control JSON, ilimitado en local [18:30-21:13].
6. **Vídeo creativo local**: Bernini (edición multi-input por instrucciones) y LTX Desktop (generación con audio + editor IA) [21:13-26:52].

## Notas sobre la fuente

- Subtítulos manuales (menos garbiñado); normaliza igualmente: «Cloud Fable 5» → Claude (¿«Claude Fable 5»? — «basado en mitos»; modelo anuncio no verificado, tomar como anécdota del canal), «Yenma/YMA/Jinma/Gemini 4» → Gemma 4, «Paraquet» → Parakeet, «Handy» → Handy, «Odissius/Dicius/Odisseus/Odysseus» → Odysseus, «Ideo Gran/Ideogran» → Ideogram, «Confi UI» → ComfyUI, «Bernini/Sidans» → Bernini / Seedance (ByteDance), «elx/LTX» → LTX, «CJ País» → sin verificar, «Pewdiepie» como creador vinculado a Odysseus (afirmación del canal a verificar), «patche 2.0» → Apache 2.0, «Nano Banana» → Nano Banana (Google).
- Cruces: Odysseus ya tratado por el tutorial anterior del mismo canal (fuente 34/57? — el «vídeo anterior» referenciado no está en la playlist); Handy compite con las transcripciones ASR usadas en esta wiki; Gemma 4/Ideogram refuerzan [[generacion-local-de-imagenes]]; el ecosistema Ollama/OpenRouter cruza con [[agentes-de-codigo]].
- Patrocinio: Hostinger con cupón «Alejavi» [12:02-12:22], registrado como tal.
- 6.ª fuente de Alejavi Rivera en la lote; [[alejavi-rivera]] a actualizar en la próxima consolidación (quedará en 6 fuentes).
- Fuente 34/57 de la playlist «IA-Recursos» (video ID canónico `VAw9w_IRMEs`); raw por el fallback de subtítulos (manuales).
