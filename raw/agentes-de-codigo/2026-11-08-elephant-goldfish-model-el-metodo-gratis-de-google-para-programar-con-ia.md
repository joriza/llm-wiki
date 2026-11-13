# Elephant-Goldfish Model: el método gratis de Google para programar con IA

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=TBcgwD9sygM)
- **Canal**: InzideTech
- **Publicado**: 2026-11-08
- **Recopilado**: 2026-11-13
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:15

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Dicen que cuantos más datos y más contexto le das a una inteligencia artificial, más inteligente se vuelve. Pero cuando estás creando software real, esa es la mentira [música] más cara de todas. Pasas tres horas chateando con Claude, Cursor [música] o ChatGPT. Parece que te entiende perfecto, pero cuando ejecutas el código, todo [música] explota por suposiciones que ninguno de los dos vio.

[00:22] Mira mi pantalla ahora mismo. Acabo de pasar una simple idea de entrega de webhooks por el nuevo sistema abierto de Google llamado EGM. [música] Mientras un agente con memoria de elefante diseñó la arquitectura, un escuadrón de agentes con memoria de pez dorado acaba de cazar [música] seis fallos mortales de concurrencia antes de escribir una sola línea de código. [música] No es un modelo de pago ni una promesa futura. Es el Elephant Goldfish Model de Google. Es 100% gratuito bajo licencia Apache 2.0 y

[00:51] hoy lo vas a instalar y dominar paso a paso. [música] ¿Suena bien? Pues vamos directo al primer bloque. Antes de tocar la terminal, entiende por qué este repositorio acaba de superar las 13,900 estrellas en GitHub en tiempo récord. Basado en el famoso ensayo de Dave Rensin, [música] cuando tú y tu asistente de IA conversan durante horas sobre un proyecto, sufren de contaminación de contexto. Ambos dan cosas por sentado. [música] Si tú olvidas mencionar qué pasa cuando un servidor se cae, tu IA tampoco lo

[01:19] cuestiona porque te sigue la corriente. Google solucionó esto dividiendo el cerebro de tu IA en tres roles estrictos. Primero, el elefante, tu agente principal que recuerda todo tu proyecto, tus requisitos y decisiones pasadas para redactar el diseño.

[01:34] Segundo, el pez dorado o Goldfish, subagentes recién nacidos con cero memoria de tu charla [música] previa. Solo leen el documento técnico y el código fuente en frío para destrozar tus [música] puntos ciegos sin piedad. Y tercero, tú, el arquitecto, que toma la decisión final. [música] Lo mejor de EGM es que no te ata a Google. Puedes instalarlo hoy mismo en Cloud Code, Codex CLI, [música] ChatGPT Desktop, Cursor, GitHub Copilot o Antigravity CLI.

[02:02] [música] Vamos a hacer la prueba rápida en vivo. Si usas antigravity CLI, solo abres tu consola y ejecutas [música] ¿Prefieres Claude Code? Escribes [música] Y luego [música] Y si estás en Codex CLI, usas exactamente la misma lógica con [música] Por cierto, cada semana cambia el rey de los editores. [música] ¿En cuál de estos entornos estás programando tú hoy mismo?

[02:41] [música] Déjamelo aquí abajo en los comentarios para saber en cuál profundizar más en el próximo tutorial. Ahora mira lo que pasa cuando iniciamos una sesión limpia. [música] En lugar de pedirle a la IA créame un sistema de webhooks en Python, lanzamos el comando [música] Recuerda añadir el prefijo [música] si estás en versiones anteriores de antigravity o en Mira como el elefante no escribe código a lo loco, empieza a hacerme preguntas de arquitectura, ¿qué pasa si el envío

[03:12] falla? ¿Y si el mismo evento llega dos veces? [música] Una vez que acordamos la dirección, entra el primer grupo de peces dorados a desafiar la propuesta y el sistema guarda todo automáticamente [música] en un archivo limpio llamado Pero ojo, tener un resumen conceptual es solo el 20% del trabajo. Más adelante te mostraré qué pasa cuando metes este sistema en un proyecto [música] viejo lleno de código espagueti que nadie documentó.

[03:37] Ya tenemos el concepto en [música] Pero si le pasas eso a un programador junior o a un agente codificador, todavía hay margen para el desastre. [música] Aquí invocamos la segunda habilidad, Observa el comportamiento del elefante en pantalla. Transforma nuestro resumen en un documento de especificación formal [música] llamado El truco aquí es que no te escupe una biblia de 2000 líneas de golpe. Redacta una sección y se pausa [música] en el chat esperando tu aprobación o corrección antes de avanzar al siguiente

[04:07] bloque. Aquí es donde ocurre la verdadera magia [música] técnica. Ejecutamos /egm-review design-draft.md. [música] En este instante EGM lanza una auditoría a través de cinco etapas utilizando [música] subagentes Goldfish totalmente aislados. Estos agentes no saben cuánto te costó llegar a esa idea ni tienen empatía [música] por tu esfuerzo, solo ven el documento y el código fuente al que hace referencia.

[04:34] Incluso [música] en las últimas actualizaciones del repositorio Google integró un revisor catalizador basado en TRIZ, la teoría rusa de resolución inventiva de [música] problemas para encontrar contradicciones técnicas que ni siquiera habías imaginado. Al terminar ejecutas /egm-resolve [música] y el sistema te lleva de la mano por cada crítica para que tú decidas cuáles aceptar y cuáles descartar antes de guardar el diseño final aprobado en la carpeta docs/designs/ [música] Ahora bajemos el hype a tierra firme.

[05:04] Como en este canal probamos las herramientas de verdad hay tres [música] limitaciones importantes que debes conocer antes de instalarlo y cómo solucionar cada una. La primera es el bloqueo por falta de subagentes puros.

[05:15] Los revisores Goldfish exigen contextos de subagentes 100% nuevos. Si usas un entorno o agente que no soporta instanciar subagentes [música] aislado EGM detiene la revisión en seco en lugar de fingirla. ¿La solución? Asegúrate de correrlo sobre Cloud Code, Antigravity CLI actualizado la versión 1.4.10 o superior o Code CLI donde el soporte de subagentes está [música] verificado. La segunda es el consumo de tokens en el ciclo de revisión. Lanzar múltiples revisores en cinco etapas consume

[05:46] bastantes [música] tokens de lectura. ¿La solución? No tienes que ejecutar toda la secuencia obligatoriamente. Para cambios pequeños o corrección de bugs simples [música] la propia política del proyecto prohíbe crear documentos de diseño innecesarios. [música] Úsalos solo en arquitecturas y funcionalidades nuevas. La tercera es que no reemplaza los tests. Un diseño probado por 10 peces dorados sigue siendo papel si no hay pruebas automatizadas. La solución, usa el documento final en docs/designs

[06:13] [música] como el prompt maestro para que tu agente genere primero los tests unitarios y luego [música] el código. Justo acabamos de ver que el diseño en docs/designs necesita convertirse en pruebas reales y desplegarse [música] sin romper producción.

[06:29] Y cuando trabajas con múltiples agentes lanzando ramas en paralelo, mantener tus entornos de base de datos y servidores de prueba sincronizados suele convertirse en un dolor de cabeza gigantesco. Volviendo a nuestro repositorio, [música] ¿qué pasa si no estás empezando un proyecto desde cero, sino que te acaban de soltar un repositorio de hace 3 [música] años donde nadie escribió ni un triste README? Si metes un agente ahí, el elefante está ciego.

[06:55] Para eso existe la habilidad /egm-bootstrap. [música] Al ejecutarla, EGM escanea la base de código existente y construye o actualiza toda la documentación base para que tu agente principal tenga memoria real del sistema. [música] Pero hay algo aún más potente.

[07:12] Pasa un mes, tu equipo mete parches urgentes a las 3 de la mañana y el código [música] ya no se parece en nada a lo que decía el documento de diseño. Ejecutas diagonal egm drift report [música] y el sistema compara los documentos guardados en el repositorio contra el código fuente real, entregándote un reporte exacto [música] de dónde se desvió la implementación.

[07:34] Y aquí viene un hack que casi nadie ha notedo al leer el repositorio por encima. Aunque el flujo principal está pensado para especificaciones [música] de software, Google incluyó el comando diagonal egm review [música] loop. Esta habilidad te permite elegir un grupo personalizado de revisores y estándares propios para auditar cualquier otro tipo de documento con la misma técnica de memoria cero. [música] Desde propuestas comerciales complejas, auditorías de seguridad, hasta guiones técnicos o

[08:02] arquitectura de producto. Y ahora que conoces todas [música] las piezas sueltas, vamos a ensamblar el flujo de trabajo maestro de principio a fin para que [música] veas cómo se construye una funcionalidad real en tiempo récord.

[08:14] Vamos a unir todas las piezas en un flujo de trabajo profesional de cinco pasos [música] que puedes copiar hoy mismo en tu trabajo diario. Paso uno, mapeo. [música] Entras a tu repositorio actual y corres diagonal EGM Bootstrap una sola vez para darle contexto total a tu elefante.

[08:30] Paso uno, mapeo. [música] Entras a tu repositorio actual y corres diagonal EGM Bootstrap una sola vez para darle contexto total a tu elefante. Paso dos, exploración. Lanzas diagonal EGM Brainstorm [música] con tu nueva funcionalidad, respondes las preguntas de la gente, dejas que los primeros goldfish ataquen la idea y obtienes tu concepts.brief.md.

[08:52] [música] Paso tres, especificación. Ejecutas diagonal EGM Draft sección por sección hasta tener [música] tu design draft.md pulido a tu gusto. Paso cuatro, fuego cruzado. Corres diagonal EGM review design draft.md seguido de diagonal EGM resolve. Filtras [música] el ruido, corriges los puntos ciegos de arquitectura y guardas la especificación definitiva bajo docs/ designs. [música] Paso cinco, ejecución impecable.

[09:23] Recién [música] ahora le dices a tu agente codificador, implementa exactamente la especificación aprobada en docs/ y al finalizar pasas diagonal drift report para confirmar que no se dejó ningún requisito en el tintero. [música] Durante los últimos 2 años nos hicieron creer que el futuro de la programación consistía en escribir un prompt de dos líneas y rezar para que la IA escupiera 10,000 líneas de código milagroso.

[09:46] [música] Hoy sabemos que cuando generar código se vuelve gratis e instantáneo, el verdadero cuello de botella deja de ser teclear. El verdadero valor está en la claridad con la que somos capaces de pensar, diseñar [música] y cuestionar nuestros propios puntos ciegos.

[10:01] Y si quieres llevar este flujo de agentes al siguiente nivel automatizando también tus pruebas y despliegues [música] sin tocar un solo servidor manual, haz clic en el video que te está apareciendo ahora mismo en pantalla, donde conectamos [música] todo este entorno con agentes autónomos en la nube. Ahí te espero.
