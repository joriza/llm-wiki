# WL-249 — Lo de hoy es una cosa de locos, yo que vos entro

- **Fuente original**: `raw/agentes-de-codigo/2026-10-08-lo-de-hoy-es-una-cosa-de-locos-yo-que-vos-entro.md`
- **Video**: [Lo de hoy es una cosa de locos, yo que vos entro](https://www.youtube.com/watch?v=3Oxlzhk3pXA)
- **Canal**: Gentleman Programming Vods · **Publicado**: 2026-10-08 · **Duración**: 114:36 · **Ingesta**: 2026-11-15 (tramo 36)

## Qué trata

Stream de casi dos horas del canal de vods de Gentleman Programming presentando la tanda de novedades de **Gentle Shell** (su arnés de agentes) y estrenando en vivo un producto nuevo:

- **Arquitectura**: agente propio basado en pi (no un chatbot: arnés completo con orquestador, subagentes y ODD); funciona con suscripciones de Claude/Anthropic, OpenAI, Nana y modelos locales. Componentes: Gentle Shell (orquestador + interfaz), Gentle AI (instalador + binario de revisiones) y Engram (memoria persistente, con Engram Cloud y export; anuncia cambio de nombre próximo). Instalación en un comando, separada de pi.
- **ODD (Organic Driven Development)**: el arnés crece en complejidad según se necesite. La petición se documenta palabra por palabra en un archivo y se registra en Engram; los subagentes **leen la spec directamente del documento por referencia** (antes la pasaba el orquestador) — ahorra tokens de salida y evita pérdida de contexto. Tareas chicas las resuelve el orquestador inline; commit por unidad de trabajo; encadenamiento de PRs pasadas ~400 líneas.
- **Delegación**: solo un explorador, un worker y un verify, todos en background (no bloquean la conversación); hasta cinco writers en paralelo. Mensaje central: **delegar solo por una razón** (descargar contexto) — el orquestador haciendo todo resultó mejor en sus benchmarks: menos costo, mucho menos tiempo (ejemplo: tarea de 2 features de 10,9 min a 3 min).
- **Verify y RDD**: verify nuevo detecta 8 de 9 defectos inyectados (antes casi ninguno). Ya no es determinista: el agente decide cuándo hace falta verificación según el riesgo; el RDD (revisión externa ciega, sin contexto del implementador) entra solo en riesgo alto o a pedido; darle herramientas a las lentes de revisión duplicaba falsos positivos — quedan en solo lectura. Tareas pasivas (documentos) no se verifican.
- **Otras novedades**: jobs en background (CI, tests largos) con monitoreo; comunicación entre sesiones/agentes; vista de git y estados desde la TUI; todo asociado al runtime; medidores de uso (`/gentle stats`); paleta de comandos; persona/voz configurable (rioplatense o neutral, idioma adaptativo); modelos y perfiles por sesión (cambiar perfil afecta solo la sesión actual) y perfiles asociables a repositorio; modo YOLO con guardas para git (jamás rebase/destructivos sin permiso); telemetría apagable; temas y animaciones.
- **Benchmarks propios contra Codex vanilla** (mismo modelo, 3 tareas: chica, dos features, dos entregas): ganan 4 de 5 en calidad según revisión ciega; tiempos: chica 3,6→1,9 min; dos features 10→3,2-3,6 min; loops de corrección 97→19-34 min; verify: de 0/9 a 8/9. Alegan que Codex era más rápido pero dejaba bugs clavados como correctos (test que protegía el bug, archivos tocados que no correspondía, categorías inexistentes aceptadas) — «trampas» metidas en el benchmark que Codex no detectaba. Recomendación contraintuitiva: **mismo modelo fuerte en todos los roles con esfuerzo bajo** en vez de orquestador fuerte + worker barato (el combo mixed resultó más caro y más lento); para gastar menos, modelo flash en todo con verify como red.
- **Demo «Gentle Dot»**: asistente de escritorio (GUI web en Docker) construido en ~4 horas con el propio flujo — control de pantalla, navegador, MCPs (Notion, Linear, Discord, Slack, Gmail), perfiles por agente; probado en vivo en el stream. Lo presenta como demostración de la productividad del arnés.
- **Pendientes admitidos**: Windows sin verificación punta a punta; el valor real de los agentes en trabajo largo multi-frente aún sin medir; selección de lentes obligatoria en pausa.

## Observaciones de triage

- Fuente de primera mano (el propio autor del proyecto presenta su herramienta): valiosa para el dominio de agentes de código, pero **los benchmarks son autocreportados sin metodología publicada** (sin datasets, ni reproducibilidad; la «revisión ciega» no está especificada) — señalado, NO tratar los números como comparativa independiente.
- Fuerte marco promocional/comunitario (invitación al Discord, defensa contra críticas de «burocracia», autopromoción cruzada Gentle Dot vs competencia comercial) — excluido de la síntesis factual.
- Transcripción de stream en vivo con mucho material conversacional (anécdotas personales, interacción con chat); la carga informativa está concentrada en ~[14:16]–[49:00].
- Contenido interno del proyecto: cruza directamente con el repositorio de trabajo (llm-wiki corre sobre Gentle Shell/pi) — interés documental alto.

## Cruces (en texto plano, candidatas)

- Serie metodología/harness: WL-137 (demo Gentle Shell 4), WL-153 (Gentle Design + stream GP), WL-165 (Harness²), WL-228 (autocompact), WL-214 (agentes de código), WL-247 (MCP vs RAG vs API vs A2A), WL-185 (metodología con IA).
- Entidades existentes a cablear en consolidación: [[gentleman-programming]], [[odd-metodologia]], [[gentle-shell]] (candidata), [[obsidian-memoria-agentes]].
- Canal Gentleman Programming Vods: acumula varias fuentes WL (WL-137, WL-249) — entidad de canal ya presente.

## Dominio destino sugerido (pendiente de consolidación)

`ia-uso-practico/agentes-de-codigo` (fuente interna de primera mano sobre el arnés; cruzar con la serie metodología WL-153/165/185/214/228).
