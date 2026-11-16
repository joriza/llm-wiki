# WL-293 — «Así se arma un agente de código a tu medida con Pi» (Fazt)

- **Fuente original**: `raw/wl/tramo-43/2026-09-24-asi-se-arma-un-agente-de-codigo-a-tu-medida-con-pi.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=umfFbfApSAc · Canal Fazt · Publicado 2026-09-24 · 49:30 · Subtítulos automáticos es
- **Tramo**: 43, fuente útil 3/5 (posición 105 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): ia-uso-practico/agentes-de-codigo ([[fazt]], [[agentes-de-codigo]]; cruces WL-271/272 mismo canal)

## Qué es

Tour tutorial extenso (50 min, Fazt) del harness abierto **Pi**: instalación, autenticación multi-proveedor, grados de esfuerzo, custom prompts, skills, temas, archivos de contexto, extensiones, paquetes, MCPs y gestión de sesiones — la tesis es que Pi «no viene con nada incluido» y esa minimalidad es justamente lo que permite armar un agente de código a medida.

## Puntos clave

- **Posicionamiento**: Pi es un harness abierto comparable a OpenCode (cualquier modelo, código fuente visible) a diferencia de los harness de suscripción cerrada (Claude Code, Codex, Gemini); viene con un chat mínimo y todo lo demás (subagentes, MCP, permisos, modo plan, todos) se añade con extensiones/paquetes — control total sobre el agente propio.
- **Multi-proveedor y esfuerzo**: `/login` con ~40 proveedores vía API (Bedrock, Anthropic, DeepSeek, OpenRouter, Hugging Face) o suscripciones (Anthropic, GitHub Copilot, Kimi, ChatGPT, xAI); `/model` + Ctrl+P para alternar modelos, `/scope-models` para filtrar el selector; grados de esfuerzo (min→max) cambiables con Shift+Tab.
- **Custom prompts vs skills**: los prompt templates son snippets Markdown invocados manualmente (`/review-react`); los skills se cargan solos por coincidencia semántica y se leen de la carpeta propia y del estándar `.agents/` (compatible con skills de Claude Code/Codex); directorio skills.sh como repositorio comunitario. Demo: skill `tester-deploy` que encadena Playwright CLI (test headed) → commit+push si pasa, resumen de opciones si falla — skill que llama a otro skill.
- **Extensiones (TypeScript)**: el punto fuerte — Pi se extiende a sí mismo leyendo su documentación (ASCII art al inicio, cwd en la barra, confirmación al eliminar archivos); no solo UI: modelos, enrutado y todo el harness.
- **Paquetes**: empaquetados de extensiones+skills+prompts+temas (`pi install`); ejemplos probados: `pi-calm` (oculta la verbosidad de las herramientas hasta la respuesta final), un paquete de todos estilo Claude Code, uno de planificación (modo plan comunitario, ~68k descargas/mes) y el puente de MCPs (Pi no soporta MCP de serie).
- **Skills vs MCP**: misma funcionalidad a menudo disponible en ambos formatos; los skills consumen menos tokens y son más fáciles de crear; los MCPs quedan para plataformas que solo ofrecen ese formato. Demo con TestSprite (testing en la nube con IA, grabación en video de los tests).
- **Sesiones**: `/name` para nombrar, almacenamiento JSONL por proyecto bajo `~/.pi/`, `/resume` y `pi` para continuar, `/tree` para volver a cualquier punto del historial (con opción de reanudar compactado), `/fork` y `/clone` para ramificar, `/compact` cuando el contexto pasa del ~70-80 % (respuestas peores y más tokens).
- **Archivo de contexto**: no hay `init`; se pide crear `AGENTS.md` (estándar recomendado sobre `CLAUDE.md`, contenido equivalente y breve porque se carga en cada pregunta).

## Salvedades de triage

- Tutorial de primera mano sobre la herramienta (demo en vivo), pero el autor usa una suscripción de 20 $ y menciona métricas de descargas de paquetes sin fuente; transcripción con errores de reconocimiento (nombres de comandos corruptos: «Pent», «Cloud Coach», «Antropic»).
- Fuente interna del ecosistema Pi: útil como registro de percepción externa del harness (contraste con las fuentes de primera mano del propio proyecto WL-153/WL-137).

## Cruces sugeridos

- [[fazt]] a 13 fuentes (WL-271 Omarchy, WL-272 DHH mismo canal en ventana cercana); [[agentes-de-codigo]] (WL-165/178/180/203/272/278); contraste Pi «minimal + extensiones» vs DHH/Omarchy (WL-271/272) y vs Gentle Shell (WL-153) — mismo patrón de harness a medida.
