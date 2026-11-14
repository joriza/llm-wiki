# Publicación de la wiki como sitio web público (Quartz 4 + GitHub Pages)

## Specs

- S1: «ok. lance en un subagente la publicacion de la wiki de la forma mas amplica y acertada posible» (pedido del usuario, 2026-11-14).
- S2: Hosting: GitHub Pages, repo público — «no me molesta que sea publico, me gusta publicar mis hallazgos».
- S3: Alcance: todo `wiki/` incluido — «lo que considere mas provechoso para el usuario, facilitando el uso».
- S4: «me interesa que tenga las mejores caracteristicas posibles para el usuario» — español, búsqueda full-text, grafo, backlinks, navegación por dominio, dark/light.
- S5: Sin licencia específica — «es solo aportar un resumen de mis intereses al publico en general».
- S6: **Nunca publicar `raw/`**, `log.md` ni `.atl/` (regla de alcance del orquestador; los resúmenes citan raws por ruta — en el sitio la cita queda como texto, sin enlace al archivo).

## Tasks

- T1 [S1-S3,S6] Proyecto Quartz 4 en `site/` + pipeline de contenido: copia solo `wiki/` → `site/content/`, convierte index/dominios en portada e índice; verificación anti-fuga (0 archivos de `raw/`, `log.md` o `.atl/` en el output). Commit unitario.
- T2 [S4] Config UX: español, búsqueda, grafo, backlinks, explorar-por-carpetas (dominios), dark/light, footer con fecha de build. Commit unitario.
- T3 [S2] CI: GitHub Actions workflow que buildea y despliega a Pages en cada push a main (solo si cambian `wiki/` o `site/`). Commit unitario.
- T4 [S1] Build local limpio + verificación de enlaces del build + URL pública confirmada. Commit de cierre.

## Log

- L1: Usuario aprueba plan (GitHub Pages público, todo wiki/, UX máxima, sin licencia).
