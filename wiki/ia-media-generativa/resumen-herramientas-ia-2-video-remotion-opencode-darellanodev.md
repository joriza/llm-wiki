# Resumen: Herramientas IA #2: Crear vídeo con Remotion y OpenCode

- **Tipo**: resumen de fuente (tutorial técnico corto de vídeo programático con IA).
- **Canal**: [[darellanodev]].
- **Publicado**: 2026-03-22. **Duración**: 09:55.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=7KMcc12K0fA).
- **Raw**: [raw/ia-media-generativa/2026-03-22-herramientas-ia-2-video-remotion-opencode-darellanodev.md](../../raw/ia-media-generativa/2026-03-22-herramientas-ia-2-video-remotion-opencode-darellanodev.md) (transcripción de subtítulos automáticos con marcas de tiempo).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]] (OpenCode + Remotion).
- **Disposición de la ingesta**: Nueva.

## Tesis central

**Remotion** —proyecto libre de GitHub con más de 40.000 estrellas, framework para crear vídeos «de manera programática usando React»— combinado con un agente como **OpenCode** permite generar animaciones de vídeo con un solo prompt. La práctica del vídeo crea la típica banda inferior de YouTube que anima a suscribirse, con datos reales del canal y **fondo transparente** para poder superponerla sobre otros vídeos; la IA construye el proyecto y los ajustes finos (avatar, dirección de la animación, fps, codec) se afinan a mano.

## Recorrido del vídeo

- **[00:04–01:45] Planteamiento**: presentar Remotion y la idea; el prompt pide usar sus mejores prácticas, extraer con **curl** el avatar y el número de suscriptores del canal (verificando el valor correcto en la página) y usar PNPM como gestor de dependencias.
- **[01:45–03:22] El prompt completo**: banda inferior blanca que se desliza desde abajo mostrando nombre, suscriptores y avatar; botón negro de «suscribirse» de ancho fijo que cambia a «suscrito»; zoom suave al presionar y animación de resorte con rebote al soltar; desvanecido final y **render MP4 con transparencia**.
- **[03:22–05:41] Ejecución de OpenCode**: modo build con un modelo gratuito por defecto; ejecuta curl (prueba varias alternativas hasta obtener los 34 suscriptores), crea el proyecto con PNPM, escribe los componentes React/TypeScript y el punto de entrada, y lanza Remotion en el navegador; la animación funciona salvo el logotipo.
- **[05:41–07:28] Ajustes manuales**: preparar el código para cargar un PNG propio (avatar en `public/`) y copiar ahí el logotipo del canal; invertir la dirección de la animación (de abajo hacia arriba) cambiando el valor de «slide in» a un número negativo (−500).
- **[07:28–09:32] Render con transparencia**: en la pestaña general cambiar el codec **H264 (MP4) por VP9 (WebM)** —el MP4 no permite transparencia—, formato de imagen **PNG** y **pixel format YUVA420P**; subir los fps de 30 a 60 editando la configuración; render y verificación arrastrando el WebM a un editor (Shotcut): el cartel aparece y el resto es transparente, superponiéndolo con éxito sobre otro vídeo.

## Puntos clave

1. **Vídeo como código con React**: Remotion genera animaciones programáticas; OpenCode (agente con modelo gratuito) escribe y ejecuta todo el proyecto desde un prompt [00:04-05:41].
2. **Datos dinámicos del canal**: curl para nombre, suscriptores y avatar; el agente itera solo hasta dar con el valor correcto [01:24-04:09].
3. **Transparencia real requiere codec adecuado**: VP9/WebM + PNG + YUVA420P; H264/MP4 no la soporta [07:28-08:32].
4. **Reparto agente/humano**: la IA construye; el humano corrige detalles concretos (avatar PNG, dirección de la animación, 60 fps) [05:41-08:32].

## Notas sobre la fuente

- Transcripción de subtítulos **automáticos** en español; garbiñados normalizados: Kurl→curl, pront→prompt, «indexs»→index.ts, root.x→Root.tsx, Shortcut→Shotcut, Alacrity (terminal recomendada por OpenCode), Arellano Dep→nombre del canal del autor.
- Video de la serie «Herramientas IA» del canal (aquí el episodio #2); sin patrocinios detectados.
- Práctica muy concreta y reproducible (prompt incluido en el vídeo); el resultado final (banda con transparencia) se verifica en un editor externo.
- Fuente 38/57 de la playlist «IA-Recursos»; entidad de canal aplazada a consolidación.
