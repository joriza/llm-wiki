# Programar con agentes ya no basta: monta tu Software Factory

- **Fuente original**: `raw/ia-uso-practico/2026-10-23-programar-con-agentes-ya-no-basta-monta-tu-software-factory.md` ([Vídeo en YouTube](https://www.youtube.com/watch?v=p6nnqerea7w))
- **Canal**: Eric Risco | Inteligencia Artificial
- **Publicado**: 2026-10-23 · **Duración**: 17:21 · **Idioma**: es (subtítulos automáticos, normalizados en este resumen)
- **Recopilado**: 2026-11-15 (tramo 22, WL-180)

## Qué trata

Continuación del video del arnés RSC (WL-178, mismo canal): pasa de «programar con agentes» (donde el humano es el cuello de botella chateando) a montar una «AI Factory» — un pipeline repetible y auditable con IA dentro, ilustrado con la Software Factory propia del autor (triage de errores de Sentry a PR) y, extensamente, con su Content Factory de edición de video. Fuente de primera mano con autopromoción del próximo proyecto «RSC Factory» (señalada).

## Ideas principales

1. **Del chat a la fábrica** (~[00:01]): chatear con un agente mantiene el cuello de botella en el humano; una AI Factory es «cualquier proceso repetible y auditable con IA dentro» — entra trabajo, hay pasos que no requieren al humano, sale resultado.
2. **Dos condiciones de admisión** (~[03:25]): el proceso debe ser repetible (misma tarea, mismo camino) y auditable (cada paso deja rastro para localizar dónde falló).
3. **Tres tipos de pasos** (~[02:43]): código (determinista, lo repetible), agentes (deciden cómo según el input) y revisores humanos (aprobación puntual).
4. **El brain como pieza crítica** (~[04:10]): sin memoria de contexto persistente, cada tarea empieza de cero (ej.: el agente «elige» MySQL sobre la decisión ya tomada de Postgres); el brain de RSC registra cada decisión y es consultado antes de escribir spec o código.
5. **Pipeline de la Software Factory del autor** (~[05:36]): entrada unificada (errores de Sentry, issues de GitHub, tareas por voz) → **spec writer** (Opus con skills SDD/FTD de RSC, consulta el brain) → **builder** (Opus, rama/worktree propia, TDD: test primero hasta pasar) → **4 revisores paralelos con modelos distintos y contexto limpio** para evitar autossesgo: seguridad (GPT/Codex), UX, UI (modelo con computer use) y consistencia de código (modelo menor) → **approver** (Opus) que devuelve al builder hasta que las 4 revisiones pasan.
6. **Puerta de aprobación humana graduada** (~[11:11]): un agente clasifica si el cambio es trivial (color de un botón → PR directa a main) o crítico (backend, base de datos, core de negocio → PR al humano); se refuerza con hooks/código, no solo con el prompt, y exige modelo grande porque un error de clasificación rompe la aplicación.
7. **Ejecución paralela** (~[12:24]): cada tarea con su identificador, ramas y tests propios — varias tareas avanzan simultáneamente.
8. **Ampliación más allá del código** (~[13:12]): conectar la factory a Slack permite que marketing/ventas sin saber programar pida landing pages o cambios de textos, y la propia factoría decide si requiere aprobación humana; el autor afirma que su canal edita los videos con una «Content Factory» (audio bruto → recorte de silencios y errores → transiciones → miniaturas → cola para YouTube).
9. **Referencias externas citadas sin verificación** (~[15:32], señalado): ingenieros de OpenAI con >1 M líneas generadas sin escribirlas a mano; Stripe con >1000 PRs/semana hechas por agentes.

## Cruces

- Mismo canal: continuación directa de WL-178 (RSC, memoria y skills); comparte el brain, las skills SDD/FTD y la constitución — el pipeline aquí descrito es la orquestación por encima.
- ia-uso-practico/agentes-de-codigo: cruza con [[agentes-de-codigo]] (multi-agente con modelos heterogéneos y revisión cruzada), WL-165 (Harness², fuente secundaria sobre el mismo concepto de fábrica de software con agentes) y WL-177 (la puerta graduada con hooks conecta con su advertencia de agentes bancarios sin control).
- TDD-forzado por el builder y revisores con contexto limpio conecta con la práctica de tests del flujo ODD documentado ([[odd-metodologia]]).

## Notas de triage

- Primera mano en la parte descriptiva (el pipeline propio está montado y en producción según el autor), pero las cifras de terceros (OpenAI, Stripe) y las capacidades de modelos («Opus 5.5», «Sol», «Astra») son afirmaciones no verificadas — señalado.
- Fuerte autopromoción al cierre (like/suscripción/comentarios para el «RSC Factory» open source futuro); excluida de la síntesis.
- Nombres ASR: «Cloud Code» (= Claude Code), «Sonet» (= Sonnet), «N8N» (= n8n), «Sol»/«Astra» sin identificación segura con modelos reales.
- **Entidad**: [[eric-risco]] — pareja directa de WL-178 (la factory industrializa el RSC); cruce con WL-165 (Harness², recursión sin reentrenar) y WL-177 ya anotado (consolidación T39, 2026-11-15).
