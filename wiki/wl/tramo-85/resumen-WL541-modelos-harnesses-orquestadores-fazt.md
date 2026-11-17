# WL-541 — Modelos, Harnesses y Orquestadores: Lo Único que Importa en IA

- **Fuente original**: `raw/wl/tramo-85/2026-08-26-modelos-harnesses-y-orquestadores-lo-unico-que-importa-en-ia.md` ([Vídeo](https://www.youtube.com/watch?v=_HxDbdItVcs))
- **Canal**: Fazt Code
- **Publicado**: 2026-08-26 · **Duración**: 19:48
- **Dominio provisional**: agentes-de-codigo (taxonomía del ecosistema)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Video-marco del canal: una **pirámide de 3 niveles para catalogar cualquier herramienta de IA** que surja y no saturarse:

1. **Modelos** (la base): seguir solo el top-10 de rankings como [Artificial Analysis] (sin ligas con laboratorios), que mide por inteligencia, velocidad y coste por tarea; los rankings rotan semanalmente (ejemplos del canal: Grok 4.6 «pisándole los talones» a GPT, Kimi K3, Qwen 3.8, GLM/DeepSeek como abiertos decentes).
2. **Harnesses** (programas encima del modelo): consola con herramientas para ejecutar comandos, archivos, web, subagentes, memoria y loops; **harness engineering** como disciplina («qué cosas puede hacer el modelo a través de qué programa»); cada laboratorio favorece a su propio harness (Claude↔Claude Code, Gemini↔Antigravity CLI); harnesses multi-modelo (OpenCode el más versátil, hasta modelos locales; haré/multi-modelo «chinos»: Kimi/Qwen/GLM/DeepSeek); advertencia de mortalidad (Continue y «Plande Dex» como abandonados). Sub-sección: **asistentes de IA** (OpenClaw/Hermes) que viven en un servidor 24/7, delegan a Claude Code/Codex y generan skills propios — «verlos con pinzas»: no están al nivel de los harnesses de código.
3. **Orquestadores** (conectores entre agentes): delegación entre suscripciones (Claude Code planifica, Kimi/OpenCode ejecutan); ejemplos: Orca (GUI), Herder (terminal), CM Max (Mac), Tracer; y dos niveles más de orquestación: intra-agente (routing de modelos por configuración en OpenCode/P-agent) e intra-API (OpenRouter «Fusion», router de Claude por API — modelo caro planifica, Sonnet ejecuta).
- **Aplicación del marco**: Grokbot (xAI) = orquestador; Cloud Tag (Anthropic en Slack) = orquestador; cualquier editor tipo Cursor = harness. «Son variaciones de estos tres».

## Señales de triage

- **Patrocinio excluido**: bloque Hostinger (VPS, código «fast», 10 % descuento) al inicio — señalado y excluido de la síntesis; también asesorías pagas al cierre.
- **Rankings de 2.ª mano**: posiciones de modelos (Grok 4.6, Kimi K3, precios «Cloud Fable 5» caro / «GPT 5.6 Luna» barato) citadas verbalmente de Artificial Analysis sin pantallas de evidencia — señaladas; nombres con ASR muy ruidoso («Cloud» por Claude, «Química 3» por Kimi K3, «Deepsig» por DeepSeek, «Quen» por Qwen, «Grockbot»/«Crowbot», «jarones» por harnesses) — normalizado solo aquí; raw intacto.
- **Opiniones declaradas como tales**: Copilot «uno de los peores», harness «Go» «nunca me funcionó» — juicio personal sin criterio técnico expuesto.
- Esquema conceptual útil y coherente con el resto de la wiki; el valor es taxonómico, no de datos.

## Cruces

- **Página central del dominio**: [[agentes-de-codigo]] (esta pirámide ordena casi todo el clúster), [[routing-por-coste]] (niveles intra-agente e intra-API = exactly routing), [[odd-metodologia]]/harness engineering ↔ especificaciones de harness en la wiki de Gentle.
- WL-472 OmniRouter, WL-274 (routers), WL-440 (GLM Flash), WL-450 (SDD), WL-539 (DeepSeek Harness — harness open source en el nivel 2), WL-501 Hermes Agent (nivel asistentes).
- Hilo transversal «categorizar antes de adoptar» ↔ [[delegacion-cognitiva-ia]] y el anti-saturación de herramientas del propio repositorio.

## Veredicto de triage

Una de las mejores fuentes de taxonomía del backlog para agentes-de-codigo: marco de 3 niveles + 2 sub-niveles de orquestación, con mortalidad de harnesses y advertencia de favoritismo lab–harness. Datos de rankings de 2.ª mano y patrocinio — señalados. Consolidación diferida (L12): [[agentes-de-codigo]] +1, [[routing-por-coste]] +1, cruces WL-539/472/501/450.
