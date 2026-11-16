# WL-536 — Tu ORM no es lento, lo estás usando mal

- **Fuente original**: `raw/informatica-teoria/2026-08-23-tu-orm-no-es-lento-lo-estas-usando-mal.md` ([Vídeo](https://www.youtube.com/watch?v=sOsCAIbhxOY))
- **Canal**: TheDebugDuck (5.ª fuente WL; entidad de canal candidata — ver WL-261 nota)
- **Publicado**: 2026-08-23 · **Duración**: 15:51
- **Dominio definitivo**: informatica-teoria (consolidación T90, 2026-11-16). Provisional: informatica-teoria / python-practico (bases de datos, ORM)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Explicación didáctica de por qué los problemas de rendimiento con ORMs son de **uso, no de la herramienta**, a partir de un caso concreto (worker de emails que colapsa en producción por un `find` con `include` masivo):

1. **El caso**: un email de «pedido enviado» solo necesita nombre, tracking y productos, pero el código reutiliza el `find` con `include` de customer/orders/items/product/reviews que ya existía en el proyecto — local (1 cliente) va bien; producción arrastra años de historial.
2. **Qué hace realmente un ORM**: sesión/contexto de persistencia (Hibernate «persistence context», EF «change tracker»), mapa por identidad, dirty checking — útil para escribir, costoso para leer; analogía de la mudanza («pides una lámpara, el contrato dice hogar»).
3. **Patrón N+1**: lazy loading dentro de un bucle = una query por fila; diagnóstico: activar el log de SQL y mirar. Antipatrón simétrico: el `include`/`join fetch` gigante → producto cartesiano y objetos inútiles en memoria.
4. **Casos reales citados**: GitLab 2021 (>20.000 queries en un endpoint de runners por hidratación de Active Record; fix: quitar hidratación innecesaria → <100) y Stack Overflow (nacimiento de Dapper: SQL a mano parametrizado en lecturas de alto tráfico, 200 ms → 50 ms) — **citas de 2.ª mano sin enlaces en pantalla — señaladas**.
5. **Criterio final**: ORM para escrituras complejas transaccionales; proyección ligera / `as no tracking` / select explícito / DTO para lecturas simples; SQL nativo siempre parametrizado; el code review debe preguntar «qué SQL va a generar», no si «se lee bien». Nota IA: los LLM generan `find` con includes gigantescos por defecto (ejemplos de internet) si no se especifica lo contrario.

## Señales de triage

- Divulgación técnica sólida con marcos concretos (Hibernate/EF/Prisma/TypeORM/Django) y casos reales bien conocidos; **GitLab y Stack Overflow citados sin enlaces ni números verificables en el video — señalado como 2.ª mano** (ambos incidentes son reales y documentados públicamente, pero el video no los referencia).
- Sin patrocinio; cierre con llamada a comentarios/suscripción (estándar del canal).
- ASR: «inclu danidad» (por «include anidado»), «Link to SQL» (por LINQ to SQL), normalizado solo aquí; raw intacto.

## Cruces

- [[bases-de-datos]] +1; [[routing-por-coste]] como eco («pide solo lo que necesitas», presupuesto por consulta).
- N+1/lazy loading ↔ WL-252 (SQL), WL-246 (arquitectura API), WL-348 (límites de herramientas).
- El punto IA («el modelo replica el include del proyecto si no especificas») ↔ [[delegacion-cognitiva-ia]], [[brecha-junior-ia]] (el senior debe saber qué SQL se genera), WL-228 (context rot en generación de código).
- 5.ª fuente TheDebugDuck (WL-261 nota previa) → entidad de canal confirmada para consolidación.

## Veredicto de triage

La mejor pieza técnica del tramo: caso-verosímil, mecánica interna de ORMs explicada con analogía memorable, diagnóstico accionable (logs) y criterio ORM-vs-SQL por tipo de operación; las cifras de GitLab/Stack Overflow son 2.ª mano — señaladas. Conservar como informatica-teoria/python-practico; confirma a TheDebugDuck como canal recurrente.

## Consolidación (T90)

Dominio definitivo: `informatica-teoria/` (primera opción registrada; BD/ORM junto a WL-261 del mismo canal). Entidad [[thedebugduck]] actualizada (+1). Cruces en texto: [[bases-de-datos]], [[delegacion-cognitiva-ia]], [[brecha-junior-ia]], WL-252/246/348/228. Casos GitLab/Stack Overflow 2.ª mano — señalados.
