# Resumen: Marcas de agua invisibles en la IA 2026: qué son y cómo evitarlas

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=HGWozEps8L8) (fuente 48/57 del lote IA-Recursos)
- **Canal**: Alan Daitch
- **Publicado**: 2026-08-20 · Duración 06:41
- **Raw**: `raw/ia-media-generativa/2026-08-20-marcas-de-agua-invisibles-en-la-ia-2026-que-son-y-como-evitarlas.md` (subtítulos automáticos, transcripción literal)

## Idea central

Claude se sumó (agosto 2026) a insertar una **marca de agua invisible** en todo el texto que genera: una firma estadística escondida en la elección de palabras, que un detector con la clave secreta lee y que viaja con el texto al copiar y pegar. La ingeniería es brillante, pero borrarla o esquivarla es fácil — y la conclusión es que solo atrapa al que copia y pega sin tocar nada.

## Contexto normativo

- El **artículo 50 del reglamento europeo de IA** (en vigencia desde el 2 de agosto de 2026) exige que el contenido generado por IA sea técnicamente detectable.
- La Comisión Europea armó un **código de transparencia voluntario** firmado por ~190 organizaciones (OpenAI, Google, Meta, Microsoft, Mistral, Cohere, Anthropic).
- El 11 de agosto de 2026 Anthropic anunció que todos los modelos de Claude lanzados desde esa fecha marcan su texto; los viejos se suman antes de diciembre; aplica en todo el mundo. Google lo tiene desde 2024 en Gemini con **SynthID** (publicado en Nature, probado con ~20 millones de respuestas sin degradación apreciable).

## Cómo funciona la marca

Los modelos no eligen la palabra siguiente de una única manera: hay un ranking de candidatas igualmente válidas («la reunión va a empezar/comenzar/arrancar»). En esa libertad de elección se esconde la firma:

- Una **clave secreta** combinada con las palabras del texto asigna un puntaje invisible a cada candidata; entre las opciones buenas, el modelo tiende a la de mejor puntaje.
- Una elección es casualidad; miles son una firma (analogía: un amigo que siempre elige la palabra con vocal cuando hay empate — invisible en un mensaje, obvio en mil).
- Analogía estadística: una moneda cargada que cae cara el 55% — en pocos lanzamientos no se descubre, en 10.000 sí.

## Los cinco agujeros que ve el autor

1. **La marca necesita libertad para existir**: citas literales, código, fórmulas y textos cortos no dejan elección libre (cambiar una palabra rompe la cita; sin opciones no hay señal). Vive en textos largos y creativos; desaparece en los precisos y cortos.
2. **Solo prueba que Claude tocó el texto**: no distingue si lo escribió entero o si corrigió tu borrador. El detector dice «aquí hubo IA» sin decir cuánta — «un alcoholímetro que da positivo sin decir si fue medio vaso o tres vodkas».
3. **Borrarla es trivial**: al vivir en la elección exacta de palabras, cualquier paráfrasis por otro modelo la destruye. Estudio forense de julio 2026 (846 corridas): dos métodos de watermarking perdieron la marca el 100% con una pasada, y SynthID (el mejor) el 98,3%.
4. **La API de detección de Anthropic empeora el 3**: con un detector oficial disponible, otro modelo puede reescribir en bucle chequeando contra el detector hasta que dé negativo, todo automático.
5. **No juegan todos**: xAI (Grok) ni los modelos chinos (DeepSeek) firmaron el código; y el open source no puede marcar — la marca se aplica en el servidor al generar cada palabra, y un modelo corriendo en tu propia máquina es tuyo.

Quinto problema adicional: la frontera se borra desde el otro lado — los humanos empezamos a escribir como la IA (palabras y estructuras favoritas de los modelos se nos pegan); detectores que miden estilo miden algo que ya no es exclusivo de las máquinas.

## Cuenta final

- El que quiere hacer trampa: pasa el texto por otro modelo y listo.
- El que usa modelos abiertos o chinos: nunca tuvo marca.
- El que escribe solo: puede dar positivo por pedirle a Claude que le corrija la ortografía.
- Solo queda atrapado el que copia y pega sin tocar una coma: «un cazador de vagos que encima son voludos». El problema de fondo: el texto es el formato más desnudo — una imagen tiene millones de píxeles donde esconder una firma; el texto son solo las palabras visibles, siempre falsificables. «Esto es una misión imposible».

## Cruces y observaciones

- Complemento crítico de la narrativa de transparencia: los detectores de IA (sin marca de agua) tienen el mismo problema de falsos positivos que se discute en [[evaluacion-de-llms]].
- Introduce el concepto de **watermarking estadístico por muestreo** (SynthID, familia de sistemas tipo Gumbel/soft watermark), útil como contexto técnico en la wiki.

## Notas sobre la fuente

Transcripción de subtítulos automáticos (yt-dlp), literal. Errores de reconocimiento corregidos aquí: «Cloud» por Claude, «Coer» por Cohere, «since ID/Synth ID» por SynthID, «DeepSync» por DeepSeek, «GROC» por Grok, «Daich» por Daitch, «la reunión va a…». Apertura tipo canal (suscribirse/like) excluida de la síntesis. Nota: se intentó antes la ruta ASR (faster-whisper small) por bloqueo de subtítulos, pero el raw literal ya estaba en disco; el ASR quedó en `.atl/raw_next_asr_hgw.md` (no ingestado).
