# WL-640 — La GPU de $78 para IA que triplicó su precio en 9 semanas (CodeSimple)

- **Fuente original**: `raw/wl/tramo-100/2026-11-17-la-gpu-de-78-para-ia-que-triplico-su-precio-en-9-semanas.md` ([Vídeo](https://www.youtube.com/watch?v=yyDF1P4sU4w))
- **Canal**: CodeSimple (2.ª fuente del canal en la wiki — tras WL-638; umbral de entidad alcanzado, pendiente de consolidación)
- **Publicado**: 2026-11-17 · **Duración**: 13:10
- **Dominio**: agentes-de-codigo / hardware-IA local (informatica-teoria adyacente)
- **Fecha de ingesta**: 2026-11-18

## Qué trata

Caso de estudio de la Nvidia Tesla P100 (2016, $5.699 de datacenter, chatarra de segunda mano a $78) que pasó a mover un modelo de 27.000 millones de parámetros a 67 tokens/s con $156 de hardware — y cuyo precio triplicó en 9 semanas cuando el truco se hizo público.

1. **Por qué importa la memoria, no el chip**: la inferencia relee todo el modelo por cada token — «lo que importa es lo rápido que pasa las páginas del libro de recetas». La P100 tiene HBM (memoria apilada, 732 GB/s); dos unidades suman 1.464 GB/s teóricos y 32 GB (el modelo ocupa ~22).
2. **El truco real es software**: con llama.cpp estándar rinden 17,5 tokens/s — exactamente lo que ChatGPT y Claude predijeron («las IA no se equivocaron; cambió el programa»). Un chaval de 17 años, sin titulación y ayudado por IA, publicó gratis en GitHub una versión optimizada para P100 que arregla dos cosas: (a) **paralelismo real entre las dos tarjetas** (cortar cada «página por la mitad» en vez de pipeline secuencial) y (b) **caché del dato recurrente en memoria del chip** («dejar el salero en la encimera»): 17,5 → 32,6 tokens/s (+86 %) sin tocar hardware.
3. **La mitad restante es spec decoding**: un modelo ayudante adivina 4 palabras y el grande las revisa de golpe («revisar cinco cuesta lo mismo que escribir una»); sin ayudante 29,7, con texto normal 49,2, los famosos 67 solo en texto muy predecible (~70 % de acierto) — «el 67 es real, pero es una propiedad del texto, no de la tarjeta». La calidad no degrada (el grande descarta lo que no le conviene); lo que sí afecta: KV-cache cuantizada para textos largos y pesos modificados por la comunidad.
4. **El rango real**: usuarios reportan de 11,7 a 74 tokens/s con el mismo hierro — factor 6 decidido por software y configuración. «La tarjeta no decide la velocidad; la decide el programa encima».
5. **La economía del conocimiento**: precio eBay monitorizado semanal — $77-80 (ago) → $99 el día del commit en GitHub → $274 tras el video viral (×3,4 en 9 semanas; la RTX 3090 solo +6 %). «Quien cobra el conocimiento no es el programador, es quien vende la tarjeta»: $392 de sobreprecio por el mismo hierro + un programa gratis. Alternativa: el mismo modelo vía OpenRouter — con el sobreprecio alone comprarías 223 días de escritura continua del servicio más barato.
6. **Los costos ocultos del local**: ~300 W en carga (la luz sola ya cuesta ~3/4 del API más barato), 36-47 W en idle; el prefill (leer 30.000 tokens de contexto) tarda ~75 s — la P100 no tiene los circuitos de las modernas para procesar entrada: perfecta para charlar, eterna con documentos grandes.
7. **Tres relojes en marcha**: mantenimiento por una sola persona sin fecha, fin del soporte de drivers Nvidia a mediados de 2028, y dependencia del modelo concreto. Veredicto honesto: si ya la tienes, instala el programa hoy; si trabajas con datos que no pueden salir (médico/legal/financiero), es obligación no ahorro; si es afición, apúntala como afición; a $274 no compensa — úsalo por internet. Remate: «las tarjetas siguen ahí cuando nadie hace videos sobre ellas; esa suele ser la mejor semana para comprar».

## Señales de triage

- Segunda fuente sólida del canal: desmonta su propio material de partida (los 67 de la miniatura quedan contextualizados: texto predecible, spec decoding, pesos comunitarios), separa tarjeta/software/modelo, y cierra con consejos accionables por perfil de usuario. Explicaciones con analogías correctas (pipeline vs. tensor paralelo, caché L2).
- Datos verificables en su marco (P100 HBM ~732 GB/s, precios eBay, consumos) presentados como reportes de terceros; ASR limpio. Sin patrocinios; CTA final estándar.

## Cruces

- **Entidad [[codesimple]] actualizada (T15)**: 6.ª fuente — el canal ya tenía entidad en ia-local desde el lote ia-local; el resumen la daba como «candidata nueva» por error de búsqueda (corregido en la entidad); «el conocimiento público mueve el precio» ↔ [[paradoja-jevons-software]] y [[la-etiqueta-miente]] (aquí la etiqueta «$78» caducó por publicación); local vs. nube ↔ WL-633 (costos API vs. suscripción) y [[routing-por-coste]]; «el software decide sobre el hierro» ↔ WL-602/605. Dominio destino: agentes-de-codigo o futuro hardware-ia.

## Veredicto de triage

Excelente lección técnica-económica: corrige el clicbait viral que aprovecha, cuantifica los costos ocultos del local y da veredicto por perfil. Sin consolidación (aplazada); CodeSimple con 2 fuentes — candidata a entidad en la próxima consolidación.
