# Resumen: Creé un modelo MoE 0.1B — ultra rápido incluso en CPU

- **Tipo**: resumen de fuente.
- **Dominio**: `modelos-llm-locales`.
- **Fuente original**: `raw/modelos-llm-locales/2026-08-26-cree-un-modelo-moe-0-1b-ultra-rapido-incluso-en-cpu.md` (video en español; transcripción literal por subtítulos automáticos, «quant»→Qwen) — https://www.youtube.com/watch?v=QZ18qtz9WJ8 — Nichonauta, 2026-08-25 (07:07).
- **Nota**: fuente 22/58 del lote ia-local. Extiende la entidad [[lfm]] con las conversiones MoE propias del canal. Aclaración honesta del canal: estos LFM «no son ChatGPT» — son bases para desarrollos y automatizaciones (como ChatGPT solo desde ~2.6B).

## La idea: convertir densos a MoE

Problema identificado: los LFM 2.5 de Liquid AI (230M, 350M, 1.2B, 2.6B) son **densos** (solo el 8B-A1B es MoE) — optimizables aún más «si, manteniendo tamaño y eficiencia, fueran mezcla de expertos». La solución del canal: **convertirlos a arquitectura MoE** — mismos safetensors, misma precisión F16 completa (no un LoRA, no 4 bits) con solo una parte activa — y publicarlos también en **GGUF** (Q4_K_M, Q8, F16). Subidos a su perfil de Hugging Face: por ahora el 230M y el 350M; planea el 1.2B, el 2.6B y variantes de Qwen (0.8B, 2B, 4B, 9B, quizá 27B).

## Los números (350M MoE en Q4_K_M)

- **En GPU (RTX 3060)**: «341 tok/s» reportados — con la advertencia honesta del canal de que esa cifra es «muy falsa» porque solo fueron 319 tokens totales y la respuesta tardó menos de un segundo; en generaciones largas la velocidad real es **>400 tok/s consumiendo 0,8 GB**.
- **En CPU puro (sin GPU dedicada ni integrada)**: **121 tok/s en Q4** y **~80 tok/s en Q8** — la ventaja de que el modelo sea intrínsecamente eficiente Y mezcla de expertos.
- El contexto: modelos ya chicos → cuantizados → **y ahora MoE** (solo una parte activa): tres capas de reducción.

## Cruces en la wiki

Amplía la familia [[lfm]] (las variantes densas 230M/350M/1.2B/2.6B ahora tienen versiones MoE propias del canal); sus números de CPU conectan con [[hardware-para-ia-local]] (el caso «CPU puro» que la fuente 4 declaró inutilizable para modelos grandes — aquí viable para modelos ultra-chicos en automatizaciones); y complementa [[automatizacion-con-python]] (bases para desarrollos y automatizaciones, «no reemplazo de ChatGPT»).

---

**Ver también**: [[lfm]] (entidad-familia, con las conversiones MoE del canal) · [[hardware-para-ia-local]] (los números de CPU puro) · [[automatizacion-con-python]].
