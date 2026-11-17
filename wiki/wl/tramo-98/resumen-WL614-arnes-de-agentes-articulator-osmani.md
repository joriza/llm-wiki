# WL-614 — No es el modelo, es el arnés: la ingeniería del arnés de agentes, explicada

- **Fuente original**: `raw/wl/tramo-98/2026-11-16-no-es-el-modelo-es-el-arnes-la-ingenieria-del-arnes-de-agentes-explicada.md` ([Vídeo](https://www.youtube.com/watch?v=1teeq-GaiZE))
- **Canal**: Articulator ES (españolización del artículo de Addy Osmani sobre harness engineering; transcripción manual; hilos de Viv Trivedi, Dex Horthy/HumanLayer, Simon Willison, Anthropic, Birgitta Böckeler) — 2.ª mano didáctica
- **Publicado**: 2026-11-16 · **Duración**: 19:06
- **Dominio**: ingeniería del arnés de agentes (candidato a agentes-de-codigo en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Síntesis de la disciplina emergente **harness engineering**: «agente = modelo + arnés; si no eres el modelo, eres el arnés».

1. **La ecuación y el contexto del término**: acuñado por Viv Trivedi; HumanLayer («casi todos los fallos de agentes son de configuración»), Anthropic (arnés para trabajos largos), Willison («agente = sistema que ejecuta herramientas en bucle»). El modelo es un chip en una placa: el arnés inyecta contexto (prompts, memoria, skills), controla el flujo (compactación, orquestación), actúa (bash, MCP), persiste (archivos, Git) y observa/verifica (tests, registros, capturas). Claude Code/Cursor/Codex/Aider/Cline = arneses; la superficie es tuya.
2. **El dato llamativo**: en Terminal Bench 2, Opus puntúa dentro de Claude Code muy por debajo que en un arnés a medida; el equipo de Trivedi subió del top 30 al top 5 cambiando solo el arnés. Causa: los modelos se post-entrenan acoplados al arnés con el que se entrenaron → sobreajuste; otro arnés mejor puede liberar capacidad sin usar.
3. **El trinquete** (hábito central): cada error del agente = señal permanente, no anécdota. Ejemplo Osmani: PR con test comentado fusionada sin querer → regla nueva en AGENTS.md («nunca comentes pruebas: bórralas o arréglalas») + hook pre-commit que busca marcas de desactivación + subagente revisor que trata pruebas silenciadas como bloqueantes. «Cada línea de un buen AGENTS.md debería rastrearse hasta algo concreto que salió mal» — solo añadir restricciones tras fallos reales, solo quitarlas cuando un modelo mejor las vuelve redundantes. AGENTS.md: <60 líneas (HumanLayer), «checklist de piloto, no guía de estilo».
4. **Diseño hacia atrás** (Trivedi): partir del comportamiento deseado y deducir la pieza; seis carencias → seis piezas: datos duraderos → archivos+Git; ejecutar → bash («la cocina entera» vs. un utensilio); sin romper → sandbox (comandos permitidos, red cortada, máquinas efímeras bien equipadas); aprender → memoria de archivos + búsqueda web + MCP (Context7 salva la fecha de corte); contextos largos → compactación + skills; multi-sesión → bucles Ralph + planificación + verificación. «Si no sabes nombrar el comportamiento que aporta, sobra».
5. **Context rot**: los modelos razonan peor a medida que la ventana se llena; tres técnicas (compactar, descargar salidas largas a archivo, skills con revelación progresiva) + cuarta de Anthropic para trabajos muy largos: **reinicio completo** reconstruyendo desde un archivo de traspaso — «más parecido a incorporar a un ingeniero nuevo que a memoria».
6. **Trabajo autónomo largo**: bucle **Ralph** (hook que intercepta la salida del modelo y reinyecta el prompt original en contexto limpio; el estado vive en archivos) → agente de una sesión pasa a muchas; planificación en archivo de plan con autoverificación; **separar planificador/generador/evaluador** (Anthropic: los agentes se autoevalúan al alza — «GANs para texto»); **contrato de sprint**: acordar «qué significa terminado» antes de escribir código — a Osmani «le evitó más desvíos que ningún cambio de prompt».
7. **Hooks**: separan «le dije» de «el sistema lo impone» — tipos/linter/tests tras edición, bloqueo de destructivos (rm -r, push forzado), aprobación de PR, formato al guardar; principio HumanLayer: «el éxito es silencioso y los fallos ruidosos». Riesgo de seguridad: las descripciones de herramientas/MCP son texto en que el modelo confía → inyección de instrucciones.
8. **Producción**: desglose estimado de Fareed Jang de Claude Code (bucle maestro + 7 capas); convergencia de arneses («los mejores agentes se parecen más entre sí que sus modelos»).
9. **El bucle arnés↔entrenamiento** (lo más interesante): «cada componente de un arnés codifica una suposición sobre lo que el modelo no puede hacer solo; cuando aprende, la pieza sale; cuando desbloquea algo nuevo, hace falta andamiaje nuevo» — ejemplo: Opus casi eliminó la ansiedad de contexto de Sonnet (los mitigadores de hace 6 meses = código muerto), pero el techo movido trae fallos nuevos (memoria de varios días, coordinación de 3 agentes, evaluadores de calidad de UI). El arnés es **un sistema vivo**, y el mejor no es el de entrenamiento sino el diseñado para tu tarea.
10. **Hacia dónde**: arnés como servicio (SDKs de Claude/OpenAI entregan bucle+hooks+sandbox de serie; el esfuerzo va a lo específico del dominio); problemas abiertos de Trivedi: orquestación paralela sobre un mismo código, agentes que analizan sus propias trazas para arreglar el arnés, y ensamblado just-in-time de herramientas/contexto — «el arnés empieza a parecerse a un compilador». Cierre: «construir buenos agentes es iteración; no puedes iterar sin una versión 0.1».

## Señales de triage

- **Fuente central del dominio**: síntesis fiel de un artículo clave (Osmani) con atribución completa de autores y datos concretos (Terminal Bench 2 top 30→5, AGENTS.md <60 líneas, Claude Code 7 capas — estimación señalada como tal).
- La disciplina descrita es, casi punto por punto, la metodología ODD de esta wiki («un error se arregla una sola vez» = trinquete; frontera committed = hooks; evidencia observable = fallos ruidosos): par directo para [[odd-metodologia]].
- Transcripción manual (sin ASR); 2.ª mano del artículo con cadena de fuentes nombrada; sin datos dudosos detectados; CTA final leve (comentar qué regla añadiste).
- Sin patrocinios.

## Cruces

- Consolidación aplazada: núcleo para [[agentes-de-codigo]] y [[odd-metodologia]] (trinquete ↔ «un error se arregla una sola vez» WL-600; hooks/sandbox ↔ guardrails WL-603; compactación/reinicio ↔ delegación cognitiva); par con WL-612 (arquitectura de asistente) y WL-611 (memoria/wiki como pieza del arnés).

## Veredicto de triage

La fuente más importante del tramo: síntesis completa de harness engineering con el mecanismo central (trinquete + bucle arnés↔entrenamiento) bien explicado y atribuido. Sin consolidación (aplazada).
