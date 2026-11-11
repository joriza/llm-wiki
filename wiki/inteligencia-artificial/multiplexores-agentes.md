# Multiplexores de agentes

- **Tipo**: página de concepto.
- **Dominio**: `inteligencia-artificial/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 2 resúmenes de la playlist «IA-Recursos» (54/57 y 50/57).
- **Ver también**: [[agentes-de-codigo]] (infraestructura 24/7) · [[holamundo]] · [[fazt]].

## El concepto

El problema: cada agente (Claude Code, Codex, OpenCode) exige su propia ventana, cada terminal ofrece tabs/paneles a su manera y nadie sabe **cuándo un agente terminó o qué necesita**. La solución toma el modelo conceptual clásico de **tmux** (sesión → ventanas/pestañas → paneles dentro de una sola aplicación) y lo extiende con lo que los agentes requieren: notificaciones, persistencia de procesos y acceso remoto.

## Propiedades que definen la categoría (según Herdr, la referencia del lote)

1. **Persistencia**: la sesión (ventanas, paneles, layout) reaparece al reabrir; con el server en segundo plano, los **procesos** (agentes, `npm run dev`) siguen vivos aunque se cierre la ventana — detach/reattach (54/57).
2. **Integración nativa de agentes**: detección automática de Claude Code/Codex/OpenCode; panel lateral con estado (trabajando / idle / bloqueado); **notificación** de qué agente terminó y qué pide — la diferencia clave con tmux, donde «no sabes cuándo un agente terminó» (54/57).
3. **Remoto**: `--remote usuario@IP` instala, crea la sesión y aplica la configuración local en el servidor (mini PC, máquina con Tailscale) — el caso empresarial de compliance: el código nunca sale de la oficina y los agentes trabajan de noche porque «la máquina no se apaga» (54/57).
4. **Gestión**: prefijo + tecla (herencia de tmux), fuzzy finder con filtrado por estado (I/B/D/W), workspaces, `config.toml` versionable, plugins (~1123 en el marketplace, con advertencia de revisar el código antes de instalar) (54/57).

## El ecosistema más amplio

La categoría no se limita a la terminal: **Herder** (el mismo Herdr como orquestador multiagente en terminal, escrito en Rust, con plugins de notas/cuotas/editor, «tmux pero más visual y con mouse») y **Orca** (la versión de escritorio con tareas, Git y app móvil para controlar agentes remotos) (50/57). En el extremo opuesto del gradiente, los editores «para agentes» (worktrees, terminales divididas) y los espacios agénticos completos (Odysseus) cubren la misma necesidad desde la interfaz gráfica (50/57, 34/57).

## La tesis de fondo: el arnés 24/7

El patrón recomendado es el **mini PC siempre encendido** en casa al que se conecta el portátil: los modelos inteligentes planifican y un modelo local ejecuta — agentes corriendo sin límite de tiempo y tokens abaratados. La crítica explícita de la fuente al meme de dejar el portátil «entreabierto» para que los agentes sigan: «eso es un poco ridículo» — el agente vive en la máquina que no se apaga (54/57). Mismo principio que el VPS con Docker de otras fuentes (Odysseus, VoiceBox, FreeLLMAPI), en versión doméstica.

## Fuentes de este concepto

- [[resumen-deje-de-pagar-4-suscripciones-de-ia-por-estos-repos-fazt]] (50/57, Herder/Orca) · [[resumen-herdr-es-increible-aprendelo-gratis-certificado-holamundo]] (54/57, curso completo de Herdr).
