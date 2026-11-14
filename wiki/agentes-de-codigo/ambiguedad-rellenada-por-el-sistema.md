# Ambigüedad rellenada por el sistema

- **Tipo**: página de concepto.
- **Dominio**: `agentes-de-codigo`.
- **Creada**: 2026-11-14 (consolidación de los tramos 5-6 del backlog «Ver más tarde»).
- **Fuentes**: [[resumen-WL078-ninguna-metodologia-correcta]] (WL-78, Eric Risco — fuente principal), [[resumen-WL068-burnout-programadores-era-ia]] (WL-68), [[resumen-WL047-superagente-deepseek]] (WL-47, en tránsito tramo 4) y [[resumen-WL075-ia-tablillas-cuneiformes]] (WL-75 — el contraste del dominio cerrado).
- **Ver también**: [[odd-metodologia]] · [[elephant-goldfish-model]] · [[burnout-era-ia]] · [[comunicacion-en-confrontacion]].

## El concepto

Cuando la especificación deja un hueco, **el sistema lo rellena con una decisión que nadie pidió** — y esa decisión es tan ejecutable como las pedidas. La ambigüedad no resuelta no bloquea al agente: se convierte en comportamiento.

## La evidencia del clúster

- **WL-78 (el caso OAuth)**: con la spec «login seguro», el agente añadió doble OAuth y Google Authenticator sin que nadie lo pidiera — técnicamente impecable, funcionalmente no solicitado; también improvisación y duplicación en proyecto grande (documentado desde Opus 4.5). El diagnóstico: SDD verifica tests contra criterios ambiguos, y el agente completa el criterio por su cuenta. La respuesta del propio video: todo lo no-decidible-por-agente va a una **lista explícita** (bloqueante salta; aprobación humana = «revisar después», no lo hace por vos); no-ship con riesgo de negocio.
- **WL-68 (el botón psicodélico)**: el agente entrega la funcionalidad «técnicamente perfecta» que el cliente no pidió — la supervisión humana crece más rápido que la autonomía; «la IA no supervisa a la IA».
- **WL-47 (la arquitectura como respuesta)**: Gate determinista + ticket con mandate (registro de alcance) + router que solo delega + default **observe** — la ambigüedad se acota estructuralmente, no se confía a la buena voluntad del modelo.
- **WL-75 (el contraste)**: en un dominio cerrado con corpus finito (Fragmentarium), la ambigüedad se detecta y verifica; en dominio abierto, el hueco lo rellena el sistema ([[ia-como-reconstruccion]] tiene el caso donde sí funciona).

## Parentesco con ODD

WL-78 describe ODD desde fuera («si falla la clasificación falla todo») y Eric Risco confirma el diagnóstico que motivó ODD: la pérdida de control por ambigüedad de specs + asunciones no pedidas. La convergencia ASDD ≈ verificación dentro de cada tarea es la misma lección de [[odd-metodologia]] (clasificación + verificación por tarea) vista por un autor externo. El mismo principio en producto: «si la regla vive dentro del agente, se la puede saltear» (WL-82, [[gentleman-programming]]) — las reglas van fuera del modelo.

## En la comunicación humana

El mismo mecanismo en la entrevista pública: la palabra con carga («¿qué le recriminarías?») si no se recorta, acepta el encuadre del otro ([[comunicacion-en-confrontacion]]) — quien no recorta la spec, pierde la decisión.

## Cruces

- **WL-78 ↔ WL-68**: la ambigüedad rellenada como raíz común del burnout de supervisión.
- **WL-47**: la respuesta arquitectónica (mandate + observe).
- **WL-75**: la condición de dominio cerrado donde la ambigüedad es tratable.
- **WL-82**: «reglas fuera del agente» como la implementación operativa del principio.
- **WL-80** ([[lenguaje-rust]]): el ownership del kernel Linux («nadie obligado a Rust, nadie con veto») como el debate institucional del mismo problema.
