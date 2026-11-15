# WL-153 · Hoy les vuelo la peluca — stream Gentleman Programming (Gentle Design, invitada, seguridad)

- **Fuente original**: `raw/ia-uso-practico/2026-10-26-hoy-les-vuelo-la-peluca-yo-que-vos-entro.md`
- **Video**: [_Ex50pLRnXY](https://www.youtube.com/watch?v=_Ex50pLRnXY)
- **Canal**: Gentleman Programming Vods · Publicado 2026-10-26 · Duración 132:28
- **Dominio previsto** (consolidación diferida): ia-uso-practico/agentes-de-codigo (ecosistema Gentle Shell — fuente interna de primera mano)

## Qué trata

Stream de ~2 h del canal de Alan (Gentleman Programming): presentación de **Gentle Design** (nueva herramienta de diseño agéntico dentro de Gentle Shell), rediseño de la landing gentlemanprogramming.com, página de open data, rutina de seguridad personal para streaming, entrevista con una colaboradora de la comunidad («Sinlo», Patri) que customizó su terminal pi, y anuncio de workshops pagos.

## Gentle Design (novedad principal)

- Alternativa de canal a Claude Design (que solo funciona desde Claude Code, por suscripción): **servidor que usa cualquier proveedor** (suscripción N.º, modelos locales, DeepSeek, etc.). Forma parte de Gentle Shell; sale en la próxima release («una de las releases más potentes»).
- Flujo: se pide un diseño nuevo → el agente explora la app y genera un **system design** completo (colores, tipografía, espaciados, border radius, shadows, componentes reutilizables: banners, héroes, cards, terminales) incluso sobre apps legacy; se prueban alternativas por elemento y se aplica el elegido.
- **Modo comentario**: se marcan elementos con comentarios («esto no me gusta»), se envían individual o en bloque, el agente edita en tiempo real y marca implementado/en proceso, con registro de en qué commit trabajó.
- Integración con **ODD**: cada diseño creado queda asociado al documento markdown de la feature correspondiente.
- Demo en vivo: rediseño de la landing de telemetría y de la página open data desde pi («let me cook»), con pruebas responsive (desktop/tablet/mobile), comparación antes/después y feature nueva añadida en vivo (enviar capturas en los comentarios para casos de animaciones).
- La página destino está hecha en Astro («un design real que funciona, no maqueta»); «implementar este diseño» hace que el agente implemente y luego compare el resultado contra el diseño.

## Otros anuncios y demos del stream

- **Nueva landing gentlemanprogramming.com**: flujo en etapas (exploración → resolución de dudas → clasificación → cómo se hace → open data → Engram → Engram Cloud → how it works), con videos por etapa.
- **Página open data**: vista general rápida + vista detallada en cards navegables/descargables; contador de ejecuciones reportadas (~70 M al momento del stream).
- **Instalación desde la TUI**: Gentle Shell instala ahora su tooling completo desde la propia interfaz, sin el instalador web.
- **Seguridad del streamer** (para creadores de contenido): navegador con borrado de cookies al cerrar cada tab (nada logueado); **cookies y sesiones en una partición virtual extraíble** montada solo durante el uso, Chrome solo arranca mediante alias que exige esa partición y contraseña; publicación automática (YouTube, X) vía agente de navegador. Enrobustecido: los datos no viven en la máquina.
- **Context rot y delegación**: al llegar al ~15 % de contexto (backstop, p. ej. 150 k de 1 M), el orquestador delega unidades grandes a subagentes y mantiene inline los cambios chicos. Discusión técnica sobre umbrales de compactación (los impone el proveedor por modelo; compacter de más degrada por acumulación de resúmenes) e idea candente: al compactar, recuperar el resumen desde Engram en vez de re-resumir.
- **Anuncio de workshops pagos privados** (charlas customizadas por Alan o los maintainers, con formulario de selección; «no es una academia/escuelita»). También: repos de música/fondos (gentle music con moods), donations overlay, puntos de canal en Twitch, nueva web del canal y logo nuevo.

## Entrevista con la comunidad («Sinlo» / Patri, invitada)

- Miembro de la comunidad (Linux, tema Drácula) que customizó su terminal pi 100 % agénticamente: tema propio, status bar propia con contexto con semáforo (verde→amarillo→rojo al 80 %), pestañas de git con grafo/diffs, perfiles con modelos por agente, pestaña de memoria/Engram, árbol de archivos con colores por estado (nuevo/modificado/borrado), pestaña de YouTube.
- Alan la revisa con criterio técnico de renders de terminal: las status bars van abajo porque el terminal re-renderiza línea por línea (un contador vivo en el header multiplica re-renders); la suya funciona porque se ve solo al cambiar de tab. Fix rápido del worktree en el grafo git (seleccionar la raíz del worktree).
- Lista de integraciones acordada: tema «sinlo» oficial en Gentle Shell, colores de lint por lenguaje (costoso de computar, pendiente), status placement configurable, perfiles editables desde la barra con selección de modelo, alertas de cuota (ventana 5 h / semanal), mover el «ecosistema» a una vista de stats/overview (tokens, caché, líneas por sesión), árboles por worktree.
- Demo del **handoff de Engram**: sesión nueva sobre el mismo repo arranca con `memory context` y recupera el estado del trabajo sin compactación — «abre sesión nueva y continúa».
- Alan la nombra su «discípula» y la convoca a contribuir en la UI de Gentle Shell; marco de mentoría: «deja que la persona haga y rompa; me meto solo tras tiempo o urgencia».

## Notas de triage

- Fuente interna de primera mano sobre el ecosistema Gentle Shell/pi (mismo canal ya registrado como entidad [[gentleman-programming]]); declaraciones de producto del propio autor — cifras y promesas (70 M ejecuciones, próxima release) sin verificación independiente.
- Contenido de stream en vivo: mucha interacción de chat, donaciones y agradecimientos excluidos de la síntesis; humor y banter con moderación excluidos.
- ASR normalizado solo aquí; nombres propios pueden estar mal reconocidos en el raw (p. ej. «Sinlo/Sin law», «Herder», «Fuldeira» = fullscreen).
- **Entidad**: [[gentleman-programming]] — fuente interna del ecosistema (Gentle Design, stream Vods); pareja de WL-82 (Gentle Dot) y WL-137 (Gentle Shell 4) en la página de entidad (consolidación T39, 2026-11-15).
