# TheDebugDuck

- **Tipo**: página de entidad (canal).
- **Dominio**: `informatica` (+1 fuente histórica en `informatica-teoria`).
- **Creada**: 2026-11-15 (consolidación de la ventana Vs + Docencia T4 — umbral ≥2 verificado por conteo real: 3 fuentes de la ventana + 1 previa).
- **Fuentes**: [[resumen-FAV-448-monolito-vs-microservicios-thedebugduck]] (monolito vs microservicios) · [[resumen-FAV-465-pool-conexiones-bd-escalar-usuarios-thedebugduck]] (connection pool) · [[resumen-FAV-466-error-uuids-rendimiento-bd-thedebugduck]] (UUID vs serial como PK) · [[resumen-tu-api-no-debe-enviar-archivos-thedebugduck]] (APIs que no deben enviar archivos — informatica-teoria) · [[resumen-WL261-transacciones-sql-aislamiento-thedebugduck]] (WL-261, transacciones SQL y niveles de aislamiento — 5ª fuente WL, T48 2026-11-16: total 5 fuentes).
- **Ver también**: [[arquitectura-software]] · [[bases-de-datos]].

## Identidad

**TheDebugDuck** — canal en español de arquitectura y backend con un formato muy definido: **puzzle de apertura con opciones múltiples** (¿qué tamaño de pool? ¿qué PK?) cuya respuesta contraintuitiva estructura todo el video, analogías consistentes (el valet parking, las taquillas del centro de paquetes, el edificio vs el taxi) y **casos industriales verificables** citados con fuente (Prime Video −90 % de coste, Instagram y los UUID, Twitter/Snowflake e `id_str`, HikariCP y la wiki de PostgreSQL).

## Sello observado en sus fuentes

- **La intuición como enemigo didáctico**: más conexiones no es más servicio (FAV-465); «UUID se ve más seguro» tumba el B-tree (FAV-466); «microservicios desde el día 1» es el mito del escalado (FAV-448). En los tres casos la respuesta correcta es la C que nadie elige.
- **Rigor documental**: cada afirmación fuerte lleva su precedente público (blog de ingeniería, expediente, documentación oficial) — el mismo estándar del canal de historia [[archivo-del-futuro]] aplicado a la arquitectura contemporánea.

## Notas

- Sus fuentes nucleares del dominio son la mitad «operación» de [[bases-de-datos]] y el tercio arquitectura de [[arquitectura-software]] — el canal mejor representado de la ventana en conceptos.
**Actualización 2026-11-16 (consolidación T90, pedido L39 — WL-536)**: [[resumen-WL536-orm-no-es-lento-thedebugduck]] (`informatica-teoria/`) — rendimiento de ORMs: el `include` masivo como antipatrón simétrico del N+1 (producto cartesiano vs una query por fila), sesión/dirty checking como coste de escritura, diagnóstico por logs de SQL y criterio ORM-escrituras vs proyección-lecturas; casos GitLab 2021 (>20k queries) y Stack Overflow/Dapper citados de 2.ª mano sin enlaces — señalados. Nota IA: los LLM replican los includes gigantescos del proyecto si no se especifica lo contrario ([[delegacion-cognitiva-ia]], [[brecha-junior-ia]]). El sello del canal se confirma: analogía memorable («pides una lámpara, el contrato dice hogar») + casos industriales (aquí 2.ª mano, a diferencia de los FAV con fuente primaria).
**Actualización 2026-11-17 (consolidación T97 relevo 2, pedido L40 — WL-575, `agentes-de-codigo/`)**: [[resumen-WL575-codigo-limpio-arruinando-thedebugduck]] — contra la sobreingeniería: «serio ≠ correcto» (la IA entrenada en código enterprise genera patrones por defecto — hipótesis señalada), genealogía GoF/EJB/Spring, Knight Capital y healthcare.gov como desastres de complejidad cognitiva, Sandi Metz «duplicar es más barato que la abstracción incorrecta», regla de tres y «si es un quizá, es deuda técnica disfrazada de arquitectura». La fuente más sólida del clúster sobreingeniería del canal (par WL-402).
