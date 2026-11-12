# Resumen: Herdr viene mal configurado: 6 ajustes que lo cambian todo

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/`.
- **Fuente original**: `raw/agentes-de-codigo/2026-09-24-herdr-viene-mal-configurado-6-ajustes-que-lo-cambian-todo-victor-falcon.md` (video en español; subtítulos manuales, transcripción literal) — https://www.youtube.com/watch?v=evfpvmIUPUY — Víctor Falcón, 2026-09-24 (15:32).
- **Nota**: fuente 7/18 de la playlist «IA-Nuevas formas de trabajo». Cruce directo con [[multiplexores-agentes]], las entidades herdr del banco de pruebas y la fuente 6/18 (Fazt Code, mismo flujo Herdr + Claude Code). El pedido de suscripción del autor se excluye.

## Ajuste 1 — Sidebar informativo (el más importante)

El sidebar por defecto solo muestra carpeta/proyecto y tipo de agente («tres Claude en Whisper Money, no sé qué está haciendo cada uno»). Reconfiguración por row: icono de estado + `terminal_title_stripped` (el título que el propio agente asigna a la conversación: «cashflow», «incremento de precios», «emails», «issues de Sentry») + en segunda línea el workspace y, si es worktree, el nombre del worktree. «Información que debería venir por defecto en Herdr»: qué está haciendo cada agente, de un vistazo.

## Ajuste 2 — Navegación con prefijo y números

Con prefijo (Cmd+A) + número: salto directo a pestañas (y `prefijo 4` = volver a la anterior). Con `Ctrl+N`: saltar entre proyectos del sidebar; `Ctrl+Shift+N`: saltar entre agentes del sidebar. Navegación completa por teclado, sin ratón, con retorno al punto anterior.

## Ajuste 3 — vim-herdr-navigation (Herdr + Neovim)

Plugin que unifica los atajos de movimiento (Ctrl+H/J/K/L) dentro y fuera de Neovim: el mismo Ctrl+L mueve al panel de Neovim contiguo o sale al panel de Herdr, «de forma totalmente invisible».

## Ajuste 4 — Pestañas temporales con comandos de configuración

Comandos que crean pestaña con focus + rename + `jq` para obtener el id del panel y ejecutar en él: **LazyGit** (prefijo Ctrl+G; `lazygit; exit` — al salir con Q, el `exit` mata el proceso y la pestaña se cierra sola; ideal para mirar qué hizo el agente, pull/push/rama rápida). **Convención de la flechita ↓** en el nombre: pestaña temporal que se cierra al morir el proceso (LazyGit, Neovim rápido, instancia de Claude Code) vs. pestaña permanente sin flecha. También: consola flotante (pop-up con ancho/alto configurable, se cierra con Ctrl+D) y **pet** (gestor de snippets de terminal; ej.: prefijo Ctrl+R → snippet que publica en Twitter vía Typefully usando IA para redactar, con parámetros).

## Ajuste 5 — Notificaciones: solo Blocked

Plugin oficial de Herdr (galería de plugins): notificaciones **nativas de macOS** en lugar de las del terminal (extrañas, dependientes del terminal) o del pop-up de Herdr (pasa desapercibido). Configuración de cuándo notificar: por defecto `Success` + `Blocked`; con muchos agentes en paralelo son 10-15 notificaciones, la mayoría prescindibles («si terminó, ya lo miraré»). Decisión del autor: **solo `Blocked`** — notificar únicamente cuando el agente espera respuesta humana y está frenado hasta recibirla.

## Ajuste 6 — Sesiones separadas: herdr-sessionizer

Dos sesiones de Herdr en paralelo: **personal** (proyectos propios) y **trabajo** (sesiones del empleo como programador). Script propio `herdr-sessionizer` (atajo Ctrl+F) para lanzar/cambiar; las sesiones viven en segundo plano (cerrar la vista no las detiene), con atajos para parar/borrar.

## Lección transversal

Son ajustes simples, pero el eje es el mismo que la fuente 6/18: el valor de un multiplexor está en **ver de un vistazo qué hace cada agente** y **moverte sin ratón**, con notificaciones solo cuando el humano es el cuello de botella (Blocked) y espacios separados por contexto (personal/trabajo).
