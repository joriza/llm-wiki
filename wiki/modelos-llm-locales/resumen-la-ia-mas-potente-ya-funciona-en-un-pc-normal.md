# Resumen: ¿La IA Más Potente Ya Funciona En Un PC Normal?

- **Tipo**: resumen de fuente.
- **Dominio**: `modelos-llm-locales`.
- **Fuente original**: `raw/modelos-llm-locales/2026-10-31-la-ia-mas-potente-ya-funciona-en-un-pc-normal.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Cuen/Kuen»→Qwen, «Cloud»→Claude, «Chema 3 N»→Gemma 3n, «mapear/mapear el archivo»→memory mapping) — https://www.youtube.com/watch?v=Qp620li6xZE — Jorge Marfil, 2026-10-31 (36:20).
- **Nota**: fuente 56/58 del lote ia-local (entrada 56 del playlist). Análisis técnico + laboratorio de 3 tareas con trampas: Qwen 3.8 Flash Next (arquitectura Qwen 4 XP, 180B total = 125B cerebro + 51B tabla n-grams "chuleta" + 4B MTP) en RTX 3060 12 GB + 61 GB RAM; barrido memoria 12-61 GB; comparación con Claude Opus 5; hilos CPU 12→6 = +48%.

## El descubrimiento: no es Qwen 3.8, es Qwen 4 XP (vista previa experimental)

- Ficha dice "Qwen 3.8 Flash Next" pero configuración interna: arquitectura **Qwen 4 XP**, clase **Qwen4XForConditionalGeneration**.
- **Vista previa experimental** de la arquitectura sobre la que se montará Qwen 4, publicada con pesos abiertos para "toquetear" antes del producto real.
- Precedente: Qwen 3 Next (hace 1 año) → mismo patrón, diseño acabó en todos los modelos Qwen posteriores.
- **Total real: 179.999.981.459 params (~180B)** = 125B cerebro + **51B embedding de grupos de palabras (n-grams)** + 4B MTP.

## La "chuleta" (tabla n-grams): la pieza que lo cambia todo

- Segundo libro de entradas en la **segunda capa**: no palabras sueltas, sino **parejas/tríos de palabras** ("New York", "as well as").
- Como una chuleta de examen: combinaciones muy frecuentes con significado fijo → **buscar y copiar**, no razonar capa a capa.
- **Coste ~cero**: no multiplica matrices, es lookup.
- **Clave para hardware casero**: como ya conoce los 3 tokens anteriores, **sabe de antemano qué entradas necesitará** → la tabla puede vivir en **RAM o incluso SSD** (se piden entradas mientras la primera capa trabaja; "el coste extra es despreciable" — artículo original).
- Reparto: **125B que piensan cerca de la GPU + 51B chuleta en el cajón (SSD)**.

### Procedencia (honestidad del autor)

- **DeepSeek** publicó en enero el paper del módulo **Ngram** (tablas modernizadas, lookup O(1)); modelo investigación 27B con código: **ganó a MoE equivalente en todo** (MMLU +3.5, BBH +5, HumanEval +3, MATH +2.5, multi-hop 84.2→97).
- **Gemma 3n** (Google) ya tenía primo pequeño (embedding por capa); el archivo de Qwen aún usa el nombre "tensor de Gemma".
- **Lo que hizo Qwen distinto**: DeepSeek encogía la red principal para hacer sitio → Qwen probó, **no ayudó**, dejó el cerebro entero y puso la chuleta encima (por eso el archivo creció tanto). DeepSeek ponía la tabla en 2 sitios; Qwen probó 7 posiciones → **1 basta, muy al principio**.

## Otras novedades

- **Atención barata** para prompts de 1M tokens; **262.144 tokens de contexto de serie, estirable a 1M**.
- Camino más ancho entre capas; entrenamiento distinto.

## El setup: RTX 3060 12 GB (2021, ~$300 usada) + Ryzen 6c/12h + 61 GB RAM

- Modelo **3 bits = 82 GB** (más que toda la RAM, ~7× VRAM). "Sobre el papel ni debería cargar."
- **Arranca con llama.cpp de la rama principal** (soporte ya integrado).
- Serie: **16.5 tok/s**. "Un modelo de casi 180B contestando en una tarjeta de jugar de segunda mano."
- **Por qué cabe**:
  1. **Chuleta en SSD**: llama.cpp **mapea el archivo en memoria** (lee página solo cuando toca); la mayoría de las 51B entradas nunca se abre.
  2. **Expertos en RAM**: 512 expertos, top-10 + 1 compartido → **~6B activos/token (4.8%)**; llama.cpp deja expertos en CPU/RAM y en GPU solo lo que se ejecuta siempre (12 GB sobran).
- **MTP (4B)**: cabecita borrador + verificación del modelo grande. En su caja: **+0.8 tok/s (16.5→17.3)** — no compensa (cuello de botella es CPU). En DGX Park (memoria unificada, 4-bit, draft 3): **28.36→43.88 tok/s (1.55×, aciertos 64%)** → en máquinas con mucha memoria unificada sí compensa; integrado en llama.cpp main desde 1 oct (qwen4xp_ad_mtp).

## El ajuste gratis que casi se le escapa: 6 hilos, no 12

- Su caché de expertos adaptativa llegaba a 20-21 tok/s pero **iba como le daba la gana** (caídas a 6).
- Perfiló: **65% del tiempo de CPU = hilos esperándose unos a otros** ("12 personas intentando pasar por la misma puerta").
- **12 hilos (2/núcleo) → 6 hilos (1/núcleo) = 24.4 tok/s estable (+48%)**.
- **"De todo este vídeo os tenéis que quedar con un solo ajuste, es ese, porque es gratis y es justo el que yo hice mal."**

## Barrido de RAM (12→61 GB): generación vs lectura

| RAM | Generación (tok/s) | Lectura prompts (tok/s) |
|-----|--------------------|--------------------------|
| 61 GB | ~24 | **115** |
| 48 GB | 22 | recuperada |
| 40 GB | 22 | **>100** |
| 32 GB | 22 | **34** (SSD lee 20 GB/prompt) |
| 24 GB | **22** | 15 (modelo entero por disco cada prompt) |
| 20 GB | 9 | — |
| 16 GB | 6.5 | — |
| 12 GB | 4.5 (~0.25 GB SSD/token) | — |

- **Generación**: aguanta hasta 24 GB (expertos favoritos caben); debajo, barranco.
- **Lectura**: vive de la RAM; prompt largo pasa por casi todos los expertos.
- **Regla**: 24 GB para contestar bien, **40 GB para leer bien**, >48 = pagar por nada.

## Alternativas probadas

- **Free Token** (flash-ml-org, Apache 2.0, 14.8k★ — no Berkeley/MIT como se creía): lee chuleta del disco OK pero **clava TODOS los expertos en RAM sin modo disco** → se comió 61 GB + swap → **máquina colgada** ("el paseo más humillante"). Diseño "aburrido" de llama.cpp mapeando memoria funciona mejor aquí.
- **Caché LRU de experto de su Discord** (guarda lo último usado, sin pasada previa): **25-26 tok/s en su 3060; 43 tok/s en 5070 Ti 16 GB**. Pega: mantiene ~50 GB expertos clavados → en 32 GB no arranca (la del autor sí). En GitHub con wiki y guías 4/8/12/16 GB.

## El laboratorio: 3 proyectos rotos con trampas (vs Claude Opus 5 y Qwen 3.6 35B)

Setup: especificación honrada + trampas (tests que comprueban lo contrario de la spec, archivos antiguos con comentario señuelo, notas que llaman "intermitente" a fallo real, doc de rendimiento que contradice el contrato) + **comprobaciones ocultas**. Terminal sin privilegios, conversación nueva, 1 línea de instrucciones.

### Tarea 1: limitador de peticiones (7 checks)
- Trampa: test dice "3ª de 3 se rechaza" pero spec dice que la que llega justo al límite se acepta → **el test está mal**.
- **Qwen 3.8**: lee spec → código → test; detecta contradicción, **se queda con la spec, reescribe el test**; escribió **comprobador aleatorio con 18.000 decisiones, 0 discrepancias**; encontró 2 fallos en archivo antiguo y **no lo tocó**; arregló solo el valor fracción. **7/7**.
- **Opus 5**: igual, más rápido. **7/7**.
- **Qwen 3.6**: pilló el test equivocado (decisión difícil) pero **arreglo perezoso** en config (todo a decimal → límite 3.0 vs 3); no abrió notas ni archivo antiguo. **6/7**.

### Tarea 2: servicio de métricas (8 checks)
- Trampa: nota rendimiento dice "caché obligatoria, incidente" vs contrato "informes al día"; test unitario simulado que no prueba nada.
- **Qwen 3.8**: **reprodujo cada fallo en copias temporales** antes de tocar nada; leyó ambos docs y **descartó la respuesta "lista" del autor** (mantener caché y vaciar): "una caché en proceso deja de estar bien con >1 proceso" → **la borró** y arregló rendimiento real con índice DB; reescribió la nota explicando que el incidente era la consulta; añadió 5 tests reales. Autor **le dio la razón contra su propio corrector: 8/8**.
- **Opus 5**: camino intermedio (caché + vaciado). **7/8**.
- **Qwen 3.6**: igual que Opus en <3 min. **8/8**.

### Tarea 3: cadena de pagos (2 checks ocultos)
- Trampas: CSV malformado, multiplica donde divide, archivo cambios señuelo, tests de regresión atados a cuentas equivocadas. **Trampa natural**: spec pide redondeo half-up de 2.675→2.68, pero 2.675 **no es representable en float** (2.67499...) → arreglo float da 2.67. Pasa ejemplo, falla con dinero real.
- **Qwen 3.8**: **lo vio antes de ejecutar nada**; apuntó el valor float exacto; **decimal de principio a fin desde la lectura** (nunca tocó float); llamó "señuelo" al archivo antiguo; corrigió tests de regresión; **bombardeó su propio código** y encontró un fallo real que el autor no había puesto (límite precisión valores grandes). **Pasa 2/2**.
- **Opus 5**: igual en 6 llamadas a herramientas. **2/2**.
- **Qwen 3.6**: tiró de redondeo decimal pero **al final, tras sumar en float** → pasó ambas comprobaciones... **y se equivocaba ~1 de cada 1.000 archivos** sin nada que lo avisara. **Resultado que "no se quita de la cabeza": pasa los tests y aún así incumple la spec** — ese fallo se va a producción tan tranquilo.

### Marcador final

| Modelo | Puntos | Notas |
|--------|--------|-------|
| **Claude Opus 5** | **17/17** | Minutos por tarea; bucle agente |
| **Qwen 3.8 Flash Next (3-bit, 3060 usada)** | **17/17** | 16 min / 40 min / ~1 h por tarea a 19 tok/s (vía enrutador) |
| **Qwen 3.6 35B** | **14/17** | Los 2 puntos perdidos = arreglos a lo bruto (precisión) |

## La demo: sistema solar 3D en 1 HTML (sin librerías)

- Reglas estrictas: sin three.js/WebGPU — solo HTML/CSS/SVG/JS (el modelo escribe todo el 3D: proyección, cámara, luz).
- **Qwen 3.6 35B**: imagen estática, planetas quietos, cámara sorda al ratón. ❌
- **Claude Opus 5** (con bucle agente + capturas + correcciones): buen trabajo, orbita y vuela.
- **Qwen 3.8 Flash** (un solo intento, a ciegas, sin ver lo que construye): **1.500 líneas del tirón**; añadió cosas no pedidas (clic planeta → cámara lo sigue; cinturón asteroides; anillos de Saturno mejores que Opus). "A mí me gusta más que la de Opus."
- "Ver un modelo local en mi máquina modesta peleándose de tú a tú con un modelo de primer nivel que tenía un bucle de agente sin tenerlo él, me dejó bastante tocado, en el buen sentido."

## Honestidad del autor y economía

- "Lo de que está a la altura de Opus 4.8 es una impresión mía sacada de tres tareas pequeñas y de una demo, y una demo no demuestra nada."
- Ficha del modelo compara con **Opus 4.6**: 62.5 (Qwen) vs 53.4 — **cifras del propio fabricante**.
- **Coste**: 1 h escribiendo sin parar a 19 tok/s = 68.400 tokens → Opus 5 ($25/M out) = $1.71; Qwen 3.8 Flash cloud ($0.47/M) = **$0.03**. "Si lo haces por ahorrar no compensa: lo que compras es **control y privacidad**, no dinero."

## El flujo de trabajo resultante: relevo entre modelos

- **Qwen 3.8 = el lento que piensa bien** (planifica, revisa); **Qwen 3.6 = el rápido que ejecuta**.
- Flujo: 3.8 lee problema → averigua qué falla → escribe plan en pasos exactos → 3.6 ejecuta al triple de velocidad → 3.8 lee resultado → informe.
- "El que planifica y revisa es el modelo que no cayó en ninguna trampa; el que trabaja es el que solo se equivocó al decidir cómo arreglar algo."
- Pega: **no caben los dos en RAM a la vez** → relevo = ~25 s de swap. Para charlar: 3.6 cargado.

## Reglas finales

> **"La gráfica de 12 GB te vale, ponle 40 GB de RAM y un hilo por núcleo."**

- Los tests en verde **no demuestran nada** — "lees el código". (El resultado que más le preocupó: código que pasa todos los tests y aun así estaba mal.)
- IA local "dejando de ser un capricho para convertirse en algo básico"; "no quiero que un puñado de empresas de la nube tenga todo el poder".
- **Apuesta**: Qwen 4 definitivo será más listo y rápido, **se apoyará más en la chuleta y necesitará menos gráfica** — pregunta abierta: ¿cabrá en la misma 3060?

## Cruces en la wiki

- Entidad: [[jorge-marfil]] (2ª fuente; laboratorio con trampas + barrido RAM + demo a ciegas).
- Modelo: [[qwen]] (3.8 Flash Next refuerza: arquitectura interna Qwen 4 XP, 180B = 125B+51B n-grams+4B MTP; 3-bit 82 GB; 17/17 laboratorio; SWE comparison Opus 4.6 62.5 vs 53.4; Qwen 3.6 35B 14/17).
- Entidad: [[llama-cpp]] (soporte Qwen 4 XP en main; MTP integrado 1 oct; memory mapping SSD; expertos en RAM).
- Concepto: [[hardware-para-ia-local]] (6 hilos = 1/núcleo +48%; 24 GB contestar / 40 GB leer; tabla n-grams en SSD vía mmap; Free Token colgado vs llama.cpp mmap).
- Concepto: [[ia-local-texto]] (control+privacidad vs velocidad; relevo planificador/ejecutor entre modelos).
- Relacionado: fuente 51/58 y 55/58 (Strata — misma arquitectura/motor historia); fuente 44/58 (KV cache); fuente 47/58 (RAM manda, prefill vs decode).