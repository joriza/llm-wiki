# WL-728 — ¿Qué es un perceptrón? Fundamentos de redes neuronales y simulación en Python (Bóson Treinamentos)

- **Fuente original**: `raw/wl/tramo-105/2026-11-20-o-que-e-um-perceptron-fundamentos-de-redes-neurais-e-simulacao-em-python.md`
- **Video**: https://www.youtube.com/watch?v=hd1J6mz8cHU
- **Canal**: Bóson Treinamentos (1.ª fuente; Fabio dos Santos, divulgación técnica pt/BR) · **Publicado**: 2026-11-20 · **Duración**: 30:56 · **Idioma**: es (ASR sobre voz en español con acento pt-BR; garbiñeos normalizados solo aquí; «BOSCH en entrenamientos» = Bóson Treinamentos)

## Síntesis

Microlección pedagógica correcta y bien estructurada sobre el perceptrón, la primera neurona artificial implementada (Rosenblatt, Cornell Aeronautical Laboratory, informe de enero de 1957 — enlazado como PDF libre de 33 páginas):

- **Historia completa en 3 hitos**: modelo MCP de McCulloch-Pitts (años 40, solo matemático) → perceptrón de Rosenblatt (1957, implementado EN hardware, con entradas luminosas) → el libro *Perceptrons* de Minsky y Papert (1969) como DEMOSTRACIÓN de límites (no resuelve funciones no lineales), factor del primer invierno de la IA → redes multicapa en los 80 como base de la IA actual.
- **Anatomía de la neurona artificial** con analogía biológica precisa: dendritas→entradas, cuerpo celular→suma ponderada + función de activación, axón→salida binaria. Conceptos bien definidos: pesos (w, de *weight*), sesgo (b, *bias*, ajuste del umbral de disparo), suma ponderada z, función escalón (dispara si z ≥ 0), frontera de decisión (conjunto de puntos donde z = 0), época (ciclo completo de entrenamiento), convergencia (errores a cero o umbral pequeño).
- **El límite bien puesto**: separabilidad lineal — AND sí, XOR no («imposible trazar una única recta»); capacidad limitada de una sola capa.
- **Simulación en Python** (Colab, código en GitHub del canal): el caso de uso ilustra la esencia del ML — «yo no sé cuál es la regla de aprobación; si la supiera, haría un if/else» — notas de 4 pruebas + asistencia normalizadas, tasa de aprendizaje 0,1, ajuste w += tasa×error×entrada, convergió en la época 53; los pesos finales SON el aprendizaje, y la predicción sobre alumnos nuevos no requiere conocer la regla (aprendizaje supervisado).
- **El puente a la IA moderna** (el mejor momento): «cuando ves un LLM de 100.000 millones de parámetros, gran parte son los pesos y sesgos calculados durante el entrenamiento» — «el gran tesoro de la IA moderna». Honesto sobre el alcance: el perceptrón mismo no se usa hoy; los conceptos sí.
- Canal veterano de divulgación técnica con materiales descargables y enlaces primarios (informe de Rosenblatt, libro de Minsky-Papert) — calidad alta, sin señales de content-farm.

## Cruces

- [[limites-de-los-llm]] — los «parámetros» del LLM como pesos+sesgos entrenados: desmitifica la caja negra con la unidad mínima.
- [[historia-de-la-tecnologia]] — el ciclo hype→invierno (1969)→renacimiento (años 80): genealogía de la IA como tecnología con inviernos.

Candidatas para consolidación (aplazada): **Bóson Treinamentos** entidad nueva ×1 (divulgación técnica pt/BR); hilo «anatomía mínima de la IA» (perceptrón→parámetros de LLM) con [[limites-de-los-llm]].
