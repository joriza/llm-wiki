# Resumen: Hito del MIT: una IA ha mejorado a otra sin entrenarla

- **Fuente original**: `raw/wl/tramo-7/2026-11-03-hito-del-mit-una-ia-ha-mejorado-a-otra-sin-entrenarla.md` (WL-89, tramo 7)
- **URL**: https://www.youtube.com/watch?v=ea4cyoDURvc
- **Canal**: iabro
- **Publicado**: 2026-11-03 · **Duración**: 11:20 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## Tesis central

Cuatro investigadores del MIT usaron **GPT-6 «Astra»** (OpenAI) para leer, reparar y fabricar redes neuronales trabajando directamente sobre sus **pesos** — sin re-entrenamiento. Divulgación rigurosa con letra pequeña bien marcada: lo demostrado es «quitar obstáculos, no añadir capacidad», y el procedimiento fue programación iterativa (20+ horas), no lectura intuitiva de pesos.

## Las tres pruebas

1. **Leer**: cuatro redes pequeñas idénticas por fuera (17.253 números cada una, entrenadas en Breakout, Pong, Pac-Man y Freeway) entregadas sin etiquetas — Astra identificó los cuatro juegos; en uno dedujo la pala viendo la concentración de pesos en la fila inferior.
2. **Arreglar**: un agente entrenado 1.000 M de intentos estancado en un mínimo local (acelerar a tope contra una rampa); con los pesos + un video del fallo, Astra tocó el 3,5 % de los pesos escribiendo un atajo (marcha atrás + carrerilla) → 1024/1024.
3. **Fabricar**: reglas de Breakout + red con pesos a cero, sin entrenar ni probar; Astra razonó qué debía calcular cada capa y escribió los números de una vez → 517 puntos vs 25 de la red equivalente entrenada 500 M de veces (en otros dos juegos más difíciles quedó por debajo del entrenado más tiempo).
- **Caso real con lenguaje**: **Qwen** (800 M de parámetros) entraba en bucles en problemas difíciles (9/10 respuestas cortadas); Astra, con entorno de programación y 50 pruebas, localizó el bucle en dos capas y restó su contribución — tocó 131.000 números (0,016 %) → matemáticas de 8/100 a 48/100. **Hugging Face lo reprodujo al día siguiente** (51/100) y publicó el modelo. Con **Gemma** (que casi no se atasca) la mejora fue marginal (6,8→7,7): no le enseñó matemáticas a Qwen, le soltó el freno de mano.

## Reacciones y escepticismo (bien cubiertas)

- Adam Karvonen: Astra no lee pesos «a ojo» — programa, usa técnicas existentes y tardó 20+ horas; además **falló** al detectar por los pesos un modelo entrenado para ser sycophant.
- Jürgen Schmidhuber: ya en 1991 había redes que modificaban pesos de otras. Nil Nanda (DeepMind): «es interpretabilidad de toda la vida», aunque admitió que Astra lo hace mejor de lo esperado.
- Marco de caja negra: Hanna Fry («enormes listas de números que producen inteligencia — cómo, no lo sabemos»), Dario Amodei sobre interpretabilidad mecanicista; analogía del motor con millones de tornillos girados a ciegas.
- Título del paper («chispas») y siguiente paso declarado por los autores: que el mecánico abra **su propio** motor — el tema recursivo de la «explosión de inteligencia», presentado con mesura («ni la caja negra ha muerto ni el entrenamiento tiene los días contados»).
- Si escala, cambia: (1) auditoría interna de modelos antes del despliegue (fallos/trampas ocultas), (2) reparación quirúrgica sin re-entrenar (meses y millones ahorrados), (3) auto-mejora.

## Notas críticas / ASR a corregir

- «Quen» = **Qwen**; «GPT-6 Astra» y «Astra» = nombre del modelo asistente según el canal (verificar denominación real en el paper); «Nil Nanda» = **Neel Nanda**; «Adam Karvonen» correcto; «Freeway» correcto (Atari).
- Divulgación de calidad: cita fuentes concretas (podcast de DeepMind, repro de Hugging Face, titulares escépticos), distingue demostrado de especulado, excluye el autopromocional (mención del libro del autor, fuera de la síntesis).
- Los números exactos (1024/1024, 517 vs 25, 48/100) son tal como los narra el video — verificar contra el paper antes de citar en páginas de concepto.

## Cruces

- **Dominio destino previsto: `ia-critica-y-fronteras/`** (frontera de capacidades/interpretabilidad; también encajaría en ia-uso-practico — decidir en consolidación).
- **[[destilacion-conocimiento-oscuro]] / WL-70**: familia directa — mover conocimiento entre redes sin re-entrenar (destilar ≠ reparar, pero mismo eje «el conocimiento de una red manipulable por otra»).
- **WL-75 / [[ia-como-reconstruccion]]**: tercera fuente del tema «IA que opera sobre el trabajo acumulado de otros» (tablillas cuneiformes: reconstruir lo roto; acá: reparar pesos opacos).
- **[[qwen]] y [[gemma-4]]**: entidades existentes tocadas por el experimento (Qwen reparado; Gemma como control) — cablear en consolidación.
- **WL-53 (límites de la IA) / WL-89 auto-mejora**: contrapunto exacto — el «siguiente paso» declarado por los autores es el escenario que WL-53 relativiza.
- Tema-candidato: **IA-opera-sobre-IA** (reparar/leer/fabricar pesos; con [[hardware-agentico-mcp-first]] como capa de supervisión práctica).

## ADVERTENCIA

Divulgación de alta calidad pero de segunda mano: cifras y nombres («GPT-6 Astra») según el canal; el paper del MIT (título «chispas») es la fuente a citar.
