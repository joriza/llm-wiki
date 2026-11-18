# CodeSimple

- **Tipo**: página de entidad (canal).
- **Dominio**: `ia-local`.
- **Fuentes**: [[resumen-gratis-y-sin-limites-accesos-api-gpt-claude-gemini-codesimple]] (2026-09-23).

Canal que catalogó **6-7 proveedores con claves API gratuitas**: NVIDIA, Pinecone (Alibaba), Token Harbor, OpenRouter, Talkify (Grok), agentrouter.org (GitHub 6+ meses); flujo clave/URL base + advertencias de fiabilidad.
**Actualización (2026-11-11, lote ia-local — fuentes 43, 47, 48 y 55)**: el canal amplía su registro con dos hilos nuevos:

1. **Economía/técnica del hardware local**: [[resumen-no-compres-hardware-para-ia-local-hasta-que-veas-esto]] (43 — depreciación/reventa de VRAM, línea de los 16 GB, equilibrio comprar vs alquilar = 13,8 años) y [[resumen-mac-studio-vs-amd-ai-pc-no-compres-sin-antes-ver]] (47 — preprocesamiento vs decodificación, MoE encoge la ventaja de Apple, curva de mejora software gratis de AMD, trampas de mini PC baratos; cajas recomendadas: Minisforum MSS1 Max, Framework Desktop).
2. **Recetas cloud-gratis**: [[resumen-como-usar-gpu-gratis-en-kaggle-30-horas-semanales]] (48) y [[resumen-free-32gb-vram-server-running-ai-models-locally]] — no; esta última es de [[abi]].
3. **[[strata]]**: su versión de la historia del motor (55) — misma tesis que [[jorge-marfil]] con datos adicionales (IQ3_XXS 99.4 % de calidad, variante coder 32 GB, motor Apple Silicon 41-52 tok/s).

perfil consolidado: análisis económico-técnico con datos de mercado reales (eBay, DRAM, precios de tokens) — el contrapunto «auditor de facturas» del lote, complementario al «banco de pruebas» de [[nichonauta]].

**Actualización 2026-11-16 (consolidación T49 — WL-295, tramo 43, 2.ª fuente)**: [[resumen-WL295-deepseek-v41-flash-arquitectura-codesimple]] (ia-local/) — análisis de la arquitectura de DeepSeek V4.1 Flash (módulo engram, codificador-decodificador causal, caché KV 389 KB→890 B/token, atención dispersa, MHC single-pass) con la tesis de que la eficiencia de memoria/coste, no los parámetros, es la frontera real de los LLM; 2.ª mano del paper, título clickbait sin correlato — señalados. Cruza [[deepseek-harness]] e [[inferencia-local]].

**Actualización 2026-11-18 (consolidación T15 — tramo 100, +2 fuentes: WL-638 y WL-640)**: los resúmenes del tramo las contaban como «1.ª/2.ª fuente del canal en la wiki» por error de búsqueda — el canal ya tenía entidad aquí desde el lote ia-local (corregido). Las dos fuentes nuevas amplían el registro fuera del nicho ia-local:

- **Diseño de sistemas** (WL-638, [[resumen-WL638-diseno-sistemas-senior-codesimple]], tramo 100 — sede informatica-teoria): lección progresiva de arquitectura donde cada pieza llega con su costo (dinero, punto de fallo, latencia, «ligeramente incorrecta a propósito», piezas vivas); tesis: «construir la cosa nunca fue la parte difícil» — la IA escribe cada caja, saber cuáles se necesitan y qué cuestan «es el trabajo ahora».
- **Hardware/economía** (WL-640, [[resumen-WL640-gpu-p100-ia-local-codesimple]], tramo 100): la Tesla P100 de $78 que movió un 27B a 67 tokens/s — el truco real es software (llama.cpp parcheado por un joven de 17 años + spec decoding) y el precio triplicó en 9 semanas cuando el truco se hizo público: «quien cobra el conocimiento no es el programador, es quien vende la tarjeta». Encaja con el perfil económico-técnico del canal (precios eBay monitorizados, costos ocultos del local ~300 W).

La entidad queda con **6 fuentes** y confirma su doble vertiente: «auditor de facturas» (economía) y «profesor con costos explícitos» (didáctica).
