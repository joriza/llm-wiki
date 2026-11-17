# WL-600 — Usas la IA como tu Abuela: 5 Cosas que lo Cambian Todo

- **Fuente original**: `raw/wl/tramo-96/2026-08-11-usas-la-ia-como-tu-abuela-5-cosas-que-lo-cambian-todo.md` ([Vídeo](https://www.youtube.com/watch?v=yP_bunmMrsw))
- **Canal**: Alpaca Tech (desarrollador en empresa, equipo de 6)
- **Publicado**: 2026-08-11 · **Duración**: 16:06
- **Dominio provisional**: agentes-de-codigo (orquestación programática de agentes)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Video-experiencia (el mejor del backlog en orquestación práctica) sobre pasar de «usar la IA como tu abuela» (chat) a **flujos programáticos**:

1. **Los agentes mienten por pereza**: documentado por Anthropic — de 50 tareas hizo 35; el megaprompt es «una caja negra»: al fallar solo podés re-tirar la ruleta. Solución: **orquestar por código** — piezas como skills/agentes, flujo/comprobaciones deterministas; invocar **Claude -p headless** (no gasta extra: agota los límites de tu suscripción).
2. **Cron jobs**: «la palabra que se nos olvidó por solo saber decir guardarraíl» — tareas programadas en tu máquina; su centinela despierta a las 9, revisa logs y arregla lo roto por los despliegues.
3. **Autonomía parcial vs total**: el megaprompt esperaba tu aprobado en plan/implementación/MR — «una autonomía de mentira» que se queda quieto en tus reuniones; autonomía total = 4 horas sin freno. La regla a fuego: **«un error se arregla una sola vez»** — no parchear el ticket, ir a la pieza que tomó la decisión (código, skill) y mejorarla: tratar el sistema como producto (medir → iterar).
4. **Más no es mejor**: su deep-reviewer de subagentes (adversariales, escépticos) gastaba 5 % de la suscripción semanal «y la calidad no difería de “revisá este código según los patrones del proyecto”»; cita la doc de Anthropic (esfuerzo max cuesta más y mejora poco; tareas simples sobrepiensan); **ley de Brooks** para subagentes («un agente bien montado le gana a 20 sueltos»); AB testing permanente; la guía de Opus 5 que dice «borré las instrucciones de verificación» — con cada actualización cambia cómo hablarles → revisar una vez al mes; **observabilidad**: JSON por corrida (modelo, herramientas, tiempo, coste) y memoria acotada («si dejas escribir todo, en dos semanas tenés 1.000 líneas de basura que te comen contexto»).
- **Casos reales citados**: Block: agentes a 12.000 empleados en 8 semanas, 6/10 los usan, +40 % código a producción; Interworks: 6 agentes por cron, +50 % tickets resueltos; su empresa (6 personas): bugs y logs 100 % autónomos, features con diseño técnico y QA humanos, «5 funcionalidades en 3 días de sprint»; el remate negro: su CTO les dijo «sobramos».

## Señales de triage

- **Experiencia de 1.ª mano verificable en arquitectura** (flujos, cron, worktrees, JSON de observabilidad) con citas correctas: doc de Anthropic (pereza, effort max, guía Opus 5), ley de Brooks, Block/Interworks (cifras de 2.ª mano sin enlaces — señaladas).
- Coherente con la metodología de esta wiki (piezas pequeñas, iteración con criterio, «un error se arregla una sola vez» = odd discipline).
- Worktrees para agentes paralelos — tip técnico valioso y correcto.
- ASR mínimo («kubes» por keys/cubes, «Chrome» por cron); raw intacto. Sin patrocinios; cliffhanger del CTO para el video anterior.

## Cruces

- **[[agentes-de-codigo]] +1 (fuente central)**: orquestación programática > megaprompt = el corazón del harness de Gentle; [[odd-metodologia]] +1 (un error se arregla una sola vez = disciplina RDD aplicada a flujos), [[delegacion-cognitiva-ia]] +1, [[brecha-junior-ia]] («tu abuela no puede: dividir un sistema en piezas e iterarlas con criterio es de programador»).
- [[routing-por-coste]] +1 (más subagentes/effort max = peor y más caro; AB testing) ↔ WL-594 (la iteración es la mitad de la inteligencia) y WL-541.
- Observabilidad JSON + memoria acotada ↔ [[self-hosting]] (WL-464 Frigate/logs) y la práctica de memoria de la wiki (contexto acotado).
- «Autonomía parcial vs total» ↔ WL-501 (Hermes) y WL-591 (OpenSpec) — clúster de flujos autónomos.
- Alpaca Tech entidad candidata (1.ª fuente, texto plano).

## Veredicto de triage

Excelente cierre de pedido: la fuente más práctica de orquestación de agentes del backlog (cron + headless + worktrees + observabilidad + ley de Brooks), coherente con la metodología de la wiki. Cifras de terceros sin enlaces — señaladas. Consolidación diferida (L12): agentes-de-codigo central, Alpaca Tech entidad candidata.
