# WL-282 — «700 Mensajes con Tu Voz Sin GRABAR Ni Uno (Fish Audio)» (Javier Amblar)

- **Fuente original**: `raw/ia-uso-practico/2026-09-26-700-mensajes-con-tu-voz-sin-grabar-ni-uno-fish-audio.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=ZVs7kE-TOmg · Canal Javier Amblar: Estrategia · IA · Negocio · Publicado 2026-09-26 · 19:34 · Subtítulos automáticos es
- **Tramo**: 41, fuente útil 3/5 (posición 94 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): ia-uso-practico (voz con IA aplicada a negocio; cruces WL-284 —misma plataforma Fish Audio—, ia-media-generativa)

## Qué es

Demo (19 min) de dos casos de negocio con Fish Audio orquestado por Claude: (1) generar ~75 mensajes de bienvenida de voz personalizados por alumno de un curso, con la voz del creador sin grabar ninguno; (2) un asistente de voz interactivo (voz-a-voz) para la web del curso que responde preguntas con la propia voz del autor.

## Puntos clave

- **Arquitectura**: Claude («Cloud» en la transcripción) como cerebro/orquestador + Fish Audio como motor de voz vía conector (API/URL personalizada en los conectores de Claude); el usuario no sale de la conversación — Claude sube la muestra de voz, clona, genera y descarga.
- **Caso 1 (mensajes a escala)**: lista de alumnos ficticios (nombre + profesión), saludos con humor generados en lotes; clonación de voz con ~60 s de muestra grabada con emoción (evita etiquetas de emoción exageradas — prueba A/B de dos versiones y elige la sobria); 75 audios en ~30 s tras validar 2 muestras antes de gastar los créditos.
- **Caso 2 (asistente web voz-a-voz)**: tres piezas — voz (API de Fish Audio, gratuita hasta noviembre según el video), cerebro (Claude) y web del curso; Claude scrapea la página del curso para armar la base de conocimiento y construye el widget en ~40 s; prueba en vivo con pregunta y respuesta habladas.
- **Advertencias del autor**: solo usar voces de terceros con autorización legal («lo de copiar voces se está poniendo crudo»); en España/UE es obligatorio avisar que se habla con una IA; el humor generado por IA «es discutible»; uso de voz por dictado para ahorrar horas de escritura.

## Salvedades de triage

- Contenido promocional: enlaces de afiliado/créditos extra por registro y promoción del propio curso de Claude en descripción; la gratuidad de la API «hasta noviembre» es una promoción del momento sin fecha de fin verificada.
- Demo real (resultados audibles y tiempos declarados), pero métricas de calidad del clon sin medición objetiva; nombre de la plataforma transcrito a veces raro («Fish audio» correcto).

## Cruces sugeridos

- WL-284 (Pablo Martínez, tutorial extenso de Fish Audio el mismo mes): consolidar juntos como par intro/profundización; duplicidad temática a armonizar en consolidación.
- Cluster ia-uso-practico / futura ia-media-generativa: clonación de voz para agentes (contrastar con WL-239/240 inferencia local).
