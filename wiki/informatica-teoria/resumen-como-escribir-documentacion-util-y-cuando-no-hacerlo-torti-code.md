# Resumen: Cómo escribir documentación útil (y cuándo no hacerlo)

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-10-06-como-escribir-documentacion-util-y-cuando-no-hacerlo.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=hybyw-qnhgM — Torti Code, 2026-10-05 (18:52).
- **Nota**: fuente 16/20 del lote informatica-teoria; octava fuente del canal Torti Code en el dominio. Nota de metadatos: fecha de publicación 2026-10-05, un día distinta al nombre del archivo — mandan los metadatos. Sin enlaces cruzados todavía (consolidación aplazada).

## El caso de apertura: el doble cobro invisible

Un agente de IA pide que los pagos fallen menos en una app de venta de boletos de bus. Encuentra algo extraño en la función de pagos con tarjeta: si el proveedor tarda en responder, el código no reintenta. Parece un descuido; agrega tres reintentos y los tests pasan; el revisor aprueba. Una semana después, varios clientes ven su boleto **cobrado dos veces**: el proveedor a veces cobra aunque la respuesta no llegue a tiempo — el código cree que falló y reintenta. Alguien había quitado los reintentos **a propósito**, pero esa persona ya no estaba en el equipo y la razón no quedó escrita. El agente hizo lo que haría cualquiera sin conocer la historia. **Ese es el propósito de la documentación: responder por escrito las preguntas de quien no puede preguntarte** (un compañero nuevo, una empresa que integra tu API, tu yo de dentro de 6 meses — y ahora, también un agente de IA).

## Los cuatro tipos de documentación (Diátaxis)

Documentar es dejar por escrito lo que otra persona necesita para **usar, cambiar o entender** tu software sin tenerte que preguntar: README, guías, descripciones de API y comentarios. No en un solo documento gigante: la misma persona necesita cosas distintas según el momento (aprender el primer día; pasos, no teoría, bajo presión a las 11 p.m.; un dato preciso al conectar una API; entender el porqué antes de tocar algo delicado). La analogía del parque (la guardaparques novata Inés, la jefa Rosa que se jubila):

- **Tutorial** = la ruta de bienvenida: lleva paso a paso a alguien nuevo a lograr algo real (p. ej. una compra de prueba en la API de boletos). Está bien escrito si alguien que no conoce el proyecto lo termina sin ayuda y ve un resultado en cada paso.
- **Guía (how-to)** = la tarjeta plastificada de tormenta: una tarea concreta en pasos numerados («cierra el sendero norte: 4 pasos») para quien ya conoce el proyecto y tiene apuro. El título declara el objetivo y cada paso es una acción.
- **Referencia** = el mapa con distancias y alturas: cada operación de la API, qué recibe, qué devuelve y qué errores responde, siempre en el mismo formato y, si es posible, **generada desde el código**. Nadie la lee de tapa a tapa: se busca un dato.
- **Explicación** = el cartel de la laguna: se lee de principio a fin y explica **cómo y por qué** el sistema está construido así.

El esquema se llama **Diátaxis** (adoptado por Canonical/Ubuntu) y su consejo central es **no mezclarlos**: una guía que explica desde cero hace perder el tiempo al apurado, y un tutorial que salta pasos abandona al que aprende. El **README** es el cartel con flechas de la entrada: qué hace el proyecto, cómo levantarlo en pocos pasos, dónde está el resto y a quién preguntar — **distribuye, no contiene todo**.

## El «por qué»: comentarios y registros de decisiones

- **Dos tipos de comentario**: encima de la función, qué hace y cómo usarla (lo leen quien la llama sin abrirla y las herramientas que generan la referencia). Dentro, lo que el código no puede decir. Un comentario que **repite el código** («cobra la tarjeta» sobre la línea que cobra la tarjeta) no agrega nada y puede volverse mentira el día que la línea cambie.
- Regla de las guías de estilo de Google: «si vas a tener que explicarlo en un code review, comentalo ahora».
- Cuando la historia no entra en un comentario: el **ADR** (*Architecture Decision Record*), promovido por las guías de arquitectura de AWS, Microsoft y Google. Archivo corto y numerado en el mismo repositorio con tres partes: **contexto** (el proveedor a veces cobra aunque no responda; en febrero causó doble cobro), **decisión** («no reintenteremos cobros automáticamente; si el resultado es desconocido, lo revisa una persona») y **consecuencias** (buenas y malas: algunos pagos tardan más en confirmarse, pero nadie paga dos veces).
- Un ADR aprobado **no se reescribe**: si el equipo cambia de opinión, se escribe una nueva decisión y la vieja se marca como *superseded* — como una entrada nueva del libro de bitácora no tacha la anterior.

## Cómo mantener la documentación al día

Analogía: quitan el puente norte podrido y nadie corrige el cartel de la ruta de bienvenida; la próxima novata camina confiada hacia el barranco. «Documentación incorrecta es peor que ninguna» (comunidad Write the Docs). Caso Google: su wiki interna separada del código envejeció y se multiplicaron duplicados — llegaron a tener **7 a 10 documentos distintos para configurar la misma herramienta**. La solución fue mover los documentos importantes **junto al código**, con el mismo historial y proceso de review, con un **dueño** y una **fecha de última revisión** (si pasan unos meses sin revisión, una herramienta avisa). Eso es *documentation as code*: documentos en el repositorio, en Markdown, cambiando **en el mismo pull request** que el código — el revisor ve ambos juntos y nota lo que falta (GitLab incluye la documentación en su definición de cambio terminado). Lo generable, se genera (referencia de API desde el código); lo que no se puede generar — el «por qué» — es lo que más cuidado requiere.

## Documentar en la era de los agentes de IA

Un agente (Codex, Claude, Copilot) lee el repositorio, escribe código, corre tests y propone cambios; pero **cada sesión empieza sin memoria de la anterior**: el proyecto solo sabe lo que lee en ese momento, y el código que parece un descuido se trata como descuido — el caso del reintento es exactamente eso. Para este lector existen archivos de convenciones: **agents.md** («un README para agentes», en la raíz: cómo trabajar ahí, comandos de instalación/test, convenciones, qué no tocar sin preguntar, dónde están las decisiones; otras herramientas usan nombres como claude.md). Matices: un estudio de ETH Zurich de 2026 (según la fuente) encontró que estos archivos en general **no mejoran los resultados del agente y aumentan su costo operativo** — vale escribir solo lo que el agente **no puede deducir del código**. Además, el agente también lee README, comentarios y decisiones como contexto: un documento viejo puede engañarlo igual que el cartel del puente. Y la IA también escribe documentación: describe bien el «qué» (está en el código), pero no puede saber lo que nunca se escribió — y si le pedís el «por qué», puede inventar una razón que suena bien pero es falsa. División del trabajo: **la IA ayuda con el «qué»** (borradores, descripciones, primer README; revisarlos como se revisa su código); **el «por qué» lo escribís vos**. Y como el agente lee la documentación como contexto y no como orden, si una regla nunca debe romperse (no cobrar dos veces), una línea en un archivo no alcanza: se necesita un **test automatizado** que falle si un cobro se repite, o un permiso que impida tocar el código de pagos sin aprobación humana.

## Cómo empezar (y cuándo NO documentar)

- No empezar creando cuatro carpetas vacías (el propio Diátaxis lo desaconseja): mejorar poco a poco, empezando por lo que más preguntan. Al crear el proyecto, un README corto; en cada cambio, una pregunta antes del review: **«¿qué documento deja de ser verdad por esto?»** — y actualizarlo en el mismo pull request. Algo raro a propósito → comentario con el porqué. Decisión difícil de revertir (base de datos, proveedor de pagos) → ADR de una página. Con agentes → agents.md con lo que no pueden deducir.
- Acordar en equipo: dónde vive la documentación (idealmente el repositorio), quién cuida cada parte, incluir docs en los code reviews, y automatizar lo verificable (enlaces rotos, referencias de API).
- **Tres cosas que NO conviene documentar**: (1) lo que el código ya dice (comentario que repite la línea de abajo o lo que un buen nombre aclara); (2) lo que nadie va a mantener (documento gigante que envejece, o la misma info copiada en wiki y repo — cada dato necesita **un hogar primario** y los demás enlazan); (3) lo que un test puede verificar (si deja de ser cierto, el test falla en lugar de quedar desactualizado en silencio). Un script desechable no necesita más de una línea.
- La mejor documentación es la que alguien **necesita, puede encontrar y puede confiar**. Cierre: con el proyecto documentado, el mismo pedido al agente termina distinto — lee agents.md, encuentra el comentario «no reintentes, ver decisión 7», entiende el riesgo, propone un cambio que lo respeta y todo cambia en el mismo pull request; y el test queda ahí para el día que alguien no lea.

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen («claud.md» = claude.md, transcrito así).
- Cruces temáticos con el mismo lote: menciona el video de Git desde cero del propio canal (fuente 19/20) y un video del canal sobre cómo funciona un modelo de lenguaje (no en la lote); el test como barrera contra la IA conecta con la fuente de testing (6/10, mismo canal).
- Autopromoción (tarjetas a otros videos del canal) excluida de la síntesis. Sin patrocinios externos.
