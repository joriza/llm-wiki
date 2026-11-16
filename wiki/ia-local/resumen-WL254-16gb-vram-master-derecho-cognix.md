# ¿16 GB de VRAM alcanzan para un máster en Derecho con IA LOCAL?

- **Fuente original**: `raw/ia-local/2026-10-11-16-gb-de-vram-alcanzan-para-un-master-en-derecho-con-ia-local.md`
- **Video**: [¿16 GB de VRAM alcanzan para un máster en Derecho con IA LOCAL?](https://www.youtube.com/watch?v=OFO-Uo-O6Mk)
- **Canal**: Cognix · **Publicado**: 2026-10-11 · **Duración**: 20:37 · **Ingesta**: 2026-11-15 (tramo 37)

## Qué trata

Réplica técnica al video viral de Manolo Remedi («Con 16 GB alcanza para la IA en serio», 585k vistas): la mitad de la historia que nadie contó. Tesis central: **«suficiente para cargar» y «suficiente para terminar el trabajo» son dos números distintos** — el número que todos miraron es el uso de memoria, el que importa es la **ventana de contexto**:

- **Lo que era cierto en el video viral**: cuantización GSQ-Arco (Das Lab, IST Austria) comprima selectivamente según sensibilidad; Qwen 3.8 27B pasa de 17,4 GB a 11,8 GB «prácticamente sin pérdidas» (30/30 AIME, empata en código); la demo en pantalla (15,1–15,9 GB en una 5060 Ti) fue honesta; hay usuarios reales con trabajo real ( Reddit: >1M tokens de código agéntico, ~73k de contexto).
- **La otra mitad — la caché KV**: los pesos son fijos (11,8 GB) pero la caché de conversación crece (~64 KB/token en el 27B; 32k tokens = 2 GB, 128k = 8 GB). El mismo archivo de modelo corrió con 64k tokens de contexto en la 5060 Ti vs 262k en la 5090 — un cuarto del espacio por la placa, no por el modelo. Modelos de código son peores (Devstral Small 2 de Mistral: 160 KB/token → ~11k tokens libres en 16 GB).
- **Cuentas reales**: en una 5060 Ti quedan ~14 GB ocupados antes de empezar (modelo 11,8 + cabeza MTP 0,35 + archivo de visión auto-cargado 0,93 + margen llama.cpp ~1 GB) → ~47k tokens a precisión completa; **desactivar visión + caché a 8 bits → ~110k tokens** con dos ajustes. Pero Claude Code carga 30-32k de instrucciones de sistema antes del primer mensaje, y el gasto real lo hacen las salidas de herramientas (Kanban 87 %, Blender 96 % de una ventana de 128k, medido por Luke Dev Lab).
- **Por qué las reseñas varían de 3 a 70 tok/s**: (1) desborde a RAM (5070 Ti <9 tok/s, 8k de contexto, 61 % de la tarea vs 5090 a 98 — prueba Microcenter); (2) el ancho de banda pone el techo físico (448 GB/s ÷ tamaño del archivo ≈ 41 tok/s teóricos en 5060 Ti; medidos 35, 85 %); (3) MTP da aceleración (27→46 tok/s) pero consume caché — hay que apagarla a partir de ~32k tokens. Bonus: el prefill lee el prompt a ~738 tok/s.
- **Veredicto práctico**: para uso diario con contexto corto-medio, 16 GB son genuinamente suficientes; para sesiones agénticas largas (>100k habituales) quedan solo dos salidas honestas — alquilar en la nube (uso esporádico) o **comprar dos placas de gama media** (2× 5060 Ti 16 GB ≈ 1578 USD; división por tensores: 27→46 tok/s y repos compartido pasa de 3-bit/64k a 6-bit/131k). Consejos finales: comprar por ancho de banda y no por fama (RX 9070 XT da 43 % más de ancho de banda al mismo precio), correr el modelo más chico que resuelva el problema y darle lo que sobra a la caché, no a los pesos.

## Observaciones de triage

- Fuente de divulgación técnica sólida: síntesis de mediciones de terceros (Reddit, Microcenter, Luke Dev Lab, Bart Sliczka) claramente atribuidas; el propio canal hace pruebas propias cada semana (marco de comunidad, suscripción final excluido de la síntesis).
- Cifras de precios/mercado (USD 429/1578, «mercado rompió la relación precio-valor») sin fecha ni fuente exacta — señaladas como dependientes del momento.
- ASR garbiñea «GSQ Arco», «Devstrolls Mall 2» (Devstral Small 2), «cachea KV» como «cachea precisión» — normalizado solo aquí.

## Cruces (en texto plano, candidatas)

- Serie IA local/inferencia: WL-253 (Strata/Qwen 3.8 Flash — MISMO modelo y ecosistema, consolidar juntos), WL-239/WL-240 (inferencia local; WL-240 es Cognix y trata exactamente caché de expertos), WL-228 (context rot — la ventana de contexto como recurso finito del agente), WL-122 (TPU vs GPU).
- Hardware: WL-147/WL-154 (Cognix, mismo canal — entidad [[cognix]]), [[hardware-para-ia-local]], WL-238 (hardware SiC).
- Concepto candidato: «presupuesto de contexto» (pesos vs caché KV) — página candidata, en texto plano.

## Dominio destino sugerido (pendiente de consolidación)

`ia-uso-practico/ia-local` (hardware y dimensionamiento de VRAM; consolidar con WL-253/WL-240/WL-239).

- **Concepto** (T40, 2026-11-15): [[inferencia-local]] — clúster creado con estas fuentes; página enlazada desde el concepto.
