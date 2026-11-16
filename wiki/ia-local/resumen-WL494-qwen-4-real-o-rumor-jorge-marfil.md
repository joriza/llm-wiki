# WL-494 — Primer Vistazo A Qwen 4: Qué Es Real Y Qué Es Rumor

- **Fuente original**: `raw/ia-local/2026-11-16-primer-vistazo-a-qwen-4-que-es-real-y-que-es-rumor.md` ([Vídeo](https://www.youtube.com/watch?v=UP2g330Nj14))
- **Canal**: Jorge Marfil (entidad wiki: [[marcos-di-cesare]] no aplica — canal propio; ver Señales)
- **Publicado**: 2026-11-16 · **Duración**: 40:51
- **Dominio definitivo**: ia-local (consolidación T90, 2026-11-16). Provisional: ia-uso-practico/ia-local (rumorología de lanzamiento + guía de hardware local)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Estado del hype de Qwen 4 (aún sin pesos publicados) separando oficial de rumor, con pedagogía de hardware local. Estructura:

1. **Contexto oficial**: teaser de la cuenta de Qwen (6-nov, «The becoming begins», cita taoísta del «pez Kun» — guiño fonético); la familia Qwen 4 (Max/Plus/Flash/27B) viene de fuentes externas no confirmadas por Alibaba; nota de prensa Apsara (22-sep) confirma solo «en entrenamiento» + roadmap Qwen 4.5/5 (5–10 billones de parámetros).
2. **Lo que sí se puede tocar**: Qwen 3.8 27B denso (Apache 2.0, visión de serie, 262k→1M de contexto; ~7,67 M de descargas; 54 GB fp16 → 27 GB 8bit → 16 GB 4bit) y **Qwen 3.8 Flash Next**, adelanto oficial de la arquitectura de Qwen 4 (etiqueta `Qwen4_XP`): MoE multimodal 125B+51B con 6B activos, gated delta net («recuerda») + Qwen sparse attention («recupera»), residuales 4-ramas con compuertas, **tabla de embeddings consultable** desplazable a RAM/SSD, optimizador Muon, licencia Qwen Community License 1.0; entrenamiento ~1/9 del coste de Qwen 3.7 Plus (dato del fabricante). Benchmarks de fabricante (mejora fuerte en SWE-style agentic) — con la reserva explícita «es la tabla del fabricante».
3. **Demos de la vista previa** (acceso anticipado en Qwen Code): clon de Minecraft con sombreadores/ciclo día-noche (fallo: no se puede salir del agua), coliseo romano (~69k tokens en razonamiento alto), biorreactor virtual de insulina en Python (cifras de simulación, no producción — avisa quien la enseña), paisaje de vóxeles, escena Three.js, acuario 3D, SVG animado. Hallazgo clave: **subir el esfuerzo de razonamiento ahora sí mejora el resultado** (antes no siempre), al coste de más tokens generados localmente; con esfuerzo bajo el «esqueleto» de un juego igual sale entero.
4. **Pedagogía local («la cocina»)**: VRAM=encimera, RAM=despensa, SSD=trastero; cuantización como envasado al vacío; caché KV como notas que crecen. Denso vs MoE explicado con cocineros (todos los ingredientes vs. 5 de 100 por plato) — **en MoE los expertos no usados igual ocupan memoria**: la jugada local es expertos en RAM. MTP (predicción multi-token, capa entrenada por Qwen) da 1,3–1,7× con +2,8 GB VRAM y solo en una rama de llama.cpp mantenida por Unsloth.
5. **Números de la comunidad** (2.ª mano, foros): 27B denso en RTX 3080 20 GB a 4bit dinámico: 10→5 tok/s con 50k de contexto; Mac M3 Ultra 14 tok/s 4bit; M3 Max 40 tok/s con MTP. Flash Next 2bit (79 GB): solo 4–5,5 GB en VRAM, expertos en RAM, tabla (29 GB) en SSD; recetas con `-n-cpu-moe` (24 GB VRAM + 64 RAM → 2bit@256k; llama.cpp ≥ b11971). RTX 5090 Linux: 200 tok/s gen, 9k prefill — **Windows 11 le comía 1,5 GB VRAM y un 70 % de velocidad**; 4×3060 12GB+128 RAM a 3bit ≈ 70–90 tok/s; Mac mini M2 16GB desde SSD: 5,5 tok/s y desgaste de disco («bajar al trastero en cada plato»).
6. **Rumores desmontados**: Coduk — modelo sin origen declarado en la herramienta de programación de Alibaba (nombre ASR; ver Señales), accesible con cuota para usuarios individuales pero no Team/Enterprise; probadores anónimos dicen que supera pruebas donde fallan los locales, pero el propio video detecta «una docena de cuentas con párrafos casi idénticos → huele a campaña». Stealth models en Arena (Kalmia, Kerria, Ensia, Miura) con tokenizador tipo Qwen — puede ser o no. Benchmarks circulantes sin fuente primaria; la «fecha de lanzamiento» de una cuenta pequeña sin fuente; el millón de contexto del código de Qwen Cloud es un default por costumbre, no especificación; rumor chino de abandono de pesos abiertos negado por el propio teaser + Flash Next abierto.
7. **Criterio final y checklist**: «Qwen 4 empieza a ser tuyo cuando tiene ficha y licencia en Hugging Face» — checklist de 5 puntos al lanzamiento (ficha en la org oficial, licencia concreta — Qwen maneja ≥3, denso/MoE y cuentas de encimera/despensa, soporte llama.cpp/GGUF de Unsloth, desconfiar de fechas sin cuenta atrás ni cambios en motores de inferencia). Coste API mientras tanto: sesión inventada de 2M entrada + 200k salida en Qwen 3.8 Flash ≈ $0,40.

## Señales de triage

- **Nombres distorsionados por ASR** (normalizados solo aquí): «Cuen/Kuen» = **Qwen**; «Cloud Code» = Claude Code; «SW Bench/Deep SW/SOW and Bench» = familia SWE-Bench; «Qwen sparse attention», «gated delta net», «Muon», «MTP» legibles. **«Coduk/Koduc» ilegible** — nombre de ASR sin verificar, probable modelo preliminar en la herramienta de programación de Alibaba (Qoder); «Coder» puede ser también ASR. Marcar como ASR-ilegible en consolidación.
- Todo lo no-oficial (fechas, tamaños de la familia, benchmarks del Max, licencia abierta de Qwen 4) está etiquetado como rumor/2.ª mano por el propio video — honestidad epistémica alta, con citas de hilos (HN, r/LocalLLaMA) sin enlaces.
- Benchmarks de Flash Next son del fabricante — señalado dentro del propio contenido y re-señalado aquí.
- Cruce de patrocinios: ninguno; cierre con llamada a suscribirse (estándar del canal).

## Cruces

- **[[qwen]]** (+1, fuerte): actualiza la familia con Flash Next/`Qwen4_XP`, MTP y licencias.
- **[[inferencia-local]]**, **[[llama-cpp]]** (+1: receta `-n-cpu-moe`, b11971, MTP de Unsloth), **[[delegacion-cognitiva-ia]]** (agentes de código largos consumen tokens/tiempo de tarjeta propia).
- **[[routing-por-coste]]** (+1): sesión API a $0,40 vs tarjeta propia — «el modelo es tuyo» como argumento no-económico.
- **[[percepcion-de-regresion-de-modelos]]** (parcial): sub-thought effort ahora escala — contra la percepción de que «pensar más no cambia nada».
- Patrones de rumor/hype: eco con WL-132 (desmontaje de NCM Stanford) y WL-346/353 (demos Jev) — fuentes que auditan su propia evidencia.
- Canal Jorge Marfil: 2.ª fuente WL de este canal (WL-484, Buenos Aires oculta) — canales divergentes del mismo nombre; verificar identidad en consolidación.

## Veredicto de triage

Excelente divulgación técnica de primera mano metodológica: separa explícitamente oficial/rumor/demo, enseña el modelo mental de hardware que sirve para cualquier MoE y da un checklist reutilizable. Contenido con fecha de caducidad inherente (rumorología de una semana), pero la pedagogía y el método perduran. Conservar; ASR-ilegible «Coduk» a resolver en consolidación si aparece fuente.

## Consolidación (T90)

Dominio definitivo: `ia-local/` (contenido de familia de modelos + hardware/MoE local; precedentes WL-060/206/431/434). Páginas actualizadas: [[qwen]] (+Flash Next `Qwen4_XP`, MTP, licencias), [[inferencia-local]], [[llama-cpp]] (receta `-n-cpu-moe`, rama MTP de Unsloth), [[routing-por-coste]] (API $0,40 vs tarjeta propia). Canal: Jorge Marfil — 2.ª WL con nombre homónimo de [[jorge-marfil]] (canal IA local); identidad NO verificada como la misma persona — homonimia registrada. ASR-ilegible «Coduk» queda sin resolver (sin fuente primaria).
