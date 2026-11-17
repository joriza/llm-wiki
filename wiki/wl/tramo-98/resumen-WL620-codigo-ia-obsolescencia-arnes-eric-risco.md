# WL-620 — Tu código de IA no es tan bueno como crees

- **Fuente original**: `raw/wl/tramo-98/2026-11-17-tu-codigo-de-ia-no-es-tan-bueno-como-crees.md` ([Vídeo](https://www.youtube.com/watch?v=If_KIOuQTkM))
- **Canal**: Eric Risco | Inteligencia Artificial (1.ª fuente; autor de RSC Harness/RSC Brain — 2.ª pieza del tramo sobre su proyecto, tras WL-611)
- **Publicado**: 2026-11-17 · **Duración**: 18:51
- **Dominio**: metodología de desarrollo con agentes (candidato a agentes-de-codigo en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Tesis: los modelos mejoran tan rápido que gran parte del andamiaje metodológico de 2025-26 se vuelve obsoleto; lo único que no se resuelve «dentro del modelo» es la **memoria persistente y continua**.

1. **Los modelos comen código**: Astra, Sol, Fable 5.2, Opus 5 editan video y generan video «solo con código» (niveles de Dark Souls, su propio video editado por Opus; Genie 3 de Google generando mundos en tiempo real vs. un equivalente procedural por código) — se plantea si los modelos de generación de imagen/video tienen sentido. La IA es más barata por capacidad (lo de GPT-4 en 2024 hoy corre gratis en tu portátil) pero gastamos más: **bucles agénticos** de llamadas múltiples en paralelo, horas de trabajo.
2. **El sistema de hace 6 meses ya no sirve**: «el que usabas hace 6 meses es distinto del de hoy y del de dentro de 6 meses». Anécdota central: la skill de diseño Taste no le daba resultados → **la borró y pidió el diseño con un prompt simple** → «la mejor página que he visto diseñar a un agente» — «la capacidad del modelo era superior a lo que la skill le imponía». Concepto: modelo = caballo desbocado; arnés lo controla; y el **meta-arnés** («los anteojos del caballo»: memoria, estructura paso a paso) fue indispensable con Opus 4.x pero con Opus 5/Astra/Fable **limita la creatividad** de lo que ya saben hacer.
3. **Demolición de las metodologías**: SDD «demasiado rígido, genera demasiada documentación, vueltas inútiles»; ASDD (su propia propuesta sobre spec-driven) «menos rígido pero demasiado lento» por la revisión en cada micro-implementación; ODD y FTD «más o menos similares» (FTD con la misma libertad de ODD pero registrando todo en el «cerebro»). Pronóstico: en 6 meses, con 1-2 iteraciones más de los modelos entrenados dentro de sus arneses, «dejarán de tener totalmente sentido». (Nota: la sigla ODD aquí = una variante spec-driven distinta de la metodología ODD de esta wiki — homonimia señalada.)
4. **Lo que no se arregla: la memoria**. Contra el «trabajas mal si usas una sola sesión»: compaction con pérdida evidente (de 1 M a ~200k tokens), tokens arrastrados entre features no relacionadas, y **caché fría** (en Claude Code la caché dura 1 hora; volver después recarga 400-600k tokens «sin ninguna utilidad»). Trucos: `/context` con límite de compactación a 600k; y generar con el agente un **prompt de traspaso** para abrir una sesión nueva por feature (patrón copiado de «Tet Code»). Prueba propia pre-video: Claude Code, Codex y OpenCode olvidaron las decisiones de la primera sesión en 2 de 3 sesiones nuevas (primary keys no-autonuméricas, timeout de 20 s) — «efecto bola de nieve: pierdes el control del proyecto».
5. **La solución (su producto)**: RSC Harness (hooks + documentación persistente en OKF/Open Knowledge Format, grafo documental sobre el patrón LLM Wiki de Karpathy: CLAUDE.md → AGENTS.md → índice → páginas relacionadas — «ya no hace falta explicarle nada»); demo destacada: 30+ microservicios, 10+ frontends, 12+ bases de datos y 8 servidores analizados en 20 minutos → **topología interactiva completa** en HTML filtrable («algo que nunca habíamos conseguido documentar a mano»). Limitación: ficheros Markdown en Git (rama RSC/knowledge) no escala — sin permisos ni multi-cerebro → **RSC Brain**: servidor con BD conectable por MCP, múltiples brains, permisos por usuario/proyecto, aprobación de cambios, y agentes externos (Grokbot, «MIOS») conectados al cerebro del proyecto. Cierre promocional honesto («tiene errores, hay issues y PRs de la comunidad»).

## Señales de triage

- **Tesis fuerte y verificable en tendencia** (los modelos post-entrenados con su arnés absorben las metodologías — mismo mecanismo que WL-614 describe como «bucle arnés↔entrenamiento»): la predicción de caducidad de SDD/ASDD/ODD/FTD en 6 meses es falsable a corto plazo — valiosa como registro.
- **Conflicto de interés máximo**: el video concluye que necesitas exactamente el producto del canal. Contrapesado por honestidad (errores reconocidos, comunidad en GitHub) y por la demo concreta (topología 20 min), pero el chequeo de las críticas a SDD/ASDD/ODD es auto-servido — señalado.
- La distinción arnés/meta-arnés/anteojos y la prueba de memoria de sesión (2 de 3 fallos) son aportes útiles e independientes del producto.
- ASR normalizado solo aquí («Carpi/Carpac» → Karpathy, «Cloud Code/Cloud/Coutx» → Claude Code, «herness» → harness, «metarness» → meta-arnés, «taste» skill de diseño, «OKF» → OKF); raw intacto. Sin patrocinios externos; funnel a comentarios fijados.

## Cruces

- Consolidación aplazada: tríada del tramo con WL-611 (RSC Brain demo) y WL-614 (arnés/bucle entrenamiento — la misma predicción de obsolescencia del andamiaje); [[odd-metodologia]] (aclarar la homonimia ODD); WL-612 (memoria en markdown vs. servidor).

## Veredicto de triage

Tesis provocadora bien argumentada (el progreso del modelo devora el andamiaje; solo la memoria persistente queda) con conflicto de interés evidente — señalado. Segunda fuente del mismo autor en el tramo: candidata a fusión con WL-611 en consolidación. Sin consolidación (aplazada).
