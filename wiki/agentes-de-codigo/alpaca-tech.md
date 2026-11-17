# Alpaca Tech

- **Tipo**: página de entidad (canal).
- **Dominio**: `agentes-de-codigo/`.
- **Actualizado**: 2026-11-11 (primera fuente; playlist «IA-Nuevas formas de trabajo»).
- **Fuentes**: [[resumen-asis-programo-con-ia-tras-500-horas-alpaca-tech]] (2026-09-22).

Canal en español conducido por **Jesús**, ingeniero que documenta cómo trabaja con IA en su empresa tras «+500 horas». Perfil: **ingeniería de flujos agénticos** vista desde la práctica industrial — no benchmarks ni herramientas sueltas, sino la arquitectura completa de un sistema propio («Forge», editor/flujo en Rust escrito por la IA) y sus métricas reales: productividad ×4, feature a producción en 1-2 días, coste (suscripción 200 €/mes), y las sombras (velocidad que desborda al equipo de producto, front/pixel-perfect sin resolver, no-determinismo residual).

Aporte distintivo al corpus: el término y la arquitectura del **«flujo programático»** — bucles de corrección viviendo en código («el cómputo de la IA con la correa de la programación»), criterios de aceptación **ejecutables** (verificación programática, no del criterio de un agente), un agente por subtarea con libro de tareas por SHA de commit, y la autocrítica de que su sistema «es un SDD con esteroides» frente a usar directamente [[odd-metodologia]] (Gentle AI) para uso individual.

## Cruces

[[agentes-de-codigo]] · [[desarrollo-con-modelos-locales]] · [[multiplexores-agentes]] · [[odd-metodologia]].
**Actualización 2026-11-17 (consolidación T97 relevo 3, pedido L40 — WL-600, 2.ª fuente WL)**: [[resumen-WL600-usas-la-ia-como-tu-abuela-alpacatech]] — orquestación programática de agentes: pereza documentada de Anthropic (35 de 50 tareas), megaprompt = caja negra, flujo por piezas (skills/agentes) con Claude -p headless, cron jobs («la palabra que se nos olvidó»), worktrees para agentes paralelos, autonomía parcial vs total, «un error se arregla una sola vez», ley de Brooks para subagentes, observabilidad JSON por corrida y memoria acotada; casos Block (12.000 empleados, +40 % código) e Interworks (+50 % tickets) citados sin enlaces — señalados; su empresa: 5 features en 3 días de sprint con QA humano. El canal confirma su nicho: aplicar ingeniería clásica (cron, worktrees, observabilidad, Brooks) a los agentes — el complemento práctico de [[agentes-de-codigo]] y [[odd-metodologia]].
