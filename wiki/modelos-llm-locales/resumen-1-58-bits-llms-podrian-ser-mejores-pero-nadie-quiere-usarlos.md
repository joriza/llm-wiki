# Resumen: 1.58 BITS: los LLMs que podrían ser MEJORES… pero nadie quiere usarlos

- **Tipo**: resumen de fuente.
- **Dominio**: `modelos-llm-locales`.
- **Fuente original**: `raw/modelos-llm-locales/2026-10-06-1-58-bits-llms-podrian-ser-mejores-pero-nadie-quiere-usarlos.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=SJkTWcy1P24 — Cognix, 2026-10-06 (11:52).
- **Nota**: fuente 53/58 del lote ia-local (entrada 53 del playlist). Análisis técnico BitNet / 1.58-bit LLMs: paper Microsoft 2024, bitnet.cpp, entrenamiento consciente de cuantización, Ternary Bonsai 2 (Prism ML), muro memoria/entrenamiento, GPU Tensor Cores vs sumas, economía RAM vs API.

## La promesa: BitNet (Microsoft, 2024)

- Paper: **"La era de los LLMs de 1 bit"** — "todos los grandes modelos están en 1,58 bits".
- Cada peso = **ternario**: -1, 0, +1 (con escala compartida por matriz).
- **1.58 bits** = log₂(3) bits de información por peso.
- 5 pesos caben en 1 byte → **1.6 bits/peso real**.
- Multiplicación matriz-peso → **sumas/restas enteras** (skip si 0).
- Resultados paper (3B params):
  - Iguala modelo 16-bit mismo datos.
  - VRAM: **2.22 GB vs 7.89 GB** (×3.5 menos).
  - Velocidad: **2.71× más rápido**.
- **bitnet.cpp** (oct 2024, sobre llama.cpp, CPU):
  - Intel laptop: **2.37–6.17× más rápido** vs llama.cpp 16-bit.
  - Energía/token: **-72%**.
  - 100B params en CPU M2 Ultra: 5-7 tok/s.

## El problema: no puedes solo cuantizar, hay que reentrenar

- 4 bits = 16 niveles (tosco pero cercano); **ternario = 3 niveles** → redondeo destruye lo aprendido.
- Prism ML: Qwen 2-bit estándar cae **85 → 70** promedio (vs 4-bit).
- **Entrenamiento consciente de cuantización (QAT)**:
  - Modelo mantiene **dos copias de cada peso**: precisión completa + ternaria.
  - **Forward pass**: pesos ternarios (baratos).
  - **Backward pass**: pesos precisión completa (aprenden).
  - **Straight-Through Estimator**: gradientes fluyen a través de redondeo.
  - Tras miles de millones de pasos → modelo aprende a producir valores que redondean limpio a -1/0/+1.
- **Costo**: entrenamiento sigue en 16-bit → **tan caro como antes**.
  - BitNet 2B Microsoft: **4 billones de tokens** entrenamiento desde cero.
  - Hugging Face convirtió Llama 3 8B: **100B tokens** reentrenamiento.
  - Nadie probó > pocos miles de millones params en producción.

## El muro de la memorización: 1.58 bits límite duro

- Capacidad info por peso = **1.58 bits máx** → limita memorización.
- BitNet 2B vs Qwen 2.5 1.5B (4× más datos):
  - Promedio: **54.2 vs 55.2** (casi empata).
  - **Trivia QA (recuperación info): 33.6 vs 38.4** → **pierde**.
  - Razona bien, **no recuerda datos** cuando se le piden.

## El avance real: Ternary Bonsai 2 (Prism ML, sept 2025)

- **Qwen 3.8 27B ternario** (no desde cero!).
- **Truco**: copia precisión completa arranca con **pesos reales Qwen ya entrenados**.
- Modelo original = **profesor en paralelo**; versión ternaria aprende a **igualar sus respuestas** (distilación).
- Resultado: **54 GB → 5.9 GB** (×9 menos).
- Benchmarks Prism ML: **98.2% score promedio** original; mates/código ~igual.
- Pesos en Hugging Face; gente corriéndolo en **RTX 5060 Ti 16 GB**.
- **Bonsai 1 (jul 2025)** ya existía; Bonsai 2 lo mejora.

## Apple ya lo hace: Apple Intelligence ~3B a 2 bits

- Modelo detrás de Apple Intelligence: **~3B params, 2 bits/peso**, mismo tipo de entrenamiento.
- "Llegaron bastante cerca de esto."

## El problema del hardware: Tensor Cores no saben sumar

- GPU Tensor Cores = **matrices de multiplicadores** especializados.
- **No pueden hacer sumas/restas nativamente**.
- Pesos ternarios deben **desempaquetarse a números normales** → multiplicadores los tocan.
- **Ineficiente**: multiplicadores activados igual que antes.
- Mark Horowitz (Stanford): mul 16-bit ≈ **37× energía** de suma 8-bit.
- En GPU ese ahorro **casi inútil** (multiplicadores se activan igual).
- **Ganancia real**: 2.7× velocidad por **menor consumo VRAM** (ancho de banda).

## Nvidia y el formato ganador: BF16/BFP4 (no ternario)

- Nvidia bajó bits pero **solo hasta BF16/BFP4** → sus multiplicadores siguen usándose tal cual.
- **Rubin GPU** (verano 2025): 50 petaflops FP4 → OpenAI, Microsoft, Google Cloud, Meta, CoreWeave.
- **~80% mercado hardware IA** → formato que corren tus chips = formato para el que todos afinan software.
- **Contexto sigue en 16-bit** por defecto → 8B modelo, 64k ctx = **8+ GB solo contexto** (más que modelo).

## Bonsai 2: aún joven, scores de la propia Prism ML

- Pierde **9 pts en razonamiento historias largas** (contexto largo).
- Scores son **auto-reportados por Prism ML** → pruebas independientes pendientes.

## Veredicto: ¿son mejores?

> "Pues claro que sí, al menos para quienes no tienen GPUs caras con mucha RAM."

| Enfoque | Para quién sirve |
|---------|------------------|
| **Modelos ternarios (BitNet, Bonsai)** | ✅ Sin GPU cara / mucha RAM; conservan inteligencia, baratos, superiores a cuantización <4 bits convencional |
| **Cuantización agresiva <4 bits** | ❌ "Modelos lobotomizados que no recuerdan su nombre" |
| **GPU Nvidia + BF16/BFP4** | ✅ Quien tiene hardware caro; formato estándar de facto |

## Economía práctica

- **Si no tienes GPU cara**: modelos ternarios = única opción real para inteligencia decente en local.
- **Si tienes GPU cara**: formato Nvidia (BF16/BFP4) gana por ecosistema, no por superioridad técnica pura.
- **Entrenamiento**: sigue caro (16-bit) → barrera de entrada para laboratorios.
- **Hardware futuro**: hace falta chips con sumadores nativos, no solo multiplicadores.

## Cruces en la wiki

- Entidad: [[cognix]] (6ª fuente en ia-uso-practico; 1ª en historia-informatica; análisis técnico profundo).
- Entidad: [[bitnet]] (Microsoft 2024: 1.58-bit LLMs, ternario -1/0/+1, bitnet.cpp CPU, QAT straight-through estimator; 2.22 GB VRAM 3B, 2.71× velocidad, -72% energía; entrenamiento 4T tokens desde cero).
- Entidad: [[ternary-bonsai]] / Prism ML (Prism ML sept 2025: Qwen 3.8 27B ternario via distilación desde pesos reales; 54→5.9 GB, 98.2% score; Hugging Face; corre en 5060 Ti 16 GB).
- Modelo: [[qwen]] (3.8 27B base para Bonsai 2; 2.5 1.5B comparación BitNet 2B).
- Entidad: [[llama-cpp]] (base bitnet.cpp; PR #29887 expert cache relacionado).
- Concepto: [[hardware-para-ia-local]] (RAM manda; Tensor Cores vs sumadores; Nvidia 80% mercado dicta formato; contexto 16-bit come VRAM).
- Concepto: [[ia-local-texto]] (cuantización vs QAT; ternario vs 4-bit; memorización vs razonamiento).
- Relacionado: fuente 32/58 (pila 5 capas inferencia — Cognix, motores especializados); fuente 44/58 (KV cache cuello botella); fuente 51/58 (Strata caché expertos MoE — similar idea: mover lo caliente a VRAM).