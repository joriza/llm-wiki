# WL-189 · ¿Es el Final de los LLMs? (NCM)

- **Fuente original**: `raw/wl/tramo-24/2026-10-22-es-el-final-de-los-llms-ncm.md` (`LKBe_Z2A0fU`)
- **Canal**: Marfil Lab · **Publicado**: 2026-10-22 · **Duración**: ~31 min · **Idioma**: español (subtítulos automáticos)

## Qué trata

Análisis crítico de dos preprints de octubre de 2026 que atacan la generación token-a-token de los LLM, con la pregunta del título respondida: no, los LLM no se acaban; son resultados de laboratorio.

**El problema de fondo**: la generación autorregresiva (predicción izquierda→derecha, Karpathy: «clones en enfoque») es una cola: cada token espera al anterior y cada paso es una pasada por una red enorme. Y con los modelos de razonamiento, los tokens ocultos de pensamiento se cobran como salida (OpenAI: GPT 5.6 Sol a 20 $/M tokens; 20.000 tokens de razonamiento por petición = 0,40 $ invisibles).

**1) Next Concept Modeling (NCM)** — Stanford, arXiv 9-oct-2026 (Kung, Cao… Christopher Ré):
- Genera la respuesta entera «a lo bruto» y la afina en pocas pasadas, siguiendo «next-scale prediction» del mundo de las imágenes (la foto borrosa que se enfoca entera a la vez).
- Tokenizador jerárquico por niveles con libros de códigos y **nested dropout** (cada nivel útil por sí solo; el residuo se corrige hacia abajo); generador transformer (~100 M parámetros) predice todos los códigos de un nivel en una pasada.
- Resultados propios: Sudoku difícil 86,1 % (12 pasadas) vs 1,0 % del autorregresivo con 128; resúmenes XSum 8 pasadas, Rouge-L 28,0 vs 26,6; «10-31× más rápido» — pero **todo medido contra modelos de difusión/flujo de laboratorio, nunca contra un chatbot real** (traducción de-a: pierde 22,6 BLEU vs 24,8 de E2D2).
- Pégalas señaladas: reconstrucción al 99 % cambia palabras relacionadas (peligroso en texto/código), jerarquía de niveles fija, tropiezos en transiciones; entrenó con ~5× menos texto.
- Precedente: Mercury/Inception Labs (difusión de texto, Ermon; 1109 tok/s en H100, cifras del fabricante).

**2) Hybrid Reasoning Agents** — Stanford/Together/UIUC/Meta, arXiv 13-oct-2026 (Yaru Shao):
- El agente piensa en el **espacio latente** (estado oculto re-inyectado vía adaptador «Hybrid Link», ~10 M parámetros sobre Qwen 3 4B/8B/14B) y escribe texto solo para herramientas y respuesta final; salida del pensamiento por parecido al vocabulario, con tramos de 16-256 pasos latentes.
- Resultados declarados: +10,4 % de rendimiento medio, −35-55 % de tokens, inferencia 1,8-2,6× más rápida, coste «2,7-3,7× menor» — pero las comparaciones de eficiencia son contra agentes de texto entrenados por los propios autores (GRPO/ARPO), no contra APIs punteras (en HLE van 16,0 vs 29,0 de GPT 5.6 Luna; en GAIA ganan 52,4 vs 37,9).
- Recálculo del autor con la convención del apéndice: el ahorro real de pasadas en matemáticas es solo 6-21 %, no 3×.
- Legibilidad/seguridad: la lectura del pensamiento latente (pseudotexto por token más cercano) conserva casi toda la información (Math-500: 84,6→82,6 al sustituir latentes por tokens; cae a ~41-45 con ruido), pero es aproximación; solo el proveedor puede auditar — el cliente queda como en 2024, sin poder mirar.

**Veredicto del autor**: ambos atacan el atasco correcto, pero son preprints con cifras de sus propios autores; «hasta que no lo midan contra un chatbot de verdad es un resultado de laboratorio». Nada desplegable hoy (sin soporte en Ollama/llama.cpp/vLLM).

## Cruces y triage

- Cruce directo con **WL-132** (mismo canal/familia Marfil — desmontaje del hype de NCM, Jorge Marfil) y **WL-122** (Marfil Lab, TPU vs GPU); tema agentes con [[agentes-de-codigo]].
- Análisis técnico serio con verificación propia (recálculo de coste), cifras de los papers citadas con fuente y rangos; los «yo supongo» del autor señalados como tales. Menciones «Oyama»/«Cloud» son garbiñeos del ASR (Ollama/Claude), normalizados solo aquí.
- Sin patrocinios. Dominio previsto: ia-uso-practico o ia-critica-y-fronteras (consolidación diferida, L12).
