# Resumen: Despedí a mi editor y contraté a Claude Code

- **Tipo**: resumen de fuente (tutorial de sistema agéntico de producción de vídeo).
- **Canal**: Santiago Munoz (página de entidad pendiente de consolidación).
- **Publicado**: 2026-07-14. **Duración**: 29:33.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=QRhX4zU1jso).
- **Raw**: [raw/ia-uso-practico/2026-07-14-despedi-editor-contrate-claude-code-santiago-munoz.md](../../raw/ia-uso-practico/2026-07-14-despedi-editor-contrate-claude-code-santiago-munoz.md) (transcripción de subtítulos automáticos con marcas de tiempo).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]] (Claude Code como director).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Un skill de Claude Code puede sustituir a un editor de vídeo: con **una sola prompt** genera un vídeo completo estilo Vox (guion, voz, ilustraciones, imágenes reales, cortes, subtítulos y render), como demuestra el vídeo de apertura hecho «100 % automatizado». Claude actúa de **director**: no dibuja ni anima, sino que orquesta tres servicios (ElevenLabs para voz, Kie AI para ilustraciones, Apify para imágenes reales de internet) sobre **Remotion**, el framework con el que «el vídeo es código». El tutorial construye el sistema en pasos replicables y termina entregando el skill.

## Recorrido del vídeo

- **[00:00–01:30] Demo de apertura**: vídeo automatizado sobre el esquema Ponzi de Madoff, el penacho de Moctezuma y el chile; promesa del vídeo: el sistema corriendo, tu primer vídeo y el skill para replicarlo en el nicho que quieras, sin saber programar.
- **[01:30–03:55] Tres caminos de negocio**: tu canal (documentales/motion graphics), ofrecerlo como servicio o vender el sistema; el formato «Vox» ya está validado por canales con equipos de editores — cambios rápidos, deslices, efectos de revista.
- **[03:55–09:07] Demo en tiempo real**: prompt con una noticia (GPT-5.6 de OpenAI); un **skill** es «una receta que le enseña a Claude Code a hacer una tarea completa»; Claude pregunta ángulo y duración y ejecuta: **ElevenLabs** (audio/narración), **Kie AI** (ilustraciones generadas) y **Apify** (scraper para fotos reales, p. ej. Messi); previsualización en **Remotion Studio** (localhost) y resultado renderizado a la primera.
- **[09:07–15:27] Paso 1 — proyecto**: abrir Claude Code (en Warp u otra terminal), crear carpeta, «instala Remotion» (open source, gratis) y prompt de arranque: vídeos explicativos estilo Vox, fondo papel crema, tipografía gruesa Antón, acento naranja, escena de prueba con título con rebote y subrayado tipo marcador, «nada de fades»; el autor prefiere Remotion a HyperFrames para este estilo.
- **[15:27–21:46] Paso 2 — conexiones**: crear cuenta y API key de **Kie AI** (pago por uso; recarga de créditos; recomendación Nano Banana 2 Light por precio), **Apify** (actor de Google Images; Claude detectó uno más barato y mejor, «Automation Lab») y **ElevenLabs**; Claude verifica las tres conexiones con pruebas.
- **[21:46–24:59] Paso 3 — estilo de recortes**: imágenes reales de Apify solo para lo no generable (actores, logos); transiciones rápidas y constantes; recortes generados sobre **fondo verde** que Claude elimina (stickers flotantes); fondo papel crema definible una vez; pedir revisión manual para no frenar el flujo; usar el modelo **Opus** («entre mejor el modelo, mejor queda tu vídeo»; cambio con «diagonal model»).
- **[24:59–28:25] Render y audio**: primer vídeo completo («¿por qué crecen los músculos?»: microdesgarros, hipertrofia, sobrecarga/proteína/descanso); iterar con Claude sobre el resultado; **música y SFX** con ElevenLabs o Kie AI más la librería de efectos de Remotion.
- **[28:25–29:33] Cierre y oferta**: skill descargable con guía de instalación; comunidad de pago (FORJA+): kit con >10 estilos de animación, curso de Claude Code y N8N, kit de agencia (cotizaciones, propuestas, contratos), >60 plantillas y clases en vivo.

## Puntos clave

1. **El vídeo es código**: Remotion + Claude Code como director que orquesta herramientas especializadas [05:57-07:23].
2. **Tres conexiones esenciales**: ElevenLabs (voz), Kie AI (ilustraciones por créditos), Apify (imágenes reales de internet) [05:57-07:23].
3. **El skill como receta reutilizable**: guion, voz, imágenes y edición en un solo comando; el skill del vídeo se comparte [04:37-04:52].
4. **El modelo importa**: Opus toma mejores decisiones de diseño (cortes y animaciones) que modelos más baratos [24:42-24:59].
5. **Iteración manual**: la primera versión nunca es la final; el estilo propio se construye diciéndole a Claude qué cambiar [25:52-26:23].

## Notas sobre la fuente

- Transcripción de subtítulos **automáticos** en español; garbiñados normalizados: Cloud Code→Claude Code, Kia AI→Kie AI, «emotion graphics»→motion graphics, Dangerous Permissions→modo de permisos de Claude Code, «diagonal model»→comando /model, «CapCut/Adobe Premiere» usados como símiles del estudio.
- **Patrocinio/comunidad propia detectada**: Skool «Horizontes IA» con FORJA+ al inicio y al cierre [01:03, 28:25]; el skill completo se entrega vía esa comunidad.
- Los ejemplos de vídeo citados (GPT-5.6, Madoff, penacho, chile) son contenido generado por el propio sistema dentro del tutorial, no afirmaciones verificadas del canal.
- Fuente 37/57 de la playlist «IA-Recursos»; entidad de canal aplazada a consolidación.
