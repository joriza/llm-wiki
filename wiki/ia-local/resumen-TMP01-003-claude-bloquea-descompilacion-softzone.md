# TMP01-003 — Claude empieza a bloquear la modificación de equipos con IA y el código abierto se perfila como alternativa

- **Fuente**: [Artículo web — SoftZone (David Onieva, metabits)](https://www.softzone.es/noticias/metabits/claude-bloqueo-descompilacion-dispositivos/), 13/11/2026.
- **Dominio**: `ia-local/` — modelos cerrados vs. código abierto, salvaguardas unilaterales y control del proveedor (la alternativa local como salida).

## El caso

Claude (Anthropic) empezó a frenar a usuarios que intentaban **descompilar y modificar sus propios dispositivos** con ayuda del modelo: el sistema detecta esas peticiones como «amenaza cibernética» y detiene el proceso. Anthropic no confirmó el cambio ni lo explicó en comunicado — las salvaguardas «parecen estar ahí» según los testimonios recogidos.

## Contexto: la fiebre del «decomp»

- Arrancó con **videojuegos**: pasar código de juegos clásicos por Claude para generar descompilaciones y construir ports nativos; el entusiasmo cerró una web de descompilación que no pudo sostener el ritmo.
- Se salió de los juegos: descompilar el software de smart TVs para quitar bloatware; caso llamativo — alguien accedió a **Tizen OS de Samsung** apuntando una webcam a la pantalla: Claude analizaba en vivo lo que veía y guiaba la ingeniería inversa desde fuera del dispositivo.

## La acusación de doble rasero

- La comunidad acusa a Anthropic de «rules for thee, not for me»: entrenó sus modelos con grandes volúmenes de código y contenido con copyright, y ahora impide a los clientes hacer algo análogo con sus propios dispositivos.
- La ampliación de salvaguardas a los juegos «vibe-coded» paralizó proyectos con semanas de desarrollo; sin criterio publicado ni canal de apelación: **quien controla el modelo decide qué usos permite, aunque la actividad sea legal y no cause daño**.

## La salida: código abierto (con matiz)

La comunidad mira a los modelos abiertos como vía para recuperar el control. Hoy no igualan a los premium (Claude Opus 5.5, OpenAI, Gemini), pero la distancia se reduce cada generación. Matiz del artículo: cuando los abiertos alcancen ese nivel, probablemente solo sirva para **productos antiguos** — las tecnológicas ya habrán usado los modelos premium actuales para blindar sus productos nuevos (dispositivos de 2026 o anteriores como «terreno de juego» habitual, análogo a la reutilización de viejos Kindles).

## Señalado

- Base: reportaje previo (no citado con enlace en la nota) + testimonios de usuarios; Anthropic sin confirmación oficial — el hecho central es «no oficial, plausible y consistente con testimonios».
- FAQ final del artículo correcta a nivel divulgativo (descompilación, Tizen, cerrado vs. abierto).

## Cruces

- **«Quien controla el modelo decide»**: contraste directo con TMP01-002 (Türk: poder sin contrapesos ni rendición de cuentas) — este caso es el ejemplo micro de la denuncia macro.
- Hilo de ia-local: el argumento clásico de la **inferencia local** (no depender de salvaguardas de terceros) extendido del software al hardware propio; conectable con la línea de modelos abiertos vs. cerrados y con ingeniería-inversa-asistida-por-IA (WL-315).
