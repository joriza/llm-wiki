# WL-253 — Qwen 3.8B de 177B a TODA VELOCIDAD con solo 12 GB de VRAM

- **Fuente original**: `raw/ia-local/2026-10-11-qwen-3-8b-de-177b-a-toda-velocidad-con-solo-12-gb-de-vram.md`
- **Video**: [Qwen 3.8B de 177B a TODA VELOCIDAD con solo 12 GB de VRAM](https://www.youtube.com/watch?v=Iy7kst7JbVs)
- **Canal**: Cognix · **Publicado**: 2026-10-11 · **Duración**: 20:58 · **Ingesta**: 2026-11-15 (tramo 36)

## Qué trata

Análisis profundo de **Strata**, motor de inferencia nuevo (dos semanas, MIT, casi todo escrito por un desarrollador, ~9.000 estrellas) especializado en un único modelo — Qwen 3.8 Flash (~125 mil millones de parámetros MoE, 512 expertos/capa, 10 activados por token) — y comparación contra llama.cpp en el mismo hardware (1 GPU de 12 GB VRAM + 64 GB RAM):

- **Métrica clave para agentes: prefill, no decodificación**. En su demo agéntica (pedido en Instacart/Swingly), 26 llamadas al modelo, ~34.000 tokens de prompt vs ~1.700 de salida (20:1); el 62 % del tiempo del modelo fue prefill. Strata lee prompts a ~900 tok/s vs ~120 de llama.cpp (8×) en la misma placa; decodificación 40 vs 26 tok/s.
- **Cómo lo logra** (los «trucos» no son magia): bloques de prefill enormes (6144 tokens vs 512 de llama.cpp) pidiendo prestado el caché de expertos durante el prefill — cada experto no residente cruza el PCIe una vez cada ~6000 tokens en vez de ~500; prefetch DMA por un hilo dedicado a un anillo en GPU (la capa N+1 se carga mientras N calcula); broadcast a todos los expertos cuando el router se estabiliza (~1000 tokens); kernel MMQ de expertos tomado de llama.cpp (el «cocinero es el mismo», cambió la logística) pero con proyecciones gate/up fusionadas y lanzamientos en grupos de 16; kernels propios para atención dispersa (sin máscara densa — el indexador elige ~2000 posiciones por consulta), indexador y GDN.
- **Decodificación**: caché de expertos (~12 % de los 24.000 expertos cubre ~2/3 de las consultas), división de cada capa en tres vías simultáneas (GPU aciertos de caché / PCIe / CPU desde RAM fijada) con banderas en memoria fijada dentro de un único grafo CUDA — utilización de GPU del 90 % vs 33-50 % de llama.cpp (aclarando que parte es espera activa); MTP (predicción multi-token) para ~2 tokens/paso con verificación exacta.
- **Integración**: detrás de **llama-swap** como proxy único con el router de llama.cpp (Strata arranca on-demand por nombre de modelo, se apaga tras 10 min de inactividad; conmutación ~34 s / vuelta ~15 s). Requisitos: 64 GB RAM para el modelo completo (cuantización IQ3_XXS ~40 GB fijados), ~28 GB del archivo son tabla de engramas transmitida desde SSD a demanda; variante podada para código con 32 GB.
- **Las trampas**: sin batching (una solicitud a la vez — no sirve para multiusuario), RAM fijada bloqueada mientras corre, Windows limitado (fijado multi-GPU a 8 GB; WSL problema de memoria) — Linux como plataforma adecuada; salida no reproducible byte a byte por defecto (GPU/CPU redondean distinto; el propio paper de Strata muestra que la diferencia es «ruido», menor que la variabilidad CPU-vs-GPU de llama.cpp consigo mismo); flag «experimental speed projection» apagado por defecto que degrada calidad (perplejidad de código +15 %).
- **Experimento propio**: portó las ideas de prefill de Strata a un fork de llama.cpp — 120 → 620 tok/s con prompt de 17.000 tokens (Strata ~900). Lección: es mucho más fácil un kernel hiperoptimizado para un solo modelo que un motor general; ~2/3 de los commits de Strata fueron coescritos con un agente de programación → escribir kernels para LLM nuevos será muy rápido. Predicción: coexistencia de motores de una sola arquitectura (velocidad máxima) y motores generales, con migración cíclica de optimizaciones.
- **Veredicto**: Qwen 3.8 Flash + Strata ya reemplaza a su MoE de 35B diario (calidad cercana a Claude Opus 4,8 según su apreciación, no verificada); decisión práctica por RAM (64 GB modelo completo, 32 GB versión código), y con llama-swap ni siquiera hay que elegir.

## Observaciones de triage

- Mejor fuente del tramo: análisis técnico de primera mano (probó, midió, leyó el código y portó las optimizaciones); los números son de SU placa y lo aclara; la comparación de calidad «cerca de Claude Opus 4,8» es apreciación personal sin benchmark — señalada.
- El proyecto tiene 2 semanas y los números publicados salen de una sola PC — advertencia de fragilidad entre versiones, reconocida.
- ASR garbiñea «Strata» como «Estrata/Stra fósforo», «Swingly» como «Instamart/Swingly», «IQ3_XXS» como «GSQR» — normalizado solo aquí por contexto.

## Cruces (en texto plano, candidatas)

- Serie IA local/inferencia: WL-239 (motor de inferencia, CodeSimple), WL-240 (caché de expertos MoE en llama.cpp — MISMO tema técnico, consolidar juntos), WL-147/WL-154 (Cognix, mismo canal), WL-122 (TPU vs GPU), WL-238 (hardware SiC).
- Entidades existentes: [[llama-cpp]], [[hardware-para-ia-local]], [[cognix]], [[strata]], [[inferencia-local]]; llama-swap queda en texto plano (consolidación T40, 2026-11-15: una sola fuente, bajo el umbral ≥2).
- Tema agéntico «prefill es lo que espera el agente» conecta con WL-228 (autocompact/context) y la serie agentes-de-codigo.

## Dominio destino sugerido (pendiente de consolidación)

`ia-uso-practico/ia-local` (motores de inferencia especializados; consolidar con WL-239/WL-240).
