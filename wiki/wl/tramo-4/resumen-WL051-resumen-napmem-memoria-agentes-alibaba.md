# Resumen: Tu agente no debería recibir recuerdos: debería navegarlos (NapMem, Alibaba)

- **Fuente original**: `raw/wl/tramo-4/2026-11-09-tu-agente-no-deberia-recibir-recuerdos-deberia-navegarlos-napmem-alibaba.md` (WL-51, tramo 4)
- **URL**: https://www.youtube.com/watch?v=rl-a2bZ1vKA
- **Canal**: Articulator ES (subtítulos **manuales**; síntesis del paper **NapMem** — equipo Qwen/Alibaba + universidades de China y Singapur)
- **Publicado**: 2026-11-09 · **Duración**: 14:02 · **Idioma**: es (transcripción literal)

## La idea central

Invertir la recuperación de memoria: hasta ahora el acceso era **una función del sistema** (un trozo de contexto que alguien elige y entrega — «consumidor de pruebas seleccionadas por otro»); NapMem propone **navegación activa**: la memoria como espacio de acciones estructurado donde el agente decide *si* consultar, *a qué nivel de detalle* y *cuándo basta*. Ejemplo fundacional: «¿qué tuve antes, el Galaxy S22 o el XPS 13?» — la recuperación pasiva entrega notas insuficientes → «no lo sé»; el agente con herramientas busca las fechas de reserva vs entrega → respuesta correcta.

## La pirámide de memoria (4 niveles, mismo contenido con distinta abstracción)

1. **Conversaciones en bruto** (base): mensajes con contenido, autor, fecha e ID único — solo crece, nunca se reescribe; la prueba de mayor fidelidad.
2. **Registros de memoria**: frases compactas de 4 tipos (hechos, eventos, instrucciones, preferencias), cada una enlazada a los mensajes originales; ciclo de vida en dos pasos (extraer → guardar/descartar/actualizar/**fusionar** conservando fuentes).
3. **Hilos temáticos**: archivos con resumen e historia de temas evolutivos (proyecto, afición, relación); máx. 20; se revisan con >20 registros nuevos.
4. **Perfil** (cima): resumen global ≤2.000 caracteres, solo con lo que dicen los hilos — «si no hay pruebas, el campo se queda vacío antes que inventar»; se revisa con >50 registros nuevos.
- Índices vectoriales + keywords abajo; los dos niveles superiores son markdown legible. Todo enlazado «como los hilos de un tablero de detective».

## La navegación y el entrenamiento

- **5 herramientas**: 2 búsquedas (conversaciones/registros, híbrido keyword+vector, máx. 5 resultados), 2 accesos exactos por ID, 1 lector de archivos. Navegación bidireccional (perfil→detalle o detalle→resumen). **Límite: 4 pasos por pregunta** — si se pasa, fallo. Instrucciones: no adivinar; ante contradicción mandan las instrucciones; parar con pruebas suficientes.
- **RL con GRPO**: 4 intentos por pregunta, ventaja = nota − media del grupo (sin modelo juez por paso). Rúbrica: acertar usando memoria +1; acertar sin usarla 0; fallar tras consultar −0,5; fallar sin consultar o formato roto −1 — castiga más inventar.
- Modelo entrenado: **Qwen 9B** (ASR «CUEN»), benchmarks LoCoMo y PersonaMem (60/20/20 por usuarios); LongMemEval reservado como out-of-distribution.

## Resultados

- **Media 3 benchmarks: 62,7 vs Mem0 59,2, Zep 54, MemOS 49, MemoryOS 34,5.** LongMemEval (no visto): **80,3, el mejor**. PersonaMem (preferencias implícitas): 48, primero. En LoCoMo: mejor F1 pero Mem0 le gana por 1 punto en nota de juez (60,9 vs 59,9) — «a la par en hechos, se despega en personalización y OOD».
- **El headline**: la misma pirámide con modelos de 122B y 397B sin entrenar rinde peor (59,9 el más grande) — **aprender a usar la memoria vale más que ×40 de tamaño**.
- **No molesta cuando no hace falta**: en tareas sin memoria (ciencia, function calling, búsqueda visual) con herramientas activas, el entrenado consulta el 6,9 % (vs 34 % sin entrenar) y no pierde nivel.
- **Coste**: 4,8 GB de memoria vs Mem0 ×2, Zep ×3, MemOS ×5; latencia menor porque escribe menos (busca y para, en vez de razonar sobre texto recibido).
- **Ablaciones**: sin navegación activa 54; sin hilos+perfil 54; solo registros 45; **sin RL 48,4** (PersonaMem se derrumba de 48 a <21) — las tres piezas suman y «usar bien la memoria se aprende, no basta con explicarlo en el prompt».
- **Comportamiento aprendido**: el 9B empieza por registros (~90 %) mientras los grandes leen archivos (~50 % — «los grandes digieren resúmenes largos; los pequeños prefieren pruebas cortas»); de ~4 llamadas a ~2 por pregunta; precisión de resultados 21 %→35 %; usa varios niveles en 4/5 preguntas. Acierto ejemplar (buscar→nada→subir a hilo temático→Florida) y fallo instructivo (un evento de salsa convertida en «le encanta bailar salsa» — recuerdos relevantes insuficientes para la conclusión).
- **Límites declarados por los autores**: benchmarks incompletos para personalización real; **privacidad y olvido no resueltos** — «requisitos clave en cualquier sistema que recuerda cosas de personas»; falta estudiar el efecto del tamaño del modelo en la estrategia.

## Notas críticas

- La mejor fuente técnica de IA del tramo (junto con WL-47): paper con benchmarks, ablations honestas y límites declarados, explicado con claridad de manual; subtítulos manuales. El benchmark-juez es Claude (con verificación humana 99/100) — declarado.
- ASR: «CUEN» (Qwen), «LoCoMo/PersonaMem/LongMemEval/Mem0/Zep/MemOS/MemoryOS/AgeMem» (nombres reales de sistemas de memoria).

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** (arquitectura de agentes) — refuerza el clúster DeepSeek (WL-47) y [[deepseek-harness]].
- **Engram/memoria del propio proyecto**: NapMem es exactamente el modelo piramidal (hechos→temas→perfil, enlaces a fuentes, fusionar conservando fuentes, «vacío antes que inventar») que la wiki y su capa de memoria replican en texto — cruce metarreferencial fuerte para consolidación.
- **WL-48 (Sequoia)**: los «pilotos automáticos de servicios» necesitan exactamente este tipo de memoria de usuario de largo plazo — técnica ↔ producto otra vez.
- Tema-candidato: **memoria agéntica (pirámide + navegación activa + RL de uso)** — primera fuente del tema en la wiki.
