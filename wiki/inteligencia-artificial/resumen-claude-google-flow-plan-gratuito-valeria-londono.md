# Resumen: Claude + Google Flow Plan Gratuito = $13.000/mes

- **Tipo**: resumen de fuente (tutorial: fábrica de vídeos estilo «Sen» con IA gratuita).
- **Canal**: Valeria Londoño (entidad pendiente de consolidación).
- **Publicado**: 2026-07-13. **Duración**: 22:06.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ZD9VE4l0WnI).
- **Raw**: [raw/inteligencia-artificial/2026-07-13-claude-google-flow-plan-gratuito-13-000-mes.md](../../raw/inteligencia-artificial/2026-07-13-claude-google-flow-plan-gratuito-13-000-mes.md) (subtítulos automáticos, transcripción literal).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]] (Claude como investigador y generador de prompts); [[generacion-local-de-imagenes]] ( Nano Banana 2 para imagen).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Replicar el formato de un canal AI-video viral («Sen»: 24 vídeos, +16 M de visualizaciones, todo con IA) en 4 pasos y con herramientas **totalmente gratuitas**: 1) Claude investiga los patrones de 3 canales de referencia y propone 10 ideas **originales** (no copiar títulos: YouTube restringe el contenido duplicado); 2) Claude escribe el guion corrido para la voz; 3) ElevenLabs genera la locución (10.000 palabras de crédito gratis, 5.000 por tanda) y TurboScribe da los tiempos; 4) Claude convierte guion+tiempos en **prompts de imagen por marca temporal**, que una extensión de Chrome ejecuta en cola dentro de Google Flow (Nano Banana 2) para generar todas las escenas automáticamente; el montaje final es manual en CapCut.

## Recorrido del vídeo

- **[00:00-03:24] Paso 1 — Investigación con Claude**: prompt con 3 enlaces de canales para analizar títulos, miniaturas, temas, frecuencia y formato; conector opcional vidIQ acelera la navegación. Resultado: los 3 canales «juegan el mismo juego» con 6 patrones (pregunta en el título, animales como espejo, tabú doméstico, el tubo oculto, nombre técnico, cero cara/cero fecha/evergreen) → 10 ideas originales; elegida «¿qué sueñan las ratas?».
- **[03:40-04:47] Paso 2 — Guion**: prompt de guion narrativo corrido (sin tiempos) «para generar la voz», con instrucción de finalizar en reflexión. Ejemplo de apertura: «En 1998, en un laboratorio del MIT, un científico estaba escuchando el cerebro de una rata dormida…».
- **[04:47-08:40] Paso 3a — Voz con ElevenLabs**: voz «Alberto» en español; pegar el guion por partes (límite de 5.000 palabras por ejecución), generar y descargar las dos tandas de audio.
- **[08:06-11:11] Paso 3b — Tiempos con CapCut + TurboScribe**: unir los audios en CapCut, exportar solo MP3; TurboScribe (gratis: 3 audios/día) transcribe con tiempos («modo ballena»(?) — modo de transcripción); la marca temporal es lo que permite alinear cada imagen con su frase («no tiene sentido colocar una imagen en algo que dice bombero y poner un policía»).
- **[10:36-13:06] Paso 3c — Prompts de imagen con Claude**: pegar guion con tiempos y pedir «un prompt de imagen para cada tiempo sin omitir ninguno»; pedirlos **en español** y con el estilo incrustado (dibujo animado de muñecos de palito, fondo blanco, contornos negros gruesos e irregulares), para no tener que pegar el estilo en cada prompt.
- **[13:06-17:19] Paso 4 — Imágenes con Google Flow + extensión**: extensión de Chrome (enlazada) que toma el bloque de prompts, cola de ejecución en Google Flow con **Nano Banana 2** (16:9), agente desactivado, sin auto-descarga; ejecutar la cola genera todas las imágenes en secuencia sin intervención. Gotcha: los prompts deben ir pegados con su texto real (si solo se pega el tiempo, la cola queda vacía); imágenes fallidas se regeneran a mano desde el chat.
- **[17:19-21:43] Montaje en CapCut**: descargar cada imagen, ubicarla en la línea de tiempo según el tiempo del guion (recortar/alargar), audio asignado por orden, transición favorita «desvanecido oscuro» entre imágenes. Cierre: «no hay excusa — publicar un vídeo al día o dos por semana y monetizar».

## Puntos clave

1. **Modelar patrones, no copiar contenido**: Claude extrae 6 patrones de los canales de referencia y produce ideas originales — copiar títulos invita a restricciones de YouTube [00:30-03:24].
2. **El guion se escribe «corrido» para la voz**, sin marcas, porque el timing lo introduce después TurboScribe [03:40-08:40].
3. **Tiempos = alineación imagen-frase**: la transcripción con marcas temporales es la columna vertebral del montaje [09:18-11:11].
4. **Prompts con estilo incrustado y en español**, para ejecutar en cola sin pegar el estilo prompt a prompt [11:34-13:06].
5. **Extensión de Chrome como cola de generación en Google Flow (Nano Banana 2)**: decenas de imágenes sin intervención; fallos se regeneran a mano [13:29-17:19].
6. Cadena completa gratuita: Claude (investigación/guion/prompts) + ElevenLabs (voz) + TurboScribe (tiempos) + Google Flow (imagen) + CapCut (edición) [21:43].

## Notas sobre la fuente

- Nombres garbiñados que este resumen normaliza: «Cloud/cloud.ia» → Claude (claude.ai), «Sen» → canal referente (sin URL en el raw; probable «@Sen» estilo shorts AI; verificar), «vidIQ» → vidIQ (conector), «Google Flow» → Google Flow (herramienta de vídeo/imagen de Google), «no banana/Nano Banana» → Nano Banana 2, «Turbo Script» → TurboScribe, «modo ballena» → sin identificar (¿«modelo whale»? verificar contra la UI de TurboScribe), «CapCut» → CapCut, «Eleven Lab» → ElevenLabs, «$13.000/mes» del título: cifra del canal referente/monetización reclamada por el título, no verificada en el vídeo.
- El prompt de investigación y los prompts del flujo se ofrecen en la descripción del vídeo (no incluidos en el raw).
- Cruce: mismo patrón de fábrica de vídeo con IA que 37/57 [[resumen-despedi-editor-contrate-claude-code-santiago-munoz]] (Claude Code + Remotion + ElevenLabs) — aquí sin código, con Google Flow + CapCut; consolidación conjunta pendiente en [[agentes-de-codigo]]. Nano Banana 2 también aparece en 37/57 (Higgsfield, patrocinio).
- Fuente 43/57 de la playlist «IA-Recursos» (video ID canónico `ZD9VE4l0WnI`); raw por el fallback de subtítulos.
