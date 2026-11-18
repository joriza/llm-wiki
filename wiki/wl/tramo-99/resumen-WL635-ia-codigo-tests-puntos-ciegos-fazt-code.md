# WL-635 — La IA escribe tu código y tus tests (y los dos tienen los mismos puntos ciegos)

- **Fuente original**: `raw/wl/tramo-99/2026-11-17-la-ia-escribe-tu-codigo-y-tus-tests-y-los-dos-tienen-los-mismos-puntos-ciegos.md` ([Vídeo](https://www.youtube.com/watch?v=uZ1QVeKvo_0))
- **Canal**: Fazt Code (1.ª fuente; demo con Claude Code/Opus 5.5, proyecto generado en 1,5 min)
- **Publicado**: 2026-11-17 · **Duración**: 20:49
- **Dominio**: testing con IA (candidato a agentes-de-codigo en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

La tesis central: **si la IA escribe el código y sus propios tests, ambos comparten los mismos puntos ciegos** — los tests confirman lo que el código ya hace (100 % de cobertura en verde ≠ correcto; demo: cambiar un símbolo y los tests ni se enteran). Tres técnicas que cobran sentido en la era de agentes (no son nuevas — «ya existían y ahora tienen mucho más sentido»):

1. **Test adversarial** (la más simple): el código va a otro agente en **sesión nueva** (sin la conversación — «si no, viene con los mismos sesgos del repositorio») con una sola misión: romperlo — casos límite, entradas raras, tests que pasan sin comprobar nada. Receta de 3 piezas: ¿quién escribe? ¿quiénes intentan romperlo? ¿y un **juez** que reproduce cada fallo y acepta/rechaza con explicación? Precedente real: Red Summit/Rust migration citada (cada cambio revisado por ≥2 agentes en sesiones separadas). Demo: 2 subagentes revisores en paralelo encontraron **13 fallos** no cubiertos (texto → 201, arreglos, notación científica, decimales, 17.99999 — para una edad); el juez rechazó uno correctamente (JSON.parse convierte «18.0» en 18 exacto). Después de las validaciones (con Zod como opción), los tests explotan en errores — señal de que encontraron casos reales.
2. **Property-based testing**: en vez de ejemplos concretos (3,1,2 → 1,2,3 — «los casos bonitos que el modelo tomó en cuenta al escribir el código»), una **regla que debe cumplirse siempre** («en cualquier lista ordenada cada número ≤ siguiente»; «un precio con descuento nunca es negativo ni mayor que el original») — la herramienta inventa cientos de casos para romperla y **reduce el fallo al ejemplo mínimo**. Origen: QuickCheck (Haskell, ~2000); hoy Fast-check en JS/TS (v4, activa desde 2017; integrable con Jest/Vitest) y Hypothesis en Python. Precedente de impacto: Anthropic usó Claude Code + Hypothesis en **+100 paquetes de PyPI — el 56 % de los reportes eran bugs reales**. Demo: la función `sort()` sin comparador ordena como texto (10,9,1 → 1,10,9) — el test de ejemplos no lo detectaba y fast-check lo encontró (y luego con −1/−2 en otra corrida). Cuándo usarlo: reglas de ida y vuelta (JSON↔objeto, cifrar/descifrar), validaciones/parseadores, cálculos sin límites (precios, impuestos, fechas), algoritmos (ordenar/buscar/deduplicar). Cuándo NO: código que solo une piezas (endpoint→servicio), UI, o «cuando no se te ocurre una regla real — si tenés que forzarlo, usá ejemplos normales».
3. **Fuzzing**: un fuzzer lanza miles de entradas raras/rotas («darle a un niño un teclado») — dos diferencias con property-based: sin regla (solo que no rompa/cuelgue) y **guiado por cobertura** (guarda las entradas que llegan a zonas nuevas y las muta para llegar más adentro). Herramientas históricas: AFL, libFuzzer, OSS-Fuzz de Google. Lo nuevo con IA: el modelo escribe los objetivos del fuzzer, lee fallos y propone arreglo; caso estrella citado: **Big Sleep** (Google Project Zero) encontró en oct. 2024 un fallo de memoria explotable en código de SQLite aún no publicado — «ni OSS-Fuzz ni las pruebas del propio SQLite lo habrían detectado, ni los investigadores tras 150 h de CPU de fuzzing». Demo con fast-check `fc.anything`/`fc.json`: 500 cuerpos al azar contra el endpoint — ninguno produjo 500 (porque la validación adversarial ya cubría; honesto al decirlo).
4. **Menciones finales** (panorama): test de mutación (cambiar `>` por `>=` y ver si los tests se enteran), tests diferenciales (código viejo vs. reescrito por IA), tests metamórficos (filtrar nunca debe aumentar resultados), **evals** (tests para modelos/agentes), red teaming (atacar tu propia IA), tests autorreparables. Cierre: «lo que importa es la estrategia debajo, no aprenderte un nombre».

## Señales de triage

- **Fuente técnica sólida y directamente aplicable a esta wiki**: la tesis (misma IA, mismos puntos ciegos = los tests que confirman no verifican nada) es exactamente la disciplina RDD de esta wiki (test escrito por quien implementa ≠ verificación independiente); el juez que reproduce fallos, la reducción al ejemplo mínimo y la demo con fallo real (sort como texto) son verificables y replicables.
- Datos citados con nombre (Anthropic + Hypothesis 56 %, Big Sleep/SQLite, QuickCheck, Red Summit — nombres ASR a verificar: «Red Summer» probablemente derivado de una migración real citada en la comunidad) — 2.ª mano parcial sin enlaces, señalado implícitamente por el formato divulgativo.
- La clasificación cuándo sí/cuándo no por técnica es el aporte práctico.
- ASR con garbiñeos normalizados solo aquí («Red Summer» → probablemente una cita del ecosistema Rust, «fasting» → fuzzing, «SO» → Zod, «hipótesis» → Hypothesis, «Cloud code/OPU 5.5» → Claude Code/Opus 5.5); raw intacto. Sin patrocinios; CTA de suscripción/asesorías leve.

## Cruces

- Consolidación aplazada: fuente central del clúster agentes para la próxima consolidación — cruces: [[odd-metodologia]] (test adversarial = verificación independiente; juez = revisión separada), WL-633 (el revisor adversarial que TRABIA al bucle — aquí funciona bien), WL-600 (deep-reviewer adversarial), WL-603/614 (evals, trinquete), WL-602 (tokens).

## Veredicto de triage

La mejor fuente técnica del tramo 99: tesis correcta y central para la metodología de esta wiki, tres técnicas bien demostradas con fallo real, panorama honesto. Sin consolidación (aplazada).
