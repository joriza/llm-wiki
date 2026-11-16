# Obsidian es increíble! Apréndelo ahora gratis con certificado incluído

- **Fuente original**: `raw/wl/tramo-50/2026-09-22-obsidian-es-increible-aprendelo-ahora-gratis-con-certificado-incluido.md` (`SQUiLmKH5Cc`, WL-326, índice 19 del cache fresco de 04:52)
- **Canal**: [[holamundo]] (Nicolás Schurmann)
- **Publicado**: 2026-09-22 · Duración 61:00 · curso gratuito (certificado vía Academia HolaMundo)
- **Tipo**: curso/tutorial divulgativo
- **Dominio destino** (opciones para la consolidación): `ia-critica-y-fronteras/` (cluster Obsidian como memoria de agentes, [[obsidian-memoria-agentes]]) o `agentes-de-codigo/` (3.ª fuente del canal)
- **Cruces**: [[obsidian-memoria-agentes]], [[holamundo]], [[agentes-de-codigo]], [[odd-metodologia]]; WL-325 (mismo clima de herramienta agéntica, tramo contiguo)

## Qué propone

Curso introductorio completo a Obsidian con un ángulo preciso: no es «el reemplazo de Notion» sino la infraestructura para un **sistema de gestión del conocimiento** (base de conocimiento, no base de datos) que luego consumen asistentes y agentes. Tres niveles de uso: (1) humano escribe/lee, (2) agente y humano escriben y leen sobre el mismo sistema, (3) el usuario conversa con el asistente y este mantiene el sistema (patrón tipo RAG sobre la bóveda).

## Contenido del curso

- **El problema**: información fragmentada (Notion, Drive, chats con LLM, notas sueltas); guardar ≠ recuperar; con miles de notas el «se lo paso a ChatGPT» deja de escalar y el contexto del modelo no crece para siempre. Los agentes repiten convenciones y aprendizajes de proyecto si no hay una base consultable.
- **Qué es Obsidian**: bóveda = directorio local de Markdown + adjuntos; sin base de datos cerrada, sin nube obligatoria (Sync de pago opcional ~4 USD/mes); portabilidad total (si se abandona la app, los archivos quedan); énfasis en privacidad (compatible con modelos locales tipo Qwen/Gemma); plugins, canvas, grafo, vistas, propiedades. Advertencia explícita: Obsidian no es un sistema de IA por sí solo — solo infraestructura.
- **Markdown de cero**: títulos, separadores, cursiva/negrita, listas, checklists, citas, código inline y bloques, tablas con alineación (source mode), wikilinks `[[...]]` con alias y anclas a headings, links externos.
- **Metodología Second Brain (Tiago Forte)**: CODE (Capturar, Organizar, Destilar, Expresar) + estructura PARA (Projects / Areas / Resources / Archive), con criterio explícito de cuándo algo pasa a cada carpeta y el filtro previo: «¿lo voy a usar y cuándo?»; carpeta `00-inbox` como punto único de entrada (diarias y notas nuevas caen ahí) para que el volcado no requiera orden previo.
- **Agente sobre la bóveda**: se abre un agente de terminal (Claude Code, Codex, OpenCode, Pi — «da exactamente lo mismo») en el directorio del vault; el prompt le pide tratar el vault como Second Brain PARA con reglas de captura en inbox y depuración bajo pedido; el agente genera archivos de instrucciones (AGENTS.md + wiki) y demuestra: nota sobre sistemas RAG clasificada en Projects, depuración del inbox que reubica y enlaza notas automáticamente.
- **LLM Wiki (Karpathy)**: último bloque — patrón público para construir conocimiento personal con LLMs, diseñado para copiarse tal cual en cualquier agente; operaciones ingest (leer fuente → discutir → página de resumen → índice → entidades → log), query (responder solo desde páginas compiladas, con citas) y link/lint (contradicciones, huérfanos, conceptos sin página). Casos de uso sugeridos: aprendizajes (patrones de software), salud (métricas de reloj con avisos proactivos), productividad (pomodoro que alimenta la wiki), coordinación de equipos (lectura de canales de Slack/Discord).

## Notas de triage

- Autopromoción constante de la Academia HolaMundo y del certificado — excluida de la síntesis (señalada en cada bloque).
- ASR garbiñeado notable: «Thiago Forte» (Tiago Forte), «Claudio» (Claude), «Andrej Carpati» (Andrej Karpathy), «RAC/RAG», «Hermes/Open Claude/OpenCog» (nombres de agentes distorsionados) — normalizado solo aquí, jamás en el raw.
- El bloque de LLM Wiki describe **exactamente el patrón de esta wiki** (raw/ + wiki/ + índice + log, consolidación, lint) — fuente externa de primera mano sobre la metodología del propio repositorio.
- Divulgación sin citas al pie; las atribuciones (Karpathy/OpenAI) son correctas; el término «vibe coding» y su arrepentimiento posterior se presentan de oído — verificar en consolidación si se usa.

## Véase también

- [[obsidian-memoria-agentes]] — concepto consolidado del patrón Obsidian-asistente.
- [[holamundo]] — entidad del canal (3.ª fuente).
- [[agentes-de-codigo]] — infraestructura agéntica sobre archivos locales.
- WL-325 «por qué los agentes salen mal» (Gentleman Programming) — el artefacto persistente como complemento del prompt efímero.
