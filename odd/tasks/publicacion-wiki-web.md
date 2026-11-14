# Publicación de la wiki como sitio web público (Quartz 4 + GitHub Pages)

## Specs

- S1: «ok. lance en un subagente la publicacion de la wiki de la forma mas amplica y acertada posible» (pedido del usuario, 2026-11-14).
- S2: Hosting: GitHub Pages, repo público — «no me molesta que sea publico, me gusta publicar mis hallazgos».
- S3: Alcance: todo `wiki/` incluido — «lo que considere mas provechoso para el usuario, facilitando el uso».
- S4: «me interesa que tenga las mejores caracteristicas posibles para el usuario» — español, búsqueda full-text, grafo, backlinks, navegación por dominio, dark/light.
- S5: Sin licencia específica — «es solo aportar un resumen de mis intereses al publico en general».
- S6: **Nunca publicar `raw/`**, `log.md` ni `.atl/` (regla de alcance del orquestador; los resúmenes citan raws por ruta — en el sitio la cita queda como texto, sin enlace al archivo).

## Tasks

- T1 [S1-S3,S6] **HECHA** (b7a7267; los archivos de `site/` fueron arrastrados además por los commits concurrentes bcf7d81/e8b251d del actor de ingesta): Quartz 4.5.2 (pin en package.json) en `site/` + `site/scripts/sync-content.mjs` (copia wiki/→content/ preservando dominios, frontmatter con título desde H1, portada generada desde dominios.md con contadores y enlaces a overview/síntesis, citas a raw/ convertidas a texto plano, auditoría anti-fuga programática: 0 archivos prohibidos y 0 enlaces a raw/ en `site/public`). Build output y node_modules fuera de git.
- T2 [S4] **HECHA** (b736301): es-ES, búsqueda FlexSearch y grafo global/local, backlinks, explorer por dominios, dark/light, footer «Actualizado <fecha build UTC> · generado con Quartz v…» (`FooterCustom.tsx`), sin analítica externa ni branding de terceros; baseUrl `joriza.github.io/llm-wiki`.
- T3 [S2] **HECHA** (4cb95a7): `.github/workflows/deploy-pages.yml` — push a main con paths wiki/** o site/**; Node 22, npm ci, sync-content, quartz build, auditoría anti-fuga como gate, upload/deploy-pages.
- T4 [S1] **HECHA** (este commit): build local limpio (exit 0, 593 páginas); auditoría de links: 5761 internos verificados, 5 rotos (todos wikilinks pre-existentes en wiki/, ver Log); GitHub Pages activado vía `gh api` con `build_type=workflow`. URL: https://joriza.github.io/llm-wiki/ (activa tras el push a main, que queda para el orquestador).

## Log

- L1: Usuario aprueba plan (GitHub Pages público, todo wiki/, UX máxima, sin licencia).
- L2 (2026-11-14, publicación web): S1-S6 cubiertos por T1-T4. Decisiones: Quartz v4.5.2 (línea estable 4.x; v5.x existe pero 4.5 es la versión documentada y estable del template), citas `raw/` des-convertidas a texto plano en el sync (S6), `analytics: null`, footer custom sin enlaces de marca. Links rotos del build (5, pre-existentes en wiki/, no bloquean): `gentle-ai` y `odd` (desde resumen-WL078), `resumen-jensen-huang-alice-huang-documental-caja-negra` (desde el resumen de la espía china de NVIDIA), `resumen-bukele-estadio-silvio-cator-cuarto-poder` (desde WL041), `gentle-dot-asistente` (desde WL095).
