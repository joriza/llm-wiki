# Resumen: Herdr es increíble — apréndelo gratis ahora con certificado incluido

- **Tipo**: resumen de fuente.
- **Dominio**: `inteligencia-artificial/`.
- **Fuente original**: `raw/inteligencia-artificial/2026-09-15-herdr-es-increible-aprendelo-gratis-ahora-con-certificado-incluido.md` (subtítulos automáticos, literal) — https://www.youtube.com/watch?v=FxgzAcQfro0 — HolaMundo (Nicolás), 2026-09-15 (47:47).
- **Enlaces**: [[agentes-de-codigo]] · [[resumen-deje-de-pagar-4-suscripciones-de-ia-por-estos-repos-fazt]] · [[resumen-deja-de-perder-tiempo-configurando-agentes-de-ia-en-cada-ordenador-fazt]]

## Qué es Herdr

**Herdr** es un multiplexor de terminal con **persistencia e integración nativa para agentes**: detecta cuando un agente termina o queda bloqueado, notifica, y mantiene las sesiones vivas aunque se cierre la aplicación — incluso puede configurarse para seguir trabajando en un servidor aunque se apague el portátil local. El tutorial (con certificado gratuito del canal) cubre instalación, paneles, tabs, workspaces, atajos, plugins y conexión remota.

## El problema que resuelve: los multiplexores de terminal

- Sin multiplexor, cada herramienta (shell, Neovim, Claude Code, Codex, OpenCode) requiere su propia ventana; las terminales que ofrecen tabs/paneles lo hacen cada una a su manera y no hay gestión unificada.
- Un multiplexor añade una **capa intermedia**: sesión → ventanas/pestañas → paneles, dentro de una sola aplicación.
- El estándar previo es **tmux** («timax» en el transcript), y Herdr conserva su modelo conceptual.
- La magia: **persistencia**. Al cerrar la terminal todo se perdería; con el multiplexor, la sesión (ventanas, paneles, layout) reaparece al volver. Los procesos sí mueren si se reinicia la máquina, pero los paneles quedan.
- Caso empresarial (compliance): el código nunca sale de la oficina; el desarrollador se conecta por VPN a servidores de la empresa y ahí corre tmux o Herdr — los agentes y comandos siguen trabajando de noche, sin límite, porque «la máquina no se apaga».

## La diferencia clave de Herdr sobre tmux

Con tmux no sabes cuándo un agente terminó ni qué necesita; con Herdr llega una **notificación** que indica qué agente terminó y qué pide. Además Herdr no es solo una aplicación: **corre un servidor en segundo plano** — al cerrar la ventana, los procesos (agentes, `npm run dev`) siguen ejecutándose y todo reaparece al reabrir (detach/reattach). Demo: pedirle a Codex una historia de 1000 palabras, cerrar Herder, reabrir, y el trabajo terminó igualmente.

## Contenido práctico del curso

- **Instalación**: script para todos los sistemas, comandos manuales por plataforma (Linux/Mac/Windows), Homebrew, etc.
- **Interfaz**: amistosa con el mouse (arrastrar, splits, zoom con aviso, envío de clic derecho al panel), pero el valor real está en el teclado.
- **Agentes**: panel lateral que muestra agentes trabajando, en idle o bloqueados esperando respuesta; soporta preguntas con selección simple o múltiple (demo con las tools nativas de Claude Code). Detecta automáticamente agentes al abrirlos (Claude Code, Codex, OpenCode).
- **Atajos**: prefijo + tecla (herencia de tmux); el único imprescindible es `prefijo + ?` que lista todos los keybinds. Otros: c (nueva pestaña), v/h (splits), alt+control+flechas (moverse entre paneles), w (workspaces), n/p (pestañas siguiente/anterior), z (zoom), x (cerrar panel), b larga (ocultar sidebar), d (detach).
- **Configuración personalizada**: `~/.config/herder/config.toml`; las palabras reservadas de cada acción se consultan en la documentación (config reference); tras editar, recargar con `prefijo + reload config`. Ejemplo del autor: navegar entre agentes con prefijo+control+P/N y saltar directo a un agente con prefijo+control+1..9.
- **Fuzzy finder** (`prefijo + g`): saltar a cualquier panel por nombre; los paneles se renombran (`prefijo + shift+o`) para que la búsqueda tenga sentido (ej. «chanchito feliz»). Se filtra además por estado: I (idle), B (bloqueados), D (listos/done), W (trabajando), A (todos).
- **Plugins/marketplace**: ~1123 plugins al momento de grabar, con advertencia explícita de **revisar el código antes de instalar** «por si estás instalando algo malicioso».
- **Conexión remota**: `herder --remote usuario@IP` (servidor, mini PC, máquina con Tailscale); si no está instalado, lo instala, crea la sesión y aplica la configuración local (temas y atajos) sin configurar cada máquina.

## Tesis de fondo: el mini PC como arnés de agentes

El patrón recomendado: un **mini PC siempre encendido** en casa (puede correr un modelo local ~35B o MoE ligero), al que se conecta el portátil. Los modelos inteligentes planifican y el modelo local ejecuta tareas — abaratando tokens, con agentes corriendo sin límite de tiempo. Critica el meme de dejar el portátil «entreabiertos para que los agentes sigan trabajando» («eso es un poco ridículo»): con Herdr remoto el agente vive en la máquina que no se apaga.

## Notas sobre la fuente

- Garbiñeos corregidos en el resumen: «Herder/Herder» = Herdr; «Cloud/Cloud Code» = Claude/Claude Code; «timax» = tmux; «paint» = panel; «Fast Finder» = fuzzy finder; «Open Deck» = OpenCode; «Qwen 3.6 35B» según lo pronunciado.
- Autopromoción: certificado gratuito del taller, academia HolaMundo — excluida de la síntesis.
- Patrocinios: no se identifican marcas de patrocinio explícitas en el raw.
