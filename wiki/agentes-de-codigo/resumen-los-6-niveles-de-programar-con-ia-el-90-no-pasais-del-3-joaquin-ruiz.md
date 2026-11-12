# Resumen: Los 6 NIVELES de programar con IA (el 90% NO pasáis del 3)

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/`.
- **Fuente original**: `raw/agentes-de-codigo/2026-06-25-los-6-niveles-de-programar-con-ia-el-90-no-pasais-del-3-joaquin-ruiz.md` (video en español; subtítulos manuales, transcripción literal) — https://www.youtube.com/watch?v=acpGOnJ-iAk — Joaquín Ruiz — IA para Desarrolladores, 2026-06-25 (12:38).
- **Nota**: fuente 4/18 de la playlist «IA-Nuevas formas de trabajo». Didáctico: los 6 niveles se ilustran con un mismo ejemplo (algoritmo de Dijkstra en Python). El patrocinio del libro del autor («El motor de la inteligencia artificial») se excluye de la síntesis. La afirmación sobre Spotify (650 PRs/día generados, -90 % en migraciones, «los mejores desarrolladores ya no escriben código desde diciembre», vía Público/TechCrunch) y Anthropic (compilador de C con 16 agentes en paralelo, 100k líneas) se reproduce como la cita del autor — verificar contra fuentes antes de tratarla como hecho.

## Marco: los 6 niveles de Dan Shapiro («Five Levels», contando desde 0)

- **Nivel 0 — Copilot de toda la vida**: IA como buscador con esteroides; el código lo escribes tú (adaptando copy-paste). «El cuello de botella soy yo y lo rápido que tecleo».
- **Nivel 1 — Delegación de recados**: tareas concretas y aburridas a la IA (docstring, type hints, tests); el cuerpo del trabajo sigue siendo tuyo.
- **Nivel 2 — La IA escribe, tú lees**: le pides funciones completas desde cero; revisas todo lo que genera. Aquí «casi todo el mundo cree que ya llegó a la cima».
- **Nivel 3 — Diriges agentes y revisas PRs**: le das una tarea de verdad a un agente (Claude Code: refactor a módulo de producción, nueva rama, PR) y tu trabajo pasa a ser **leer el diff**. El código ya va a estar bien; lo que hay que cazar son **decisiones de diseño**: en el ejemplo, la IA decide lanzar una excepción si el nodo no existe — detrás de una API eso es un error 500 en cara del usuario. «Eso no lo decide la IA, lo decido yo como ingeniero».
- **Nivel 4 — Spec driven development**: no revisas tanto código; escribes **especificaciones detalladas** y solo evalúas si los tests pasan. «Tu lenguaje principal ya no es Python ni TypeScript, es Markdown». La Spec.md contiene el contrato exacto de la API, reglas innegociables de seguridad y rendimiento, y el comportamiento ante cada error.
- **Nivel 5 — Dark Factory**: entran especificaciones, sale software funcionando; ningún humano escribe **ni revisa** código. Regla dura: **no dejar que la IA escriba los tests de su propio código** («te va a hacer trampa: tests fáciles que su código pueda aprobar») — los escenarios de prueba los define el humano como contrato (ruta directa = coste 3; nodo inalcanzable = found=false; nodo inexistente = error tipado; ciclo = no colgar). «El que controla la verificación controla la fábrica». La propiedad intelectual ya no es la función (la máquina la escribe y la reescribe) sino **la Spec y los escenarios de prueba**.

## La trampa del nivel 2 (demostración en vivo)

La función generada «tiene buena pinta» pero: (1) **el comentario de salida esperada está mal** (coste 7 vs. real 10) — si se copia a un test, acabas de meter un test que valida un resultado equivocado: «esto es lo que pasa cuando dejamos a la IA escribir y validar su propio trabajo»; (2) **KeyError latente**: construye las distancias solo con las claves del diccionario, un nodo vecino-no-clave o un tipo en el destino peta en vez de devolver «no hay ruta». «Si me trago el coste 7 y el KeyError, en producción tardaré mucho más en arreglarlo que lo que me costó implementar».

## Contexto y diagnóstico

- Apertura con el **experimento METR**: desarrolladores senior con IA en proyectos conocidos tardaron **19 % más**, pero creían ir 20 % más rápido (respaldo al escepticismo sobre el vibe coding de Reddit «10× más rápido»).
- **Diagnóstico central**: el 90 % queda atrapado entre los niveles 2-3 («suben un poco, se agobian de revisar diffs y vuelven a bajar a "déjame que lo escriba yo"»). El **muro entre el 3 y el 4 tiene nombre: Spec driven development** — la instrucción ambigua («hazme algo bonito») produce código genérico e inseguro, como reformar la casa sin plano.
- Condiciones del salto: instrucciones no ambiguas (el modelo no te lee la mente; rellena huecos con genérico) y specs como plano del albañil.
