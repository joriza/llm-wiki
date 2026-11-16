# WL-360 — Simulacro de entrevista técnica para desarrollador junior #5 (TodoCode)

- **Fuente original**: `raw/ia-uso-practico/2026-09-16-simulacro-de-entrevista-tecnica-para-desarrollador-junior-5.md` ([vídeo](https://www.youtube.com/watch?v=mSApoq5Htxo))
- **Canal**: TodoCode
- **Publicado**: 2026-09-16 · **Duración**: ~38:00 · **Ingesta**: 2026-11-16 (tramo 56)
- **Tipo**: simulacro educativo en vivo (entrevista real a candidata voluntaria + retroalimentación del entrevistador al final)
- **Dominios destino propuestos (consolidación aplazada)**: ia-uso-practico (carrera/formatación dev) o general; cruces fuertes con el bloque carrera IT

## Idea central

Simulacro público de entrevista técnica (no prueba: sin desafío de código, se evalúa contar lo que uno sabe) para un puesto Java junior, con candidata en transición de carrera — ingeniera química y especialista nuclear que viró al desarrollo — y cierre con feedback del entrevistador sobre qué ajustar (la extensión del background).

## Puntos clave

- **Formato** [00:00]: entrevista técnica vs. prueba técnica; evaluación con candidata real (Camila, Misiones) y chat en vivo del stream.
- **El background que suma** [01:27]: 2,5 años en un reactor nuclear liderando equipos ad hoc; el «momento de click» fue diseñar una BD relacional en SQL para gestión de mantenimiento; un año de formación autodidacta (Java/Spring: Boot, Cloud, Security, testing, incursión en Spring AI) + experiencia formal en fintech (procesamiento de transferencias, integración bancaria, concurrencia, idempotencia).
- **Preguntas y respuestas destacadas** [06:26]: pilares POO con ejemplo de polimorfismo por interfaz; clase abstracta (atributos compartidos, empleados/sueldo) vs. interfaz (sin relación, exportable a JSON); List/Set/Map con la corrección del entrevistador (índice = ArrayList, no listas enlazadas); Streams como señal de experiencia (filter + collect); autenticación («¿quién sos?») vs. autorización («¿qué podés hacer?») vía JWT firmado; testing con JUnit/Mockito/MockMvc (qué es un mock: «un objeto de mentira» que simula comportamiento); arquitectura por capas controller→service→repository; Spring AI (chat client/chat model) con caso de asistente virtual en concesionaria.
- **IA en el día a día** [23:30]: usa GitHub Copilot con criterio — delega poco, pide con contexto, siempre revisa y analiza antes de aceptar (legibilidad y modularidad como criterio); riesgo señalado de los placeholders/secretos en application.properties generados por IA (credenciales filtradas en producción).
- **Patrones y SOLID** [28:31]: Singleton como base de Spring; inyección de dependencias ↔ inversión de control; SOLID repasado con ejemplos (SRP, OCP con descuentos por cliente, LSP con el pingüino que no vuela, ISP — varias interfaces específicas mejor que una gigante, DIP — depender de abstracciones).
- **Feedback final** [33:31]: la «trampa» deliberada de cortar el speech de la candidata a mitad para ver cómo reacciona bajo presión (salió bien); consejo: el background no-software suma (liderazgo, seniority) pero hay que condensarlo; veredicto: «impecable», contrataría.

## Evaluación

- Contenido educativo factual por lo general sólido (conceptos estándar de Java/Spring bien explicados); los datos de la candidata son autobiográficos y no verificables (reactor, fintech) — irrelevantes para verificación, contextualizados. El nombre real y LinkedIn de la candidata se comparten públicamente en el propio stream (dato público del video, señalado por ética de cita).
- Cierre de promoción del canal y del LinkedIn de la candidata excluido; sin patrocinio de marca.
- ASR garbiñeado normalizado solo donde seguro: «Sprint/Springwood/Springbus»→Spring/Spring Boot, «Spring Club/Clouder»→Spring Cloud, «moquito/Mokenbc/Moc MBC»→Mockito/MockMvc, «Jason»→JSON, «Ecopilot»→GitHub Copilot, «enempotencia»→idempotencia, «singlet ton»→Singleton, «Lino»→Liskov, «repasadod»→repasado.

## Cruces

- Núcleo del bloque carrera IT: continua WL-352 (sueldos dev junior, mismo fondo) y WL-229/221 (carrera y mercado local); los conceptos Java/Spring y arquitectura por capas dialogan con [[bases-de-datos]] (idempotencia/concurrencia de la fintech ↔ WL-356/358) y la sección IA-en-el-día-a-día con el cluster [[delegacion-cognitiva-ia]] / agentes-de-codigo (Copilot con revisión humana, WL-345). TodoCode 1.ª fuente en WL; canal conocido del fondo general de programación.
