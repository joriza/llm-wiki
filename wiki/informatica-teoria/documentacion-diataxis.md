# Documentación: Diátaxis, ADR y documentation as code

- **Tipo**: página de concepto.
- **Dominio**: `informatica-teoria/`.
- **Actualizado**: 2026-11-11 (consolidación del lote informatica-teoria).
- **Fuentes**: [[resumen-como-escribir-documentacion-util-y-cuando-no-hacerlo-torti-code]] (desarrollo completo) · [[resumen-todos-los-conceptos-de-programacion-explicados-en-22-minutos-tecnocroquis]] (mención final: la documentación como cierre del ciclo de desarrollo).

## El propósito: responder por escrito a quien no puede preguntarte

Caso marco de la fuente: un agente de IA agrega reintentos a la función de pagos porque ignora que alguien los había quitado **a propósito** (el proveedor a veces cobra aunque no responda) y la razón nunca se escribió — resultado: doble cobro. Documentar es dejar por escrito lo que otra persona necesita para **usar, cambiar o entender** tu software sin tenerte que preguntar: un compañero nuevo, quien integra tu API, tu yo de dentro de seis meses — y ahora, también un agente de IA.

## Diátaxis: los cuatro tipos y su consejo central

El esquema **Diátaxis** (adoptado por Canonical/Ubuntu) divide la documentación según la necesidad del momento; su consejo central es **no mezclarlos**:

- **Tutorial** — lleva paso a paso a alguien nuevo a lograr algo real (la ruta de bienvenida del parque).
- **Guía (how-to)** — una tarea concreta en pasos numerados para quien ya conoce el proyecto y tiene apuro (la tarjeta de tormenta).
- **Referencia** — cada operación: qué recibe, qué devuelve, qué errores; formato uniforme y **generada desde el código** (el mapa que se consulta, no se lee).
- **Explicación** — el **cómo y por qué** el sistema está construido así; se lee de principio a fin (el cartel de la laguna).

El **README** es el cartel con flechas de la entrada: qué hace el proyecto, cómo levantarlo, dónde está el resto y a quién preguntar — **distribuye, no contiene todo**. En la vista panorámica de TecnoCroquis, la documentación cierra el ciclo del software (instalar, usar, mantener, expandir): «el código puede parecer claro cuando lo escribís y volverse jeroglíficos seis meses después».

## El «por qué»: comentarios y ADRs

- **Dos tipos de comentario**: encima de la función, qué hace y cómo usarla (lo leen quien la llama y los generadores de referencia); dentro, lo que el código no puede decir. El que **repite el código** no agrega nada y puede volverse mentira. Regla de Google: «si vas a tener que explicarlo en un code review, comentalo ahora».
- **ADR** (*Architecture Decision Record*, promovido por las guías de AWS, Microsoft y Google): archivo corto y numerado en el repo con **contexto**, **decisión** y **consecuencias** (buenas y malas). Un ADR aprobado **no se reescribe**: si cambia la opinión, se escribe una nueva decisión y la vieja se marca *superseded* — como una bitácora que no tacha entradas.

## Documentation as code: mantenerla viva

«Documentación incorrecta es peor que ninguna» (Write the Docs). Caso Google: su wiki interna, separada del código, envejeció hasta tener **7–10 documentos distintos para configurar la misma herramienta**. La solución: documentos importantes **junto al código**, con el mismo historial y review, **dueño** y **fecha de última revisión** con aviso automático; lo generable, se genera; lo que no — el «por qué» — es lo que más cuidado requiere. Pregunta antes de cada review: **«¿qué documento deja de ser verdad por esto?»** — y actualizarlo en el mismo pull request.

## Documentar en la era de los agentes de IA

El agente lee el repositorio pero **cada sesión empieza sin memoria**: trata lo que parece descuido como descuido. Existen archivos de convenciones (**agents.md**, «un README para agentes»: comandos, convenciones, qué no tocar, dónde están las decisiones), con un matiz: según un estudio de ETH Zurich de 2026 citado por la fuente, en general **no mejoran los resultados y aumentan el costo** — vale escribir solo lo que el agente **no puede deducir del código**. División del trabajo: **la IA ayuda con el «qué»**; **el «por qué» lo escribís vos** (si se lo pedís, puede inventar una razón que suena bien). Y para una regla que nunca debe romperse, una línea de texto no alcanza: se necesita un **test automatizado** que falle si se viola, o un permiso que bloquee el cambio sin aprobación humana.

## Cuándo NO documentar

(1) Lo que el código ya dice. (2) Lo que nadie va a mantener — cada dato necesita **un hogar primario** y los demás enlazan. (3) Lo que un test puede verificar (si deja de ser cierto, el test falla en lugar de quedar desactualizado en silencio). Y no empezar con cuatro carpetas vacías (el propio Diátaxis lo desaconseja): mejorar poco a poco, empezando por lo que más preguntan.

## Véase también

- [[torti-code]] — canal de la fuente principal.
- [[urls-firmadas]] — ejemplo de referencia de API que documenta qué recibe y devuelve cada endpoint.
