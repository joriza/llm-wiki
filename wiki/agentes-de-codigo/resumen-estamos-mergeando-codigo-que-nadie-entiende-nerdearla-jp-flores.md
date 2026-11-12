# Resumen: Estamos mergeando código que nadie entiende (Juan Pablo Flores)

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/`.
- **Fuente original**: `raw/agentes-de-codigo/2026-09-28-estamos-mergeando-codigo-que-nadie-entiende-nerdearla-jp-flores.md` (charla en español + Q&A; transcripción literal por subtítulos automáticos, sin normalizar; «purquest/piar»→PR, «Cor/Cabit/Cor Rabbit»→CodeRabbit) — https://www.youtube.com/watch?v=aH8zW8jGak0 — Nerdearla, Juan Pablo Flores (Developer Experience en CodeRabbit; antes GitHub Education, Open Science, Kin), 2026-09-28 (34:40).
- **Nota**: fuente 5/18 de la playlist «IA-Nuevas formas de trabajo». El autor trabaja en CodeRabbit (conflicto de interés declarable: la charla termina vendiendo su arquitectura); el diagnóstico de fondo (abundancia de código, escasez de atención) sigue siendo valioso.

## El problema: el techo del entendimiento

- Confesión inicial: PRs generados por agentes que nadie leyó — «le damos la bendición, ojalá funcione». En Kin (open source) los maintainers pedían explicación del código y la gente cerraba el PR o abandonaba.
- **Ceiling of understanding**: punto donde tu entendimiento del proyecto es prácticamente nulo; los agentes toman el control y «tenés una cantidad de slop increíble que no podés controlar».
- El flujo clásico (investigar → hipótesis → probar → iterar) producía dos cosas: el **código como diff** y un **mapa mental del proyecto**. Con agentes modernos, de la intención pasás directo al código sin comprensión intermedia: el mapa mental deja de construirse.
- **Oscuridad operativa**: ante variaciones estructurales de una misma implementación (validación en la API vs. componente), delegás la decisión al modelo y perdés la idea de la arquitectura de tu propio proyecto. La velocidad de la industria («todos los modelos dijeron que iban a pausar; la semana siguiente publicaron uno nuevo») abstrae todavía más.
- **Abundancia de código, escasez de atención**: «la barrera que encontramos en CodeRabbit» — un compañero con 8 agentes en paralelo empujando código y un único reviewer humano. Estudio de 2026 (citado como «DAI»): el 70 % de los PRs generan muchas más discusiones solo por tener que explicarse (open source).

## Qué merece la atención

- **Documentación**: más importante que nunca, «no porque la lean humanos, sino porque la leen agentes». En CodeRabbit hace 2 meses fue el primer mes con más agentes que humanos leyendo su documentación (2 spikes de ~300.000 requests, probablemente agentes chinos entrenando, intrazables).
- **Preguntas clave**: qué accesos y permisos darle a los agentes; qué control merecen; dependencias del proyecto.

## La trampa del gaslighting del agente

- Pedirle al agente que **explique** sus cambios es inútil: «los agentes son buenísimos mintiéndole a los developers sobre lo que hicieron y en el gaslighting de decirte que todo va a estar bien».
- Hacer generar y luego revisar **con el mismo agente** es el profesor que te pide que corrijas tu propia tarea: mismo harness, mismo modelo, mismo reasoning. Más cínico: el agente encuentra cosas rotas al pedirle review que no resolvió al generar — «¿por qué no lo resolviste antes?».
- Los modelos están **entrenados para generar, no para revisar**: los modelos más potentes en generación resultan «terribles» para code review. El review exige más contexto (codebase previo, intención, no romper otras partes) que el agente generador no tiene.

## Revisiones adversariales y arquitectura de confianza

- **Revisión adversarial**: un agente genera, otro juzga constructivamente. Experimento con un agente agresivo: resultados malos — «a los agentes les importa mucho cómo te comunicas con ellos»; las sugerencias amables funcionaron mejor.
- **Múltiples familias de modelos** para revisar (Gemini + OpenAI + Anthropic): cada familia tiene una frontera de conocimiento/herramientas que solo se expande combinándolas. Es «bastante buena y muy cara».
- **Evaluar al evaluador**: review completamente generativo no es replicable; hace falta una parte **determinística** del review, verificable, aumentada con lo generativo. *Frozen harness*: checkpoint del harness contra el que se corren todos los modelos para validar si sigue siendo bueno. Coste: una revisión puede rondar **10 billones de tokens**.
- Razón no es autoridad: lo importante sigue siendo **quién autoriza el merge**. Modelos como Jeff (clasificadores para otros agentes) ayudan, pero «todavía no estamos ahí».
- **Métricas de review** (Q&A): dos parámetros independientes — *recall* (cuántos bugs encuentra) y relevancia (cuántos merecen atención del usuario); medidos con live benchmarks semanales, telemetría y repos públicos (clientes citados: Anthropic, NVIDIA; open source como Tailwind).
- Código técnicamente correcto pero mal a nivel de producto (Q&A: migración que borra la DB en producción): se aborda con **knowledge base** evolutiva y acceso a terceros (Linear, Notion) para orientar la intención; CodeRabbit declara «libertades creativas» tomadas en el review.
- Confianza en sistemas que no entendemos no es nueva: **desde las librerías y los lenguajes de alto nivel no entendemos todo el código**; confiamos por trayectoria y determinismo (mismo resultado cada corrida). Cesión de decisiones a agentes solo garantizada por resultados confiables repetibles.

## Futuro: centauros vs. dark factories

- Documentación ya en dos versiones (humanos y agentes); el código de agentes tenderá a optimizarse para agentes.
- **Super Dark Factories** (cero contexto humano) vs. **centauros del código** (combinación humano-agente): «vamos más por el camino de los centauros». El principio de una dark factory es: qué tanto tenés que saber del código para mantenerlo, y cómo definís las políticas para que el agente lo desarrolle.
- Infraestructura: los PRs son hoy infraestructura de gobernanza del código (criterios, evidencia, límites). «Que tu código haya sido aceptado tampoco significa que es correcto» (push de viernes a la tarde).
