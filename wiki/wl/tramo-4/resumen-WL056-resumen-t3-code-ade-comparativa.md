# Resumen: Probé T3 Code — ¿es mejor que Herder y Orca?

- **Fuente original**: `raw/wl/tramo-4/2026-11-11-probe-t3-code-es-mejor-que-herder-y-orca.md` (WL-56, tramo 4)
- **URL**: https://www.youtube.com/watch?v=dxTdFiE-dQI
- **Canal**: Fazt Code (con patrocinio de DonDominio al inicio)
- **Publicado**: 2026-11-11 · **Duración**: 23:45 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## Qué es

**T3 Code** («D3Code» según ASR): un **ADE** (agentic development environment) de escritorio (Electron bien optimizado, «no se nota») en la línea de Herder y Orca — una interfaz única para operar **múltiples suscripciones de IA** (Claude Code, Codex, Grok, Cursor, OpenCode, Antigravity, Kimi, Qwen, Gemini CLI, AMP, Klein, Devin…) con sesiones, worktrees y control desde móvil. Creada por **Theo** (youtuber) — lo que define su carácter: **opinionated**, con la visión de un solo creador.

## Lo que hace bien (según la prueba de Fazt)

- **UX sobresaliente y minimalista**: «aparece lo que necesitás cuando lo necesitás», sin aglomeración de botones; chat central + editor tipo VS Code integrado (editar/borrar archivos sin salir del ADE) + explorador + terminales múltiples + Ctrl+P; render de la suscripción en pantalla legible (punto fuerte vs Herder, que es terminal).
- **Gestión de worktrees en paralelo**: lista master + worktrees de features y permite pedir «combiná todos los worktrees y eliminá los fusionados» — pensado para vi-coding con agentes paralelos.
- **Cola de tareas inteligente**: cada mensaje decide si se ejecuta ahora o se encola (recuadro «no leído aún» — control-Enter para encolar); atención visual para lo que requiere aprobación.
- **Skills propios y estándar** (slash commands), instalación de skills (Playwright) desde terminal integrada; selección de proveedor/modelo/esfuerzo (high/extra high) por sesión.
- **Multi-proyecto y sesiones lanzadas desde sesiones** (no son subagentes — es el mismo mecanismo CLI puente que Herder/Orca usan para controlar su UI); combinable entre suscripciones (review con Codex mientras Claude trabaja).
- **Cero configuración**: lee agentes/repos locales por defecto, se basa en estándares (sin re-autenticar si venís de Claude Desktop/Herder/Orca); login de Codex desde la app; contadores de uso/límites de todos los proveedores en un panel.
- **Remoto**: modo headless vía GitHub (no documentado en el sitio), app móvil con T3 Connect (o Tailscale) — QR, lanzar sesiones desde el teléfono («soporta autenticación con Microsoft», «añade soporte a Magic Link» — instantáneo), filtrar sesiones, ver PRs y uso.

## Lo que falla o limita (las quejas reales)

- **No agrupa sesiones por proyecto** — lista plana; queja común (Herder/Orca agrupan por carpetas/tabs).
- **Headless no soportado en Windows** (T3 App solo Linux/Mac) — para Fazt (sesiones locales + Raspberry + Hetzner VPS) es razón para no usarlo; en Windows la app de escritorio debe quedar perenne.
- **No expone características del harness**: sin remote control ni artifacts de Claude Code — «si solo orquestás y pedís cosas, sirve; si necesitás las features de cada harness, no».
- **Pensado para suscripciones** — no hay modelos locales integrados nativamente; siempre a través de un harness existente.
- **Opinionated de Theo**: sin personalización avanzada — adaptarse a su flujo o hacer fork. Fazt: «prefiero el harness original — cuando Claude Code se actualiza, quiero las actualizaciones al momento».
- Detalle menor: al pedir algo muestra el resultado, no el paso a paso.

## Veredicto del canal

«Muy buena herramienta, UX de las mejor trabajadas» — ideal para vi-coding/orquestación pura sin personalizaciones avanzadas; Fazt personalmente no la usa por la falta de headless en Windows, la no-agrupación y preferir harnesses originales configurables.

## Notas críticas

- Prueba hands-on honesta con comparativa directa vs Herder/Orca (los dos ADEs rivales ya procesados o mencionados en la wiki); patrocinio DonDominio separado claramente del contenido.
- Nombres ASR: «D3Code/T3 Code/TTS Code/Tetris Code» (T3 Code), «Don Dominio» (donDominio), «Hessner» (Hetzner), «Orca» y «Herder» (Herd? — verificar nombres reales de los ADEs rivales), «Quen» (Qwen), «Klein» (Cline?), «Cloud Code» (Claude Code).

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** — clúster de herramientas ADE/vi-coding junto con WL-47 (SuperAgente), [[deepseek-harness]] y la propia Gentle Shell del clúster Gentleman (WL-52).
- **WL-52 (Gentleman Programming)**: mismo nicho — orquestación de agentes multi-suscripción; el «revisor del core, comunidad delega» de Alan vs el «opinionated de Theo» como dos modelos de gobernanza de herramientas de agentes.
- Tema-candidato (junto con WL-47): **ADEs como capa de orquestación multi-suscripción** — patrón 2026 (Herder/Orca/T3 Code) con el debate UX-terminal vs GUI y headless-Windows como restricción real.
