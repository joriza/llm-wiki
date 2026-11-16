# WL-269 — «Todo el machine learning en un solo video: los 6 modelos que usa tu empresa, escritos en Python» (Código Espinoza)

- **Fuente original**: `raw/general/2026-10-07-todo-el-machine-learning-en-un-solo-video-los-6-modelos-que-usa-tu-empresa-escri.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=n_lfGiKs3qQ · Canal Código Espinoza - IA y Machine Learning · Publicado 2026-10-07 · 16:47 · Subtítulos automáticos es
- **Tramo**: 39, fuente útil 2/5 (posición 81 de 4686; WL-268 = skip `.no-subs`)
- **Dominio destino sugerido** (S4, sin dominios nuevos): general o ia-uso-practico (educación técnica ML clásico; cruces con el cluster programación/IA)

## Qué es

Divulgación técnica (nivel introductorio, orientada a perfiles de negocio) que reduce el machine learning clásico sobre tablas a **seis patrones**: regresión (¿cuánto?), clasificación (¿quién se va?), clustering (¿qué tipos de cliente hay?), detección de anomalías (¿qué factura huele mal?), recomendación (¿qué sugerir?) y series de tiempo (¿cuánto en diciembre?). Todo con pandas + scikit-learn (statsmodels para el sexto), con scripts de 17-28 líneas cuyos datos son **sintéticos generados con semilla fija** (aclaración explícita del autor).

## Puntos clave

- **Trampas de evaluación** (hilo conductor del video): exactitud engañosa sin línea base (82 % cuando el 41 % de clientes ya se iba → un modelo tonto acierta ~59 %); recall vs. precisión según el costo de cada error; el scaler es obligatorio en K-means; K-means **siempre** devuelve los K grupos pedidos, existan o no en el negocio; el parámetro `contamination` de Isolation Forest fija de antemano cuántas alertas habrá.
- **Prueba de honestidad del recomendador**: la primera versión daba 87 % porque evaluaba con la compra escondida incluida (fuga de datos); recalculando sin ella, 82 %. Además, el arranque en frío no tiene solución elegante: recomendar lo más vendido es respaldo legítimo.
- **Series de tiempo**: corte por fecha (3 años de train, el 4.º escondido) porque mezclar al azar deja al modelo «espiar el futuro»; descomposición multiplicativa con tendencia y estacionalidad; error 1,7 % posible solo porque la serie sintética es «de manual».
- **Tesis central — comparar contra lo tonto**: el recomendador le gana al top-3 de más vendidos (82 vs 39 %), el modelo de series le gana a «repetir el mismo mes del año pasado» (1,7 vs 9,3 %), pero una regla `if` sencilla **le ganó** a Isolation Forest en detección de facturas raras (5/5 con cero falsas alarmas vs 6 falsas) — con la salvedad honesta del autor de que la regla se escribió sabiendo las anomalías.
- **Cuándo NO usar ML**: cuando un `if` resuelve, con ~40 filas (el modelo memoriza), y cuando el dato es texto libre (ahí toca un modelo de lenguaje, no estos seis).
- **Pregunta cero**: «¿alguien va a hacer algo distinto con la respuesta?» — su opinión: la mayoría de los proyectos de ML fallan porque nadie decidió qué hacer con el resultado.
- Marco de decisión de 4 preguntas (¿respuesta en el pasado? ¿número o categoría? ¿hay calendario? ¿objetivo sugerir?) + 4 casos de oficina resueltos sin código.

## Salvedades de triage

- Explicación pedagógica de primera mano con código ejecutable del propio autor; métricas reales pero **sobre datos sintéticos** (declarado con claridad — punto fuerte del triage).
- Regla de negocio versus modelo: el ejemplo «la regla le gana» está construido con la respuesta conocida; señalado en el propio video.
- Scripts en «Patreon público» del canal — marco comunitario leve.
- Cita de la encuesta Kaggle 2020 (regresión lineal/logística como más usadas) de 2.ª mano sin enlace.

## Cruces sugeridos

- Educación técnica en IA: WL-31 (IA en clase), WL-194 (evaluación con IA), dominio ia-uso-practico (sin página de concepto por umbral).
- Cluster agentes/código y promesas de IA: WL-228 (context rot), WL-252 (SQL, rigor técnico divulgativo similar).
- Tema «línea base tonta / evaluación honesta» cruza con WL-249 (benchmarks autocreportados sin metodología) y WL-257 (encuesta SO, 2.ª mano).
