# Obsidian como memoria de agentes

- **Tipo**: página de concepto.
- **Dominio**: `ia-critica-y-fronteras/`.
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

- [[resumen-segundo-cerebro-digital-obsidian-nvim-gentleman-programming]] (33/57, antecedente manual) · [[resumen-obsidian-revento-la-ia-con-memoria-gratis-e-ilimitada-alejavi-rivera]] (32/57, fuente guía) · [[resumen-que-es-clawdbot-futuro-asistentes-virtuales-dot-csv-lab]] (22/57, sesiones archivadas) · [[resumen-asi-se-usa-la-ia-en-2026-olvida-los-prompts-xavier-mitjana]] (53/57, LLM wiki) · [[resumen-WL051-napmem-memoria-agentes-alibaba]] (WL-51, tramo 4 — espejo arquitectural en la nube: pirámide de memoria, navegación activa con presupuesto de lectura, RL que castiga inventar; página «memoria agéntica» propia aplazada por 1 fuente plena).

## Actualización 2026-11-16 (consolidación T61)

WL-326 ([[resumen-WL326-obsidian-es-increible-curso-holamundo]] — curso completo de Obsidian con bóveda Markdown local, PARA y **agente de terminal sobre el vault**, patrón LLM Wiki de Karpathy; mismo patrón de este repositorio) y WL-331 ([[resumen-WL331-openclaw-2-0-code-simple]], ia-uso-practico/ — memoria «dreaming» en 3 fases con registro MD de OpenClaw 2.0). La bóveda de texto plano como memoria de agentes pasa de idea a implementación con dos herramientas independientes.

## Actualización 2026-11-17 (consolidación T6, tramo 98 — 4 fuentes nuevas)

El patrón LLM Wiki / «cerebro compartido» llega a la wiki con cuatro fuentes del tramo 98 que lo tratan desde ángulos complementarios:

- **WL-611** ([[resumen-WL611-rsc-brain-llm-wiki-vs-rag-eric-risco]], agentes-de-codigo/ — Eric Risco, 2.ª fuente suya): RAG vs. LLM Wiki con marco claro («agente lee cada fuente UNA vez y produce páginas enlazadas; ingesta/preguntar/revisión-lint; nodo índice») y demo de RSC Brain (MCP, permisos reader/contributor/curator, aprobación humana de ingestas, grafo, limpieza diaria). Veredicto equilibrado: «ninguno gana siempre — empezar por RAG, wiki solo si hace falta». Conflicto de interés señalado.
- **WL-614** ([[resumen-WL614-arnes-de-agentes-articulator-osmani]], agentes-de-codigo/ — síntesis de Osmani, transcripción manual): el harness como disciplina (trinquete: cada error → regla/hook/subagente; AGENTS.md <60 líneas ganado por fallos; context rot y reinicio completo; bucle Ralph; separación planificador/generador/evaluador) y el **bucle arnés↔entrenamiento**: cada pieza del arnés codifica una suposición sobre lo que el modelo no puede hacer — cuando el modelo aprende, la pieza sale (Terminal Bench 2: top 30→5 cambiando solo el arnés; Opus eliminó la ansiedad de contexto de Sonnet).
- **WL-620** ([[resumen-WL620-codigo-ia-obsolescencia-arnes-eric-risco]], agentes-de-codigo/ — Eric Risco, 3.ª fuente suya): tesis de obsolescencia — el progreso del modelo devora el meta-arnés (skill de diseño borrada → prompt simple = mejor resultado; SDD/ASDD/ODD/FTD «sin sentido en 6 meses»); lo único no resoluble dentro del modelo: **memoria persistente y continua** (compaction con pérdida, caché fría de 1 h, prueba: 2 de 3 sesiones nuevas olvidaron decisiones; prompt de traspaso por feature) → RSC Harness (OKF, grafo LLM Wiki, topología de 30 microservicios en 20 min) y RSC Brain. Conflicto de interés máximo — señalado; par directo con WL-611 (mismo autor-producto, fusión de páginas NO hecha: fuentes separadas).
- **WL-624** ([[resumen-WL624-openclaw-vs-hermes-pelado-nerd]]): comparativa de consumo tras 7 meses con OpenClaw — hallazgo relevante para el patrón: **Hermes crea skills solo** ante tareas repetitivas y las reusa; memoria en archivos .md en ambos; trade-off «lento-transparente vs. rápido-silencioso».

**Síntesis del tramo**: la tesis de WL-620 (el andamiaje caduca, la memoria persistente queda) es el mecanismo que WL-614 describe formalmente (bucle arnés↔entrenamiento) y confirma la predicción de esta página: el patrón LLM Wiki no compite con el modelo — es la capa que sobrevive a las iteraciones del modelo. La implementación de referencia sigue siendo esta misma wiki ([[odd-metodologia]]).
