# WL-612 — Podrías haber inventado OpenClaw: cómo funciona un asistente de IA persistente, paso a paso

- **Fuente original**: `raw/wl/tramo-98/2026-11-04-podrias-haber-inventado-openclaw-como-funciona-un-asistente-de-ia-persistente-pa.md` ([Vídeo](https://www.youtube.com/watch?v=5fjFsf3ZS2U))
- **Canal**: Articulator ES (españolización del artículo de Nader Dabit «You could have invented OpenClaw» — 2.ª mano didáctica del artículo, transcripción manual)
- **Publicado**: 2026-11-04 · **Duración**: 16:36
- **Dominio**: arquitectura de asistentes persistentes (candidato a agentes-de-codigo en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Reconstrucción pedagógica paso a paso (10 pasos, 3 ingredientes: API de mensajería + LLM + «que la IA sirva fuera de la ventana de chat») de la arquitectura de OpenClaw — asistente personal persistente en apps de mensajería. Los 4 problemas de ChatGPT/Claude web: sin estado, pasivo, aislado (sin manos), mono-canal.

1. **Sesiones persistentes**: historial por usuario en **JSONL** (append-only: si se cae el proceso pierdes una línea) — la conversación entera viaja en cada llamada. Problema apuntado: crece más que la ventana de contexto.
2. **Personalidad**: `SOUL.md`, el «alma» del agente inyectada como prompt de sistema — identidad, comportamiento y límites («lo privado queda en privado, pregunta antes de actuar hacia fuera, no hablo en tu nombre»); «'sé útil' es vago: conciso cuando hace falta, minucioso cuando importa».
3. **Herramientas**: esquema nombre+descripción+función; **bucle del agente** (llamar → ejecutar → devolver resultado → repetir hasta respuesta final). Ejemplo: crear y ejecutar archivo desde Telegram.
4. **Permisos**: lista de comandos seguros + patrones peligrosos + registro de aprobaciones (nunca preguntar dos veces lo mismo; patrones tipo `git*`; tres niveles: preguntar/registrar/aprobar).
5. **Pasarela multi-canal**: la lógica del agente ya no sabe de Telegram → API HTTP como segunda puerta, misma memoria; OpenClaw: una pasarela para Telegram/Discord/WhatsApp/Slack/Signal/iMessage, sesiones agrupables por usuario/canal/compartida.
6. **Compactación**: estimar tokens (~4 caracteres/token), al ~80 % de la ventana partir en dos: mitad antigua → resumen (conservar datos del usuario, decisiones, tareas pendientes); reciente intacta.
7. **Memoria a largo plazo**: herramientas guardar/buscar recuerdos sobre **archivos markdown en una carpeta** — sobrevive a reinicios; búsqueda por palabras clave en el prototipo, vectorial con embeddings en OpenClaw («fallo de login» da con «problemas de autenticación»).
8. **Candado por sesión**: dos mensajes simultáneos corromperían el archivo — un mensaje por sesión a la vez, colas por usuario, paralelo entre usuarios; OpenClaw añade carriles separados para mensajes, tareas programadas y subagentes.
9. **Latidos (tareas programadas)**: cron que despierta al agente (resumen matinal 7:30), cada latido en su propia sesión para no ensuciar la principal.
10. **Varios agentes**: cada uno = alma + sesión + herramientas; enrutador por prefijo (`/research` → Scout, el investigador que cita fuentes; resto → Jarvis); **colaboración vía archivos compartidos** sin mensajes directos; OpenClaw añade subagentes y mensajes entre agentes.
- **Producción**: navegador con Playwright pero mandando **instantánea semántica** (árbol de accesibilidad en texto, elementos numerados: «pulsa el 1») ~100× más chica que una captura; ámbitos de sesión configurables con enlaces de identidad (misma persona en Telegram y Discord comparte historial); canales como plugins/adaptadores (añadir canal sin tocar la lógica). Todo el prototipo: **~400 líneas de Python** (Mini OpenClaw).

## Señales de triage

- **La mejor síntesis de arquitectura de asistentes persistentes del tramo**: cada pieza nace de un problema práctico (el cierre lo lista: sin memoria→sesiones, genérico→alma, solo habla→herramientas, peligro→permisos, multi-canal→pasarela, larga→compactación, reinicio→memoria, corrupto→cola, proactivo→latidos, insuficiente→varios agentes) — pedagogía por motivación, exactamente el estilo «you could have invented X».
- Transcripción **manual** (no ASR) — texto limpio; fuente 2.ª mano del artículo de Nader Dabit (sin enlace directo en el raw pero con obra y autor verificables).
- Coherente en detalles técnicos (JSONL append-only, 4 chars/token, árbol de accesibilidad) — sin datos dudosos detectados.
- Sin patrocinios.

## Cruces

- Consolidación aplazada: pieza central del clúster agentes con WL-611 (memoria persistente: su «memoria en markdown» ↔ patrón LLM Wiki), WL-603 (guardrails ↔ permisos; latidos ↔ cron de WL-600), WL-600 (cron jobs, ley «un error se arregla una sola vez»). La instantánea semántica ↔ delegación cognitiva (bajar tokens, no capturas).

## Veredicto de triage

Excelente: arquitectura completa de asistente persistente explicada por problemas, con un prototipo de 400 líneas como prueba de que no hay magia. 2.ª mano didáctica bien hecha (transcripción manual). Sin consolidación (aplazada).
