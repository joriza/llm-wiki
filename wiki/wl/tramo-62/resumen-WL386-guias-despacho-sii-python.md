# WL-386 — Chile cambia las guías de despacho en noviembre: la app de Python que las PYMEs van a pagar

- **Fuente original**: `raw/wl/tramo-62/2026-09-14-chile-cambia-las-guias-de-despacho-en-noviembre-la-app-de-python-que-las-pymes-v.md`
- **Canal**: Código Espinoza — Automatiza tu Vida
- **Publicado**: 2026-09-14 · **Duración**: 05:26
- **Video**: [`ePp-OJJOQfI`](https://www.youtube.com/watch?v=ePp-OJJOQfI) · WL-386 (índice 74 del cache, 4.584 entradas)

## Qué trata

Vídeo-nicho de automatización con Python y venta de servicios (5:26) sobre la **resolución exenta 154 del SII chileno**, que desde el 1-11-2026 obliga a:

- **3 campos nuevos** en la sección de transporte de la guía de despacho electrónica: patente del vehículo/remolque, fecha-hora de salida y fecha de llegada.
- **5 campos endurecidos a obligatorios siempre**: patente, RUN y nombre del chofer, RUN del transportista, dirección de destino. Falta uno → documento mal emitido → multa.
- Vigencia ya postergada una vez (mayo → noviembre 2026); el propio autor aconseja confirmarla el día de usar el video como referencia. Guías exentas de impuesto usan un documento específico con agrupación distinta.

**El problema de fondo**: pymes (distribuidoras, ferreterías, transporte de carga) transcriben a mano desde Excel al portal del SII sin validación previa — un RUN con dígito verificador mal calculado o patente mal formateada puede aceptarse y el error se paga en fiscalización. La mayoría no tiene equipo que siga cambios normativos ni actualización a tiempo.

**La solución que propone**: formulario Python para bodega (<1 min por guía) con validación al vuelo (dígito verificador del RUN, formato de patente), choferes/destinos frecuentes guardados (segunda guía a la misma dirección = dos clics), guía completa en ~20 s sin errores de formato. No reemplaza el sistema de facturación electrónica: captura y valida **antes** de que llegue al sistema certificado que sí firma el DTE — límite explícito que «separa una herramienta útil de un problema legal».

**Modelo de negocio**: validador y formulario base en Patreon; venta en un mensaje de 3 líneas (fecha fija + sistema actual no cubre + formulario exacto); cobro por etapas (captura/validación, luego integración opcional con el facturador específico, que cuesta más por depender del proveedor); instalación en una visita con datos reales; la fecha límite oficial «no es argumento forzado, es real». Cierre: «uno de los nichos donde Python se cobra bien y casi nadie compite».

## Señales de triage

- Contenido técnico-factual concreto (norma, campos, fechas) mezclado con pitch comercial del autor — el detalle normativo es citado de la resolución (verificable contra el SII; la vigencia fue ya movida una vez, el propio video lo advierte).
- **Marco comercial explícito**: el validador está en Patreon (excluido de la síntesis); el video ES la demo de venta. Útil como caso de nicho Python/normativa.
- Duración corta, denso, sin relleno.

## Cruces y consolidación (deferida — L12)

- Dominio destino: `python-practico/` (automatización con Python + venta de servicios; cluster Código Espinoza WL-275/344).
- Entidad **[[codigo-espinoza]]** +1 fuente WL (2.ª-3.ª según conteo de consolidación — confirmada).
- Cruces naturales: [[bases-de-datos]] (validación de datos antes del sistema), automatización-normativa (RPA tributario), nicho-consultoria-python; contraste con WL-344 (Sheets/límites) y WL-348.

## ASR (normalizado solo aquí)

RUN (ASR «root» = Rol Único Nacional/RUT), chofer (ASR «chóer»), SII (Servicio de Impuestos Internos), DTE/DTE certificado, Patreon, resolución exenta 154.
