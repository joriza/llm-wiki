# Resumen: Dejé de pagar 4 suscripciones de IA por ESTOS repos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=5JJgfcJxyyg) (fuente 50/57 del lote IA-Recursos)
- **Canal**: [[fazt]]
- **Publicado**: 2026-09-09 · Duración 17:42
- **Raw**: `raw/inteligencia-artificial/2026-09-09-deje-de-pagar-4-suscripciones-de-ia-por-estos-repos.md` (subtítulos automáticos, transcripción literal)

## Idea central

Recorrido por 10 repositorios recientes del ecosistema de agentes de IA (con énfasis en reducir suscripciones pagas): un gateway de modelos, dos orquestadores de agentes, un «VS Code para agentes», una distro Linux con IA, una librería de conversión de documentos, skills, un harness de DeepSeek, generación de vídeo y una visualización de orquestación estilo The Office. Tesitura final: todos generan sus propias herramientas porque la IA genera código.

## Los repos, uno a uno

1. **Archify** — convierte código o una idea en diagramas interactivos explorables (arquitectura, secuencia, flujos de usuario); exportables a vídeo/GIF; como es código, se versiona en el proyecto.
2. **OmniRouter** (AI gateway) — ~350 proveedores, ~63 modelos (texto, imagen, vídeo); centraliza cuentas gratuitas y salta automáticamente de cuenta al agotar créditos: «IA gratuita» sin cambiar API keys. Instalación por un comando + web local; integraciones de CLI, MCP y configuraciones dotenv. ~60k estrellas, despegó en julio.
3. **Herder** — orquestador multiagente en terminal (Rust): abrir varios agentes (Claude Code, Codex, OpenCode) a la vez, comunicarlos, y opcionalmente vivir en un servidor y conectarse por SSH; con plugins (notas, cuotas, file explorer, editor). Un **ADE** (agent development environment) ligero, comparado con tmux pero más visual y con mouse.
4. **Orca** — misma idea de Herder pero como aplicación de escritorio: tareas, planificaciones, integración Git, drag & drop, app móvil para controlar agentes remotos.
5. **VS Code orientado a agentes** («Burbal/BS Code» en la transcripción) — ~63k estrellas; worktrees, terminales divididas, selector de diseño, integración GitHub/Linear, SSH. Sin modelo propio: traes tu suscripción y lanza cualquier agente de terminal. «El VS Code de esta época».
6. **Omarship (distro de DHH)** — Arch Linux preconfigurada (con Hyprland, Neovim), promovida como «distro con IA» por DHH (creador de Ruby on Rails); sus plugins se extienden desde cualquier Linux, pero la comunidad le genera plugins (gasto de tokens, videojuegos…). Buen puerta de entrada a Linux para gente técnica, no trivial (paquetes, atajos, configuración).
7. **AnyDoc (Firecrawl)** — librería de bajo nivel (Rust) para convertir documentos (PDF, Word, CSV) a Markdown; hasta ~280× más rápido que LibreOffice (~1129 ms vs ~4 ms; Pandoc ~100 ms). Relevante porque procesar PDFs es cuello de botella en pipelines de IA.
8. **Matt Pocock Skills** — skills que transfieren la metodología de desarrollo de Matt Pocock (TypeScript) a cualquier herramienta con skills. Destaca **GrillMe**: el modelo interroga al usuario (hasta 20-40 preguntas) antes de planificar, para entender el problema de fondo; útil en características complejas multi-capa, no para cambios triviales ni permanente.
9. **DeepSeek Harness** — la herramienta de consola/web abierta de DeepSeek para usar sus modelos (baratos, buenos en código); comunidad generando plugins; aún básicamente su interfaz web abierta.
10. **Open Montage** — generación de vídeo completa por agente: no un clip aislado sino todo el workflow (script, planning, producción) con interfaz web para ver el paso a paso; le das tus ideas a Claude/Codex y arma p. ej. la publicidad o la demo del proyecto.
11. (extra) **Mander Diffling** — visualización de orquestación multiagente al estilo The Office: cada agente es un personaje comunicándose en una oficina; el valor es la parte visual, no la orquestación en sí; la comunidad ha hecho variantes (campo, ciudad). «No es que sea enteramente útil, pero es una buena idea de ver la comunicación entre agentes».

## Cruces y observaciones

- Cierra con la misma hipótesis de otras fuentes del lote ([[agentes-de-codigo]]): los harnesses se multiplican porque ya no hay barrera para construirlos.
- Cruza con la fuente 51/57 (Herdr/Herder como su «proyecto favorito») y con la 54/57 (HolaMundo sobre Herdr en profundidad); también con la 55/57 (FreeLLMAPI, misma tesis de «no pagar suscripciones» con gateway de cuentas gratuitas).
- Patrocinio: Hostinger (servidores VPS, código FAST, 10% descuento, menciona instalar «Open Cloud»/OpenCode, Hermes y N8N) [00:37-01:41]; excluido de la síntesis.

## Notas sobre la fuente

Transcripción de subtítulos automáticos (yt-dlp), literal, con duplicación VTT. Nombres garbiñados normalizados: «Omniirrout/Omniir Routro» por OmniRouter, «Herder» por Herdr, «RAS» por Rust, «Enocg/Inid Doc/Any Doc» por AnyDoc, «Deepsit/Deepsic/Deepsek» por DeepSeek, «Open Mountage» por OpenMontage(?), «Mander Diffling» por Manders Office(?), «Omarship» por la distro de DHH(?), «highprand» por Hyprland, «Neobin» por Neovim, «word trees» por worktrees, «Tmax» por tmux, «Grillmi» por GrillMe, «BS Code» por el editor tipo VS Code. Nombres de repos dudosos marcados con (?) conviene verificar contra GitHub antes de usarlos como referencia.
- **Enlaces de consolidación (2026-11-11)**: [[fazt]] · [[multiplexores-agentes]] (Herdr/Orca) · [[agregacion-apis]] (OmniRouter) · [[ia-china]] (DeepSeek).
