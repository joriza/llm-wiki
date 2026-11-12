# Resumen: FrogNano 4B 🚀 ¿Es REALMENTE mejor que el Qwen 3.5 Original?

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-10-02-frognano-4b-es-realmente-mejor-que-qwen-3-5-original.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=95vKXHnfwpA — Nichonauta, 2026-10-02 (06:20).
- **Nota**: fuente 52/58 del lote ia-local (entrada 52 del playlist). Review FrogNano 4B v2609 (Microsoft, fine-tune Qwen 3.5 4B): tests visión, Tetris, iteración cyberpunk, Asteroids; conclusión: similar al original, más robótico en redacción, MTP integrado, mejoras puntuales pero no reemplazo global.

## Qué es FrogNano 4B

- **Microsoft** vuelve a modelos de lenguaje: FrogNano 4B v2609 = **fine-tune de Qwen 3.5 4B**.
- "Modelo de propósito general preentrenado: lenguaje, razonamiento, codificación, agentes, multimodal".
- **Sin benchmarks ni comparativas oficiales** en la ficha (solo texto generado por IA aparente).
- Cuantización probada: **Q4_K_M + MM Pro visión** (Bartowski).
- **Integra MTP** (muchos fine-tunes no lo hacen o no dan velocidad).

## Tests realizados (llama.cpp, ajustes Qwen 3.5 4B estándar)

### 1. Visión: describir imagen
- **Funciona correctamente** pero **pierde naturalidad en redacción** vs Qwen 3.5 original.
- Qwen original: listas, emojis, negritas, respuesta "asistencial y fácil de entender".
- FrogNano: "más robotizado", texto sintético.
- **Error menor**: dice "barra de tareas Windows 11" siendo Windows 10.

### 2. Tetris HTML5 (con reasoning)
- **Igual que original** en calidad de código.
- MTP funciona bien → **velocidad muy rápida** (tamaño pequeño + MTP).
- "Lo único notado: pérdida de naturalidad al expresarse; en código, literalmente el mismo juego que el 4B original".

### 3. Iteración: "mejora estilo visual cyberpunk neón"
- **No mejora vs original**: "estamos en las mismas, no es tan bueno al iterar, ya no funcionó el juego".
- "Corrige el juego" sin indicar fallos → sigue igual (original sí funcionaba mejor iterando).

### 4. Asteroids HTML5 (sin reasoning)
- **Código se ve bien**, sin críticas.
- **Mejora puntual**: "uno de los pocos fine-tunes que no estoy seguro de que funcione peor".
- Detalle: movimiento siempre hacia mismo lado (bug), pero en general **sí hay mejora** en esta tarea vs original.

## Veredicto: "No pinta mal, no pinta bien, no reemplaza en todo"

> "Es un modelo que no digo que en todo sea superior al original, es prácticamente imposible que en todo sea superior, pero que quizá para algunas tareas sí haya mejorado y con ello pues es una opción interesante, que no va a reemplazar en todo, pero que en alguna cosa a lo mejor sí."

| Aspecto | FrogNano 4B vs Qwen 3.5 4B Original |
|---------|-------------------------------------|
| **Redacción/conversación** | ❌ Peor: más robótico, pierde naturalidad (datos sintéticos) |
| **Visión** | ~ Igual función, peor presentación |
| **Código primera vez (Tetris, Asteroids)** | ~ Igual o ligera mejora (Asteroids) |
| **Iteración / corrección** | ❌ Igual o peor que original |
| **MTP / Velocidad** | ✅ Bien integrado, rápido |
| **Calidad general** | "No pinta mal" — similar, con trade-offs |

## Contexto: fine-tunes con datos sintéticos

- Típico: **pierden naturalidad en redacción** (entrenados con datos sintéticos).
- Pueden ganar en **tareas específicas** (coding, reasoning) pero pierden en "asistencialidad".
- **Solo el uso diario real** dirá si mejora en contextos largos, razonamiento largo, uso agéntico.

## Cruces en la wiki

- Entidad: [[ia-uso-practico/nichonauta]] (fuente 25 en el lote).
- Modelo: [[qwen]] (3.5 4B base; FrogNano = fine-tune Microsoft v2609).
- Modelo: [[frognano]] (Microsoft, fine-tune Qwen 3.5 4B; Q4_K_M + MM Pro; MTP integrado; redacción más robótica; similar en código, mejora puntual en Asteroids; no reemplaza al original).
- Entidad: [[llama-cpp]] (backend, ajustes Qwen 3.5 4B estándar).
- Entidad: [[bartowski]] (cuantizador, proveedor Q4_K_M + MM Pro).
- Relacionado: fuente 28/58 (Ling 3.0 Tiny vs LFM 2.5 8B — duelo MoE chicos); fuente 46/58 (Ornith 1.5 9B vs Qwen 3.5 9B — fine-tune sí mejora agéntico); fuente 27/58 (Creé modelo MoE 0.1B — conversiones Nichonauta).