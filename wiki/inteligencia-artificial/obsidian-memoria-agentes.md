# Obsidian como memoria de agentes

- **Tipo**: página de concepto.
- **Dominio**: `inteligencia-artificial/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 4 resúmenes de la playlist «IA-Recursos».
- **Ver también**: [[agentes-de-codigo]] (memoria para agentes) · [[ia-local-texto]] (IA 100 % local) · [[alejavi-rivera]] · [[gentleman-programming]].

## El concepto

«Guardar información no es tener conocimiento»: los LLM alucinan y olvidan fuera de lo genérico, así que la memoria persistente se externaliza a **Obsidian** — gratuito, ilimitado, sin registro, bóveda local en Markdown que sobrevive al borrado de la app — y los agentes la leen, la reorganizan y consultan como segundo cerebro.

## El método raw → wiki (fuente guía)

Volcar material en bruto en una carpeta de la bóveda y que el agente (Codex, Claude Code, Antigravity) lo reestructure en una **wiki con conceptos, entidades y enlaces**. La skill divulgada por el ecosistema (atribución a verificar: el canal la atribuye a Greg Brockman; el nombre del archivo apunta a Karpathy) convierte cualquier agente en organizador del segundo cerebro: 20 transcripciones de vídeo → 20 páginas-fuente, 11 conceptos y 30 entidades en ~4 minutos, con grafo interconectado (32/57). Este proyecto de wiki aplica exactamente ese patrón (`raw/` + `wiki/` + índice + log).

## El ecosistema alrededor

- **Captura**: WebClipper (web → bóveda con título, URL, fuente y fecha; resaltados y modo lectura) con enriquecimiento posterior por el agente en el idioma y alcance que se pida (32/57).
- **Operación oficial**: modo CLI de Obsidian y skills publicadas por Kepano (Steph Ango, CEO): crear notas, **Bases** (vistas/filtros/fórmulas), **Canvas en JSON** generado por agente (mapa estratégico de 31 nodos y 25 conexiones) (32/57).
- **El antecedente manual**: el mismo método existía sin IA — Zettelkasten con notas atómicas (ID con timestamp, alias, tags), hubs temáticos, grafo y edición desde Neovim; el patrón raw/captura → notas → enlaces → grafo es idéntico (33/57).
- **En agentes personales**: Clawdbot archiva automáticamente sus sesiones de reflexión en Obsidian (conversación completa en logs, versión estructurada en memoria, infografía de cabecera) — «con N8N habría sido una tarde de trabajo; se lo describí como a un humano y entendió exactamente qué quiero hacer» (22/57).
- **La versión generalizada**: el «LLM wiki» como práctica del usuario final — darle al modelo una wiki propia como contexto persistente (53/57).

## Privacidad escalonada

Las notas ya son locales; si se exige, también la capa de IA puede serlo: agente con **modelos locales** (Ollama/LM Studio) sobre la bóveda (32/57).

## Tesis transversal

El patrón que todas las fuentes confirman: la memoria útil para un agente no es un log de conversaciones sino **conocimiento estructurado con enlaces** — Markdown local como formato, el agente como bibliotecario, y el humano decidiendo qué entra (WebClipper, grabaciones) y qué se conserva.

## Fuentes de este concepto

- [[resumen-segundo-cerebro-digital-obsidian-nvim-gentleman-programming]] (33/57, antecedente manual) · [[resumen-obsidian-revento-la-ia-con-memoria-gratis-e-ilimitada-alejavi-rivera]] (32/57, fuente guía) · [[resumen-que-es-clawdbot-futuro-asistentes-virtuales-dot-csv-lab]] (22/57, sesiones archivadas) · [[resumen-asi-se-usa-la-ia-en-2026-olvida-los-prompts-xavier-mitjana]] (53/57, LLM wiki).
