# Resumen: ¡Gratis! OpenSpec te CONSTRUYE apps full stack sin código como lo hacen los EXPERTOS de la IA

- **Tipo**: resumen de fuente (tutorial: desarrollo dirigido por especificaciones con OpenSpec).
- **Canal**: Vera Badías (página de entidad pendiente de consolidación).
- **Publicado**: 2025-10-15. **Duración**: 13:22.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=oHDbRdfDUc8).
- **Raw**: [raw/ia-uso-practico/2025-10-15-openspec-apps-full-stack-sin-codigo-vera-badias.md](../../raw/ia-uso-practico/2025-10-15-openspec-apps-full-stack-sin-codigo-vera-badias.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]] (desarrollo dirigido por especificaciones).
- **Disposición de la ingesta**: Nueva (raw generado el 2026-11-10 en el lote delegado; resumen completado el 2026-11-11 tras verificarse que no existía).

## Tesis central

Las herramientas de agentes de código (Gemini CLI, Codex, Claude Code) permiten construir rápido, pero «hay muchas cosas que no sabes y que es muy complicado que aprendas en un corto tiempo». **OpenSpec** —código abierto y 100 % gratuito— invierte el proceso: **desarrollo dirigido por especificaciones** (como Spec Kit, no como BMAD, que es de contexto): draft de propuesta → revisión de viabilidad → feedback loop si falla → implementación → **archivado para liberar contexto**. A diferencia de Spec Kit, **sirve para proyectos ya iniciados** y el autor lo juzga «muchísimo más intuitivo y fácil de utilizar».

## Recorrido del vídeo

- **[00:00–01:52] Qué es y en qué se diferencia**: flujo lineal (propuesta → viabilidad → implementación → archivado); similar a Spec Kit (especificaciones) y distinto de BMAD (método semántico de ingeniería de contexto). Se puede usar en un proyecto ya empezado, no solo en nuevos.
- **[01:52–04:22] Caso real**: idea de un miembro de su comunidad (Peter): MVP «FoodLens» — calcular calorías de alimentos a partir de fotos de cámara. El autor extrae a mano las features esenciales del plan del proyecto (originalmente planeado con BMAD) y arranca OpenSpec sobre él, eliminando la documentación previa para empezar de cero. Instalación global (comando de instalación de una línea).
- **[04:22–06:12] Inicialización**: `openspec init` → configuración de proveedores: el autor elige **Claude Code** y **Windsurf**; también admite Cursor, Factory Droid, OpenCode, Kilo Code, Codex y GitHub Copilot. Crea directorios de sistema por proveedor y una carpeta raíz con plantillas y funcionalidad de ingeniería de contexto.
- **[06:12–09:36] Población de contexto y plan**: plantilla `project.md` genérica → primer prompt (recolectar el contexto) convierte el vacío en «andamiaje técnico». Segundo prompt: crear el primer cambio rellenando la plantilla «your feature here» con el MVP pitch → en segundos genera el plan completo en `openspec/changes/<feature>`: especificación tipo user story, propósito y **5 tareas divididas en subtareas** (inicializar Next, configurar Tailwind, crear main page…). Comandos instalados en Claude Code: `/openspec` → aplicar el plan, archivar el plan (libera contexto) y validar/revisar la propuesta.
- **[09:36–11:14] Ajustes e implementación (demo)**: estrategia consciente del demo: sin tests, priorizar el visual para obtener datos maqueta (mock) y dejar el backend para después → el frontend queda «perfectamente funcional» con mock data; implementadas las tareas 1.1–1.3 y 2–2.7, salvo conectar la API.
- **[11:14–12:40] Proyecto ya iniciado**: sobre un producto real del canal (antes montado con BMAD, en subdirectorios distintos sin conflicto): tarea de crear una landing page de prelanzamiento — «en cuestión de minutos» con Claude Code la implementación está hecha. Veredicto del autor: «de las tres herramientas de ingeniería de contexto que hemos revisado últimamente, esta creo que es la mejor… sobre todo para aquellas personas que no han creado ni un solo agente de IA en su vida».
- **[12:40–13:22] Cierre**: promoción de la comunidad de pago («cofradía» en Skool) y de sus agentes vendidos en Gumroad.

## Puntos clave

1. **Spec-driven en vez de vibe coding**: invertir el proceso (planear especificaciones primero) evita que el agente improvise arquitectura [00:52-01:52].
2. **Ciclo con archivado para liberar contexto**: implementado → archivado, evitando inflar el contexto con lo ya hecho [01:22-01:52].
3. **Agnóstico del agente**: funciona con Claude Code, Windsurf, Cursor, OpenCode, Kilo Code, Codex, Copilot; instala comandos específicos por proveedor [04:37-05:21].
4. **Proyectos ya iniciados admitidos** — diferencia clave frente a Spec Kit según el autor [02:44-03:12].
5. **El humano prioriza y recorta**: decidir qué tareas van primero (visual antes que backend, sin tests en demo) sigue siendo decisión del usuario [09:36-10:28].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («Speckit/Speit/Specit» por Spec Kit, «BMAT/Bemad» por BMAD, «Openc/Opencate/Openpot» por OpenSpec, «Cloud Code/Cloud» por Claude Code, «Winsoft/Winsorf» por Windsurf, «Spy» posiblemente por Spec Kit, «Ritmi» por repo, «Mog data/M data» por mock data, «cofra Dia» por cofradía). Este resumen los normaliza.
- Nombres de herramientas a verificar en consolidación: «Speckit» (Spec Kit, GitHub) identificado por contexto; «BMAT» (método semántico de ingeniería de contexto) transcrito de forma inestable.
- Incluye promoción de comunidad de pago y del repositorio de agentes del canal; registrado como tal.
- Fuente 27/57 de la playlist «IA-Recursos» (video ID canónico `oHDbRdfDUc8`); vigesimoprimero canal nuevo del lote (Vera Badías), entidad aplazada.
