# La verificación como valor residual humano

- **Tipo**: página de concepto (tema transversal del lote «IA-Nuevas formas de trabajo»).
- **Fuentes (8)**: [[resumen-los-6-niveles-de-programar-con-ia-el-90-no-pasais-del-3-joaquin-ruiz]], [[resumen-estamos-mergeando-codigo-que-nadie-entiende-nerdearla-jp-flores]], [[resumen-laburas-las-mismas-horas-con-ia-y-terminas-frito-por-que-gentleman-programming]], [[resumen-inteligencia-artificial-7-reglas-si-recien-empezas-a-programar-gentleman-programming-vods]], [[resumen-por-que-la-mayoria-de-los-programadores-estan-perdiendo-el-tiempo-rob-guldenaar]], [[resumen-por-que-los-vibe-coders-destrozan-todas-las-apps-que-tocan-victor-robles-web]], [[resumen-como-hacer-que-una-ia-construya-el-proyecto-que-tu-quieres-eric-risco]], [[resumen-el-fin-de-la-ingenieria-de-software-conquerai]] (con ecos en Taft, Ruiz-HTML, Falcón).

## La tesis del lote

Cuando generar código se abarata, **el valor se desplaza a saber si lo generado está bien** — y a diseñar los sistemas que lo garantizan sin confiar en el modelo. Formulaciones de cada fuente:

- **La trampa del nivel 2** (Ruiz): la IA inventa su «salida esperada» (coste 7 vs 10) — si se copia a un test, validás un error. «La IA no escribe sus propios tests: te va a hacer trampa».
- **El gaslighting del agente** (Flores): pedirle que explique sus cambios es inútil («son buenísimos mintiéndote»); revisar con el mismo agente = el profesor que corrige su propia tarea → revisión adversarial con otras familias de modelos + parte determinística verificable.
- **El checklist del criterio** (GP): «¿puedo explicar por qué funciona? ¿qué pasa con la entrada rara? ¿quién más consume esto? ¿hay predicción verificable o solo mi sensación?»; el **test en rojo** que demuestra una hipótesis; «un test vale más que una lectura atenta»; evidencia, no confianza.
- **«Solo pasar tests no basta»** (Risco): el agente pasa 4.500 tests y entrega un Frankenstein — hace falta evidencia documentada de cada requisito y decisiones humanas por riesgo.
- **La caja con llave** (paper Xiao): no confiar en que el agente no se equivoque — diseñar para que **no pueda**: permisos, límites en el sistema (no en el prompt), aislamiento, verificación determinista, trazabilidad.
- **El costo de no verificar** (Robles): «no pagamos por escribir código, pagamos por comprender el caos» — la arquitectura degradada vuelve la verificación imposible.
- **El costo de verificar de más** (GP brain fry / Falcón): notificaciones solo en Blocked, pocas horas de supervisión intensiva — la atención humana es el recurso escaso y se raciona.

## El patrón compartido

Especificar → predecir (hipótesis) → verificar con test/evidencia → decidir por riesgo (arreglar directo vs. escalar al humano) → registrar. Es la misma forma que [[odd-metodologia]] ([[desarrollo-con-modelos-locales]] ya lo observaba: «tareas acotadas, haz esto y no hagas nada más») y que el paper teoriza como «delegar objetivos, no procedimientos».

**Ver también**: [[spec-driven-development]], [[evaluacion-de-llms]], [[agentes-de-codigo]], [[experimento-metr]].
