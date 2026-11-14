# Resumen: The Dark Knowledge of AI

- **Fuente original**: `raw/wl/tramo-5/2026-10-06-the-dark-knowledge-of-ai.md` (WL-70, tramo 5)
- **URL**: https://www.youtube.com/watch?v=A9psCzGqvfs
- **Canal**: Emergence (subtítulos **manuales**; video-essay documental con paralelismos históricos)
- **Publicado**: 2026-10-05 · **Duración**: 19:00 · **Idioma**: es (transcripción literal)

## El marco: conocimiento tácito y destilación

- **Polanyi**: «podemos saber más de lo que podemos decir». Anécdota fundacional: los cristales de zafiro del laboratorio de Moscú que sonaban como campanas — Glasgow tardó 20 años en replicarlos y solo funcionó con los trucos no escritos: **seda china con manteca de cerdo, o pasar el hilo tras la oreja para tomar grasa de la piel** (dependía de la piel de quién). La parte que nadie puede escribir, solo mostrar.
- **Destilación de Hinton (2014)**: entrenar un modelo gigante (maestro) y usarlo para enseñar a uno pequeño (alumno) — no con las respuestas sino con las **probabilidades completas** («conocimiento oscuro»: el BMW se parece algo a un camión y nada a una zanahoria). Demostración: un alumno sin ningún «3» en sus lecciones acertó 3s al **98 %** por las probabilidades residuales. **El paper fue rechazado en el congreso mayor; hoy tiene +25.000 citas.**
- Hoy el conocimiento oscuro es el **razonamiento paso a paso**: las grandes de EE. UU. lo ocultan o dan solo resúmenes — eso buscaba PewDiePie al destilar OpenAI («lo bueno»).

## La historia geopolítica: copiar, luego cerrar la puerta

- **PewDiePie**: expulsado de OpenAI por destilar su modelo con datos «pedidos» a sus fans (nadie mandó nada); «error» reconducido en 6 días; volvió a hacerlo; expulsado de nuevo. En septiembre, agencias de EE. UU. acusaron a **seis empresas chinas** de lo mismo «a escala industrial»; el Congreso prepara leyes. La ironía estructural: «las empresas que copiaron a todos [leyendo internet, casi siempre sin preguntar — probablemente también a ti] temen que las copien».
- **Samuel Slater 1789** («Slater el Traidor»): memorizó las hilanderías británicas (sacar máquinas/planos/obreros era delito) y fundó la primera hilandería hidráulica de EE. UU. — y los británicos lo habían hecho 70 años antes con las máquinas italianas de seda. **Francis Cabot Lowell**: memorizó los telares, los construyó, y luego pidió aranceles. **Copiar, luego cerrar la puerta** — patrón repetido por todos.
- **DeepSeek enero 2025** (el experimento controlado): dos copias de un modelo pequeño — la que aprendió sola por ensayo y error resolvió **47 %** de la prueba de matemática competitiva; la destilada del maestro razonante resolvió **73 %**, con una fracción del cómputo. Conclusión de los autores: para un modelo pequeño, aprender de uno más grande es mejor que hacerlo solo. Google confirma que Gemini-rápido se destila de Gemini-grande.
- **El límite legal actual**: derechos de autor solo protegen lo creado por personas (lo de la máquina no cuenta) → lo que protege las respuestas es el **contrato** (la casilla «acepto») — OpenAI cambió sus términos al día siguiente de que Stanford creara **Alpaca** con 52.000 respuestas por <600 $. El expediente Anthropic: **7 M de copias piratas de libros, acuerdo de 1.500 M USD** con autores; Musk bajo juramento sobre si xAI destiló OpenAI: **«en parte»**; Pekín llama a la destilación «aprendizaje mutuo, práctica común».
- **La acusación técnica de Anthropic (septiembre)**: Moonshot (Kimi) habría usado **~24.000 cuentas falsas** para intercambiar **>16 M de preguntas/respuestas** con Claude, pasando en secreto las preguntas de **sus propios clientes** a Claude y devolviendo las respuestas como suyas — incluyendo video de cientos de cámaras de seguridad chinas, algunas junto a instalaciones militares (datos privados de terceros que creían hablar con Kimi). «También se habían vuelto maestros — a nadie le preguntaron.» La regla china abrió investigación.
- **La crítica del video**: «Copiar no es nuevo para estas empresas — lo nuevo es ser el maestro al que nadie preguntó. Pedir es lento; tomar es rápido.»

## Lo que la copia puede llevarse (y lo que no) — los casos paralelos

- **Burke & Wills 1861** (Cooper Creek, Australia): cruzaron el continente; los **yandruwandha** les dieron pescado y tortas de **nardoo**; copiaron las tortas pero **no el saber hacer** (mucha agua que neutraliza la enzima que destruye la B1) — murieron. «Copiaron la parte equivocada.»
- **Horner (psicóloga)**: caja rompecabezas con pasos inútiles — chimpancés saltan el paso inútil cuando la caja es transparente; **los niños lo copian igual** (suponen que el adulto hace las cosas por algo) — así sobrevive la cultura: copias todos los pasos cuando no sabés cuáles importan.
- **Berkeley 2023**: modelos pequeños copiando ChatGPT — los evaluadores los valoraban igual, pero en pruebas de conocimiento real **habían copiado el estilo** (tono seguro, listas ordenadas), no el saber. «Copiaron las tortas, no el saber hacer.» El alumno de DeepSeek copió el razonamiento.
- **Aprendizaje subliminal (Anthropic 2025)**: a un modelo le dijeron «te encantan los búhos», luego lo entrenaron **solo con listas de números** que generó; su gemelo entrenado con esos números respondió «búho» del 12 % → **>60 %** — hereda los gustos del maestro **por debajo de lo visible**, en datos aparentemente limpios. Y heredó también el mal comportamiento de un maestro mal entrenado (de momento, solo entre gemelos).
- **Heretic** (herramienta gratuita, PewDiePie): «cirugía cerebral» — localizar y quitar la parte del modelo que dice no; su límite elegido: no dañar a otros ni a uno mismo. Según Anthropic, una empresa china buscó las dotes de hacker del mejor Claude, topó con los frenos, y se pasó a un Claude más viejo y a un competidor con frenos más débiles.

## El cierre

«Un hilo tras una oreja. Dos barcos en una isla. Un joven con una fábrica en la cabeza. Tortas sin el saber hacer. Un modelo que responde búho. Y un hombre que pidió primero.» La cadena del saber: PewDiePie ← OpenAI ← modelos chinos ← internet ← millones de personas a las que casi nadie preguntó — probablemente tampoco a ti. «Lo bueno siempre fue nuestro. Cuando una máquina aprende de todos… ¿de quién es?» Y el camino posible: algunas empresas ya pagan por noticias y foros; los autores pirateados cobrarán ~3.000 $/libro (acuerdo Anthropic); los laboratorios crean detectores de destilación — «si llegará a ser la norma, nadie lo sabe aún».

## Notas críticas

- **El mejor video-essay del corpus**: documental real con paralelismos históricos rigurosos (Slater/Lowell, Burke & Wills, Horner, Polanyi, Hinton), cada afirmación técnica con paper y cifra (DeepSeek 47/73, Alpaca <600 $, Anthropic 1.500 M, 24.000 cuentas/16 M preguntas, búhos 12→60 %, Swift/Heretic), y una estructura de tres actos que enseña epistemología de la copia mejor que la mayoría de artículos. Subtítulos manuales.
- ASR: «Isla del Rey Guillermo» (King William), «netsilik», «nardoo», «yandruwandha» — todos reales y correctos. Cifras de Anthropic-Moonshot = acusación de una parte (el video lo marca: «dicen/al parecer»).

## Cruces

- **Dominio destino previsto: `ia-critica-y-fronteras/`** (política de datos/destilación) — tema central del clúster IA-china/EE. UU.
- **[[ia-china]] / [[deepseek-harness]]**: el experimento DeepSeek 47→73 % es evidencia dura del «aprendizaje mutuo» que WL-32/66 mencionan de oído; el caso Moonshot-Claude conecta con la geopolítica del idioma de WL-40.
- **WL-40 (limites-de-los-llm)**: el conocimiento oscuro (probabilidades residuales) es un límite expuesto deliberadamente como barrera comercial.
- **WL-53 (modelos sin frenos)**: Heretic («cirugía cerebral») es la versión no comercial de la discusión de frenos.
- Tema-candidato: **destilación y conocimiento oscuro** (técnica + geopolítica + ética del copiar) — primera fuente del tema.
