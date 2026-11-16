# Chile cambia las guías de despacho en noviembre: la app de Python que las PYMEs van a pagar

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ePp-OJJOQfI)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-09-14
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 05:26

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Desde el primero de noviembre de 2026, esta guía de despacho, tal como la ves, queda inválida. La resolución exenta 154 del Servicio de Impuestos Internos agrega tres campos nuevos a la guía de despacho electrónica y endurece otros cinco para que sean obligatorios siempre. Una distribuidora que emite 60 guías al día tendría que llenar todo eso a mano todos los días. Por eso te voy a mostrar la aplicación que armé para esto. ¿Qué exige la norma en detalle y cómo se le cobra a un cliente real antes

[00:27] de que se acabe el plazo. La resolución exenta 154 del Servicio de Impuestos Internos agrega tres campos nuevos en la sección de transporte de la guía de despacho electrónica. Son estos: la patente del vehículo o remolque, la fecha y hora de salida y la fecha de llegada. También endurece la condición de uso de otros cinco campos que ahora son obligatorios siempre. la patente, el root y nombre del chóer, el root del transportista y la dirección de destino.

[00:55] Tres campos nuevos y cinco endurecidos, todos obligatorios. Así es, sin excepción. La fecha de entrada en vigencia ya fue postergada una vez de mayo a noviembre de 2026. Conviene confirmarla el mismo día que uses este video como referencia. Para las guías exentas de impuesto, existe además un documento específico dentro del sistema de facturación electrónica que agrupa estos campos de forma distinta al resto.

[01:17] No es opcional. Si falta uno solo de los campos exigidos, el documento queda mal emitido y la empresa asume la multa. Esto afecta directamente a distribuidoras, ferreterías, empresas de transporte de carga y cualquier pyme que mueva mercadería entre bodegas o hacia clientes. Pero la norma en sí misma no es el problema. ¿Cómo trabaja hoy la mayoría de estas empresas? Alguien en bodega anota los datos del despacho en una planilla de Excel. Otra persona muchas veces horas después abre el

[01:43] portal del Servicio de Impuestos Internos y transcribe cada campo a mano. Si el root del transportista tiene un dígito verificador mal calculado o la patente no cumple el formato correcto, el sistema puede aceptar el error igual y ese error se paga en la fiscalización.

[01:56] El Excel de siempre no alcanza. No es un problema de que falten campos en una planilla, es un problema de que nadie está validando esos datos antes de que lleguen al portal oficial. Y aquí es donde la explicación obvia empieza a fallar. ¿Va a llegar esa actualización sola a tiempo a una empresa sin equipo de desarrollo? Para una parte importante de las pymes chilenas que usan sistemas simples o planillas propias, la respuesta es no. Algunos proveedores grandes van a incorporar estos campos

[02:21] con validación incluida antes de noviembre, pero la mayoría no tiene equipo dedicado a seguir cada cambio normativo del servicio de impuestos internos a tiempo y la fecha no se mueve por ellas. Esa brecha entre lo que exige la norma y lo que su software actual entrega. Es exactamente donde cabe una aplicación hecha a la medida. Construir un formulario simple, hecho con Python, pensado para que alguien en bodega lo llene en menos de un minuto por guía. El campo del root del transportista valida

[02:47] el dígito verificador al momento de escribirlo, no después. El campo de la patente revisa el formato antes de dejar avanzar el formulario. El formulario también captura la fecha y hora de salida y la fecha de llegada, los campos que antes no existían. Ahora hay que llenarlos antes de que el camión salga de bodega, no después. Los chóeres frecuentes y los destinos habituales quedan guardados. Así que la segunda guía a la misma dirección se llena con dos clics, no con varios campos

[03:13] escritos. De nuevo, el resultado es una guía completa con los datos exigidos, generada en unos 20 segundos y sin un solo error de formato. Esa diferencia entre 20 segundos validados y varios minutos de transcripción manual con riesgo de multa es el valor completo que esta aplicación entrega desde el primer día de uso. 20 segundos validados contra varios minutos de transcripción manual con riesgo de multa. La cuenta la hace solo el cliente. El validador y el formulario base están en Patreon. Ahora,

[03:39] esta aplicación no reemplaza el sistema de facturación electrónica del cliente, se conecta con él. Según el proveedor que use la empresa, el formulario exporta los datos como archivo o los envía directo por su interfaz de programación. El sistema autorizado que ya tienen sigue emitiendo el documento tributario final. Queda un historial local de cada guía y un reporte diario le muestra al dueño del negocio cuántos despachos salieron y si alguno quedó pendiente. Y hay que ser explícito con

[04:04] un límite. Esta aplicación no firma el documento tributario electrónico cuando eso le corresponde legalmente al sistema certificado de la empresa. Su trabajo es capturar y validar los datos antes de que lleguen a ese sistema, no reemplazar la certificación. Ese límite, dicho con claridad es lo que separa una herramienta útil de un problema legal para tu cliente y eso, dicho así de claro, es justamente lo que la hace vendible. El encargo se vende con un mensaje de tres líneas. La norma cambia

[04:30] en una fecha fija. Su sistema actual probablemente no la va a cubrir a tiempo y aquí hay un formulario que resuelve exactamente esos campos con validación incluida. Los clientes obvios son distribuidoras medianas, ferreterías con despacho propio y empresas de transporte de carga que emiten guías todos los días, no una vez al mes. El precio se cobra por etapas. Primero, la etapa de captura y validación como la que acabas de ver. Después, una etapa opcional de integración con el sistema de

[04:55] facturación específico del cliente. Esa segunda etapa casi siempre cuesta más porque depende del proveedor. La instalación se hace en una sola visita con los datos reales del cliente cargados ahí mismo. Y la fecha límite no es un argumento de venta forzado, es real, está en una resolución oficial y eso hace que el cliente decida rápido.

[05:13] ¿Cuántos clientes tuyos emiten guías todos los días y siguen copiando esto a mano? probablemente más de los que crees. Este es uno de los nichos donde Python se cobra bien y casi nadie compite.
