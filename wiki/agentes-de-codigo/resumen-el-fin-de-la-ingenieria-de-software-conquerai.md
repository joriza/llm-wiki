# Resumen: El Fin de la Ingeniería de Software (paper de Junfeng Xiao)

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/` (transversal: arquitectura de sistemas con agentes).
- **Fuente original**: `raw/agentes-de-codigo/2026-11-12-el-fin-de-la-ingenieria-de-software-conquerai.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar; «Zhong Feng Tao/Jensen Tao»→Junfeng Xiao) — https://www.youtube.com/watch?v=wtahV7-N_b0 — ConquerAI, 2026-11-07 (16:32).
- **Nota**: fuente 16/18 de la playlist «IA-Nuevas formas de trabajo». Divulgación en español del paper «The End of Software Engineering» (Junfeng Xiao, arXiv, junio 2026) — verificar el paper original antes de citar cifras o afirmaciones como del paper.

## La tesis del paper (radical)

Los agentes de IA «no están simplemente cambiando nuestra forma de programar: están cambiando la **naturaleza del software**». Implicación extrema: para muchos problemas, ni siquiera haría falta construir una aplicación.

## El marco clásico: Brooks (1975)

- **Complejidad esencial**: la que vive en el problema mismo (ejemplo del hotel: ¿qué se devuelve si cancelás una reserva con descuento? ¿con qué tipo de cambio?). Ejemplo numérico de explosión combinatoria: 2 funcionalidades × 2 estados = 4 combinaciones; +descuentos = 8; +multimoneda = 16 — «duplicamos funcionalidades y multiplicamos por 4 las combinaciones».
- **Complejidad accidental**: la de la construcción (escribir código, configurar servidores, conectar DBs).
- Décadas de avances (lenguajes, frameworks, herramientas) atacaron la **accidental**; la esencial sigue ahí. La IA, tal como se usa hoy, «va más rápido pero hace lo mismo: construir software».

## La propuesta del paper: dejar de necesitar el software

Parábola del hotel en tres épocas (mismo viajero, mismo imprevisto, misma petición de devolución):
1. **1826, la posada**: el encargado escucha, interpreta y decide una excepción — resuelto sin software.
2. **2026, la app**: todo automatizado, pero «esta reserva no admite devoluciones»; no hay dónde explicar la urgencia; llama al hotel y una persona tramita la excepción manualmente. «Automatizar las decisiones las convirtió en reglas y procedimientos».
3. **Con un agente conectado al sistema**: el viajero explica su situación; el agente interpreta, consulta reserva y políticas, verifica que tiene autorización para excepciones y tramita la devolución solo. Y la clave: **si necesita una funcionalidad que no existe, escribe el código en ese momento, lo usa y lo descarta** — «no programamos una respuesta para cada posible explicación del viajero».
Conclusión conceptual: no volvemos tecnológicamente al pasado; **recuperamos una delegación más parecida a la humana** (delegar objetivos, no procedimientos) con infraestructura digital. Pasar de «construir software que especifica cómo resolver una situación» a «delegar objetivos en agentes que deciden qué herramientas usar».

## El problema: la IA navega en probabilidades

Si el agente devuelve 2.000 € en vez de 200 € o autoriza una devolución indebida («ha sido la IA»), ¿cómo se garantiza? Los LLM predicen el siguiente token con **distribuciones de probabilidad**, no recuperan verdades de una «base de datos mental»; pequeños factores (instrucción ambigua, contexto confuso, razonamiento previo erróneo, información incompleta, ruido acumulado) desplazan la distribución hacia opciones menos correctas «no porque quiera equivocarse».

## La solución: no confianza, sino diseño del sistema

La analogía de la caja: «¿qué harías en 1826 para que el encargado no toque el dinero? Cerrás la caja con llave» — no hace falta confiar en que nunca se equivoque; se **diseña para que no pueda** hacer lo que no queremos. Los nuevos problemas de ingeniería:

1. **Permisos**: qué herramientas puede usar un agente, a qué datos accede, qué operaciones ejecuta.
2. **Límites de actuación**: p. ej. devoluciones autorizadas pero nunca >200 € sin aprobación humana — «el límite no va en una instrucción del prompt: es una restricción del propio sistema que verifica las respuestas».
3. **Aislamiento**: si el agente debe escribir código, no en los servidores propios — sandbox sin acceso a sistemas críticos.
4. **Verificación**: no confiar en que calculó bien — pruebas automáticas, reglas deterministas, validaciones independientes.
5. **Trazabilidad**: qué datos consultó, qué herramientas usó, qué cambios hizo, qué operaciones requirieron aprobación humana — saber cuándo y por qué se equivocó.

## La nueva demanda de ingeniería (lo que está surgiendo)

- Infraestructuras para ejecutar **miles de agentes simultáneos** (recursos, coordinación).
- **Identidad y permisos** por agente (saber quién hizo cada acción).
- **Seguridad y aislamiento** (que un agente comprometido no comprometa el sistema).
- **Supervisión**: monitorizar miles de agentes autónomos y detenerlos cuando algo sale mal.
- Advertencia: estos problemas **crecen con la inteligencia de los agentes** — «cuanto más inteligentes, más capaces de saltarse las limitaciones. Y esto ya está ocurriendo».

## Veredicto del video

¿El fin de la ingeniería de software? «Obviamente no»: el comienzo de una nueva etapa — «si los agentes van a construir el software del futuro, alguien tendrá que construir los sistemas que hacen posible **confiar** en ellos». El software seguirá existiendo «pero todo será diferente», para quienes se adapten.

## Cruces

- El paper formaliza lo que todo el lote describe empíricamente: la tríada **permisos/límites/verificación** ≈ controles obligatorios y decisiones por riesgo (Eric Risco, fuente 15/18); trazabilidad ≈ brain/evidencia documentada; la caja con llave ≈ el .env bloqueado de GP (fuente 13/18).
- «Delegar objetivos vs. especificar procedimientos» es el marco teórico del nivel 5 de Ruiz (fuente 4/18, Dark Factory con contratos) y de la parábola del «ejército de agentes» de Van Der Henst (fuente 3/18).
- «Cuanto más inteligentes, más capaces de saltarse las limitaciones» refuerza la advertencia de Flores (fuente 5/18): razón no es autoridad; y el gaslighting del agente.
