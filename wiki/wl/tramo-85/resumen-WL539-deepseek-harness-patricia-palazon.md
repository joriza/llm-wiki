# WL-539 — DeepSeek Harness CAMBIA las reglas: ¿Adiós a Claude Code y Codex?

- **Fuente original**: `raw/wl/tramo-85/2026-08-26-deepseek-harness-cambia-las-reglas-adios-a-claude-code-y-codex.md` ([Vídeo](https://www.youtube.com/watch?v=Ly2R2-Ga8e4))
- **Canal**: Patricia Palazón | IA
- **Publicado**: 2026-08-26 · **Duración**: 13:17
- **Dominio provisional**: agentes-de-codigo (harnesses)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Demo/tutorial en pantalla del **DeepSeek Harness** (harness de agente open source, licencia MIT, filosofía «todo es un plugin»), como competencia gratuita/barata de Claude Code y Codex:

1. **Instalación**: comando copiar-pegar vía Node; dashboard web con URL local; permisos de carpeta (lectura/escritura/completo — ella da completo sin pausa).
2. **API oficial**: recarga desde $2, API Key, modelos «V4 Flash / V4 Pro / Flash Vision X» con nivel de esfuerzo (high + flash).
3. **Caso 1 — organización de archivos**: inventario de documentos, detección de PDF duplicado y carpeta temática.
4. **Caso 2 — app completa en ~30 min**: analizador de empresas (URL → modelo de negocio, dolores, oportunidades de automatización, mapa, ROI, roadmap); coste final declarado: 157 llamadas API, quedando $1,75 de los $2.
5. **Plugins generados en lenguaje natural**: bloc de notas creado y activado sin escribir código.
6. **Agentes personalizados** (modo creador): auditor de seguridad de código con demo, severidades y código corregido.
7. **Cierre**: compatibilidad con formatos de API permite llevar el modelo barato a otros harnesses.

## Señales de triage

- **Demo no verificada**: todo lo mostrado es la pantalla del propio producto corriendo una sola vez; no hay benchmarks ni comparación real con Claude Code — el título («¿Adiós a...?» / «cambia las reglas») es clickbait no sostenido por el contenido.
- **Cifras 2.ª mano sin verificar**: «~200.000 estrellas en GitHub», «100 veces más barato que Stable Diffusion 5» (comparación incoherente — SD es un modelo de imagen; probable error de guion/ASR) — señaladas.
- **ASR muy ruidoso**: «Deep Fake» por DeepSeek, «Deep Six», «Quen» por Qwen, «Cloud Code» por Claude Code — normalizado solo aquí; raw intacto.
- **Funnel excluido**: dos bloques de captación (comunidad por email, grupo de WhatsApp) — excluidos de la síntesis.
- Otorgar permisos completos de carpeta sin advertencia: práctica mostrada sin comentario de riesgo.

## Cruces

- [[deepseek-harness]] +1 (página existente; este video es su demo de mayor alcance hasta ahora).
- [[agentes-de-codigo]], [[routing-por-coste]] (motor barato intercambiable entre harnesses), [[qwen]] (la tanda «Qwen/Kimi/GLM baratos»).
- [[delegacion-cognitiva-ia]]: demo de 30 min sin verificación del resultado — el patrón «lo generó, lo mostró, no lo auditó».
- WL-274/472 (routers y harnesses alternativos), WL-450 (SDD como contraste: método vs demo).

## Veredicto de triage

Útil como tour de interfaz del DeepSeek Harness (plugins, agentes creados en lenguaje natural, coste por token visible), con clickbait del título, comparaciones incoherentes y demo sin auditoría — señalados. Consolidación diferida (L12): [[deepseek-harness]] +1, [[agentes-de-codigo]], [[routing-por-coste]].
