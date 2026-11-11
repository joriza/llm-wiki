# Resumen: Reto Modelos 2B — cómo sacar el MÁXIMO provecho con IA Local

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-20-reto-modelos-2b-como-sacar-el-maximo-provecho-con-ia-local.md` (video en español; transcripción literal por subtítulos automáticos, «un slot»→Unsloth, «Atomic AI» según ASR) — https://www.youtube.com/watch?v=C_nBDT9cIGM — Nichonauta, 2026-08-19 (11:18).
- **Nota**: fuente 12/58 del lote ia-local. **Giro estratégico del canal**: abandona probar modelos a diario y se compromete por semanas a DOS modelos 2B (Gemma 4 E2B + Qwen 3.5 2B), construyéndoles entorno (RAG, MCPs, skills, descomposición atómica de tareas con «Atomic AI»).

## La tesis: estabilidad sobre novedad

«En ninguna compañía cambian de secretaria a diario»: un modelo es un asistente con el que se trabaja en equipo, y cambiarlo a diario pierde tiempo de descarga/prueba **y** de trabajo (nunca tenés el entorno listo). El compromiso: semanas enteras con los mismos dos modelos 2B, supliendo sus carencias con entorno — RAG, MCPs, skills y descomposición de tareas largas en **tareas atómicas** (no divisibles), que es donde los chicos fallan. La lección generalizable: «cualquier modelo tiene carencias, y las mismas estrategias sirven para todos».

## El setup del reto (detalles nuevos respecto a fuentes previas)

- **Gemma 4 E2B**: Unsloth **QAT** UD-Q4_K_XL + mmproj BF16 + MTP en Q4 («el que más me acelera»). Recordatorio del truco E: los archivos E-series pesan más de lo que ocupan (any-to-any) y su KV cache es tan optimizada que **en runtime pide menos memoria que la competencia** a pesar del archivo mayor.
- **Qwen 3.5 2B**: variante **MTP GGUF** (MTP incluido, sin archivo extra), UD-Q4_K_XL de 1,38 GB — pero ojo: **su KV cache consume más que la de Gemma**, así que en VRAM puede llegar a consumir más pese al archivo menor.
- Ambos con 131k de contexto (el máximo del E2B; en el Qwen se igualó a propósito «para estar en igualdad de condiciones» aunque soporta el doble), razonamiento activo, sampling por modelo.
- **Nuevo truco anti-loops**: **presupuesto de razonamiento de 8192 tokens** — si la cadena de razonamiento entra en bucle, se corta exactamente ahí y pasa a la respuesta final. Complementa los DRY de [[llama-cpp]].
- Nuance de KV quantization: cuantizar la KV del borrador MTP **pierde sentido** (el overhead de MBs adicionales come la mitad ahorrada) — solo vale para la KV del modelo principal.

## Mediciones (RTX 3060 12 GB)

Qwen 3.5 2B: **4,4 GB** en VRAM, **136 tok/s** (con razonamiento máximo). Gemma 4 E2B: **3,6 GB** (y bajable a 3,6→ con KV q8_0 opcional), **~173 tok/s** promediando 4.500 tokens generados. Ambos «pequeñitos pero bastante utilizables»: redacción, búsqueda web, RAG, código, herramientas.

## Cruces en la wiki

El reto opera exactamente sobre las entidades ya consolidadas: [[gemma-4]] (E2B), [[qwen]] (3.5 2B), [[llama-cpp]] (motor + DRY + presupuesto de razonamiento como nuevo parámetro a documentar) y el workflow de [[desarrollo-con-modelos-locales]]. «Atomic AI» es la herramienta de descomposición que el canal desarrollará en la serie.

---

**Ver también**: [[gemma-4]] · [[qwen]] (entidades, E2B y 2B medidos en el «Reto») · [[llama-cpp]] (presupuesto de razonamiento 8192 como nuevo truco anti-loops) · [[desarrollo-con-modelos-locales]].
