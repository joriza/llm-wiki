# Resumen: Desarrollo con Modelos IA Muy Pequeños — cómo programar con Gemma 4 E2B y Qwen 3.5 2B

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo`.
- **Fuente original**: `raw/agentes-de-codigo/2026-08-23-desarrollo-con-modelos-ia-muy-pequenos-como-programar-con-gema-4-e2b-y-qwen-3-5-.md` (video en español; transcripción literal por subtítulos automáticos, «Gema/Cuentras»→Gemma/Qwen) — https://www.youtube.com/watch?v=nDN9G6EsAfs — Nichonauta, 2026-08-23 (14:09).
- **Nota**: fuente 17/58 del lote ia-local. Segunda escala del «Reto 2B»: la prueba agéntica en OpenCode (la fuente 14 fue chat puro). Consolidado en [[desarrollo-con-modelos-locales]] y las entidades [[gemma-4]]/[[qwen]].

## El test: desarrollo agéntico real con 2B cuantizados

Ambos modelos 2B (Gemma 4 E2B, Qwen 3.5 2B — Q4, 131k contexto) dentro de OpenCode sobre un proyecto real: landing page con Bootstrap + Bootstrap Icons, tema claro, «muchas secciones, funcional y vistoso», estructura de archivos pedida explícitamente.

## Lo que sí lograron

- **Gemma E2B generó el proyecto completo** (index.html, style.css, main.js) a **150-170 tok/s dentro del contexto grande de OpenCode**, usando las herramientas correctamente — «en una iteración de un modelo tan pequeño, no está mal»: diseño simple y contenido pobre (fiel a la instrucción), responsive funcionando (menú hamburguesa incluido).
- **Diagnóstico colaborativo multi-modelo**: el bug del menú hamburguesa (abre pero no cierra) fue **analizado correctamente por Gemma a la primera**, y Qwen lo **confirmó y aplicó la corrección** — ambos acertaron el fallo a la primera.
- Qwen 2B resolvió bien los iconos de Bootstrap («quizá tiene más conocimiento de dicha librería») y la visión-vía-herramienta: Gemma primero dijo no poder ver imágenes, pero **logró verlas usando la herramienta `read`** — hallazgo curioso: los modelos pueden «ver» imágenes vía lectura de archivos sin adjuntarlas.
- Velocidad sostenida: >130 tok/s en el Qwen aun con 16k de contexto acumulado.

## Lo que falló (y sus lecciones)

- **El conocimiento desactualizado**: iconos inexistentes de Bootstrap, imagen referida que no existe — «no es que no tengan la habilidad, sino que no tienen el conocimiento» → la solución directa es **MCP Context 7** (documentación actualizada), que «ayuda a cualquier modelo: ningún modelo sabe lo actual».
- **Contextos largos degradan la precisión de edición**: varias correcciones de color fallaron editando archivos/clases equivocadas o diciendo «lo hice» sin cambiar nada — «el problema viene cuando son contextos más largos». La corrección que sí funcionó se logró **en una conversación nueva** (contexto limpio).
- **Soluciones globales vs por elemento**: el humano pidió una solución global («todos los elementos con ese fondo → texto blanco») porque corregir elemento por elemento «no tiene sentido» — los modelos chicos tendieron a lo segundo.
- La edición fallida es normal: «dijo que lo hizo correctamente y no cambió nada» — verificar en navegador tras cada cambio (o dotar al modelo de Playwright para que se verifique solo).

## El plan del canal

Siguientes escalas del reto: **MCPs y skills** (conocimiento actualizado) y **Atomic AI** (descomponer cada instrucción en árboles de subtareas atómicas + navegador para auto-verificación), consumiendo «tokens gratis a ~150 tok/s» (Gemma E2B un poco más rápido que el Qwen 2B, según hardware). La síntesis: «a un modelo de 1,28 GB le estamos pidiendo un montón — habilidad tiene, conocimiento no».

## Cruces en la wiki

Absorbido por [[desarrollo-con-modelos-locales]] (nueva sección de hallazgos agénticos); actualiza los perfiles de [[gemma-4]] y [[qwen]]; los remedios son el stack ya documentado: [[opencode]] + MCPs + [[proxy-atomico]] + [[llama-cpp]].

---

**Ver también**: [[desarrollo-con-modelos-locales]] (hallazgos agénticos consolidados) · [[gemma-4]] · [[qwen]] · [[opencode]] · [[resumen-test-modelos-muy-pequenos-2b-hasta-donde-pueden-llegar-con-ia]] (la escala previa, chat puro).
