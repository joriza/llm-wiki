# A mi amigo le pagaron $2,500 por arreglar en 20 minutos lo que otro hizo en 3 meses

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=x9Du54J0EaE)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-09-22
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 07:32

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] 2,500 dólares, 20 minutos y el cliente le dio las gracias. A mi amigo Martín le pagaron 2,500 por 20 minutos de su trabajo. No escribió una aplicación, simplemente agregó en 20 minutos lo que otro proveedor tardó 3 meses en construir y nunca pudo hacer rápido.

[00:17] Y no fue suerte, fue un método de tres pasos que puedes copiar la próxima vez que heredes un código lento. Al final te cuento cuánto estuvo a punto de devolver Martín por vergüenza y por qué no lo hizo. Este no es un caso de LinkedIn, es el sistema de una distribuidora, el log que me Martín me mandó y el mismo patrón que reproduje en mi computadora para que lo veas [carraspeo] correr. 6 de la tarde, último día del mes y la contadora de una distribuidora aprieta generar cierre, se va a su casa y lo revisa al

[00:45] día siguiente. Pero el reporte tarda 40 minutos. Si hay un error de en una en una factura, lo corrige y pierde otro día. El sistema lo hizo otro proveedor, 3 meses de desarrollo, funciona, no se cae, tiene carpetas superordenadas, funciones supercortas y hasta te cierro, pero cada cierre es una tortura. Mi amigo Martín lleva 2 años haciendo automatizaciones en Python, me acuerdo cuando le conté cómo funcionaba todo esto en en un bar tomando unas chelas y le gustó tanto que empezó a hacerlo.

[01:13] Primero empezó con scripts pequeños, cosas muy parecidas a las que vio en este canal y un día lo llama un amigo de él, un dueño de una distribuidora y le dijo, "No quiero que reescribas nada, quiero saber por qué tarda 40 minutos."

[01:25] Y aquí viene el primer acierto de Martín. Antes de tocar una línea, el dueño le propone, "Te pago por el diagnóstico, si lo arreglas son 2,500, si en una semana no lo arreglas, no te pago nada." Y el acierto fue que Martín aceptó, después le explico por qué.

[01:38] Por qué, aunque más o menos ya sabes la respuesta porque lo he dicho en varios videos, porque no vendió horas, vendió una respuesta y pocos te enseñan a vender eso, casi siempre te enseñan a a cobrar por hora, cuánto cobrar por hora, que como siempre digo, básicamente cobrar por lo que tardas, no por lo que estás resolviendo. Lo normal es abrir el código y optimizar a ciegas, cambiar loop, poner type hint, convertir todo en clases bonitas, que es lo que hizo Joaquín en el vídeo de los 2000 dólares

[02:03] que te voy a dejar al final, reescribió un script feo con arquitectura perfecta, pero ese código perfecto le tumbó la tienda a Roberto en un en un Black Friday. Martín hizo completamente lo contrario, el primer día no cambió nada y aquí está lo incómodo, el código sí se veía bien, si si solo lees el código dices, "Ah, esto está bien hecho", pero el problema no estaba en cómo se veía, estaba en cuántas veces hacía cada cosa y para ver eso no necesitas ser senior, necesitas un cronómetro.

[02:31] Y esto que ves en pantalla es lo que vio Martín a los 20 minutos, se sentó al lado de la contadora, le pidió que corriera la la aplicación, que hiciera el cierre delante de ella y envolvió cada bloque del reporte en un cronómetro, un context manager simple de 20 líneas que suma el tiempo por etiqueta y que te voy a dejar una plantilla en mi Patreon por si quieres usarla. Pero bueno, mira la la pantalla, mira la columna de llamada, el archivo de productos se abría 3000 veces, una

[02:54] por factura, la base de datos recibía 90000 consultas, una por línea de facturas y se descargaban 90000 imágenes de producto para un reporte de 3000 facturas. 90000 veces la misma pregunta, ¿cómo se llama el producto 17? La base contesta 90000 veces, cada respuesta tarda unos milisegundos, pero esos milisegundos multiplicado por 90000 son 40 minutos.

[03:15] Además, un for dentro de un for dentro de un for con un open y una consulta dentro no era un bug escondido, era el diseño completo trabajando en contra. Tres meses construyendo algo que hacía 90000 veces lo que podía hacer solo una vez, es el mismo error N + 1 que un día Joaquín, pero visto desde el otro lado, esta vez alguien cobró por encontrarlo.

[03:34] El resultado, 40 minutos a 1 minuto 50, mismo servidor, misma base, mismo Python, Martín no reescribió la aplicación, hizo tres cambios en una tarde. Uno, sacó la lectura del archivo fuera del loop, se carga una vez en memoria, dos, cambió 90000 consultas por una sola con join que trae todo junto, y tres, movió la descarga de imágenes fuera del cierre. Solo se descargan si el reporte se va a imprimir. Yo reproduje el patrón en mi computador con datos sintéticos, 3,000 facturas de 30 líneas, y se demoró

[04:03] 3 segundos y medio. La versión heredada, uno y medio con el primer cambio, y menos de uno con el segundo cambio. Pero cuando lo corrí con el tercero, se demoró solo 7 centésimas de segundo, que son alrededor de 46 veces más rápido sin tocar una sola línea de lógica de negocio. En el sistema real, las imágenes venían por red, por eso ahí eran 40 minutos. Y quédate porque el kit completo para hacer esto, el cronómetro, la DMI plantilla de cotización, te lo voy a dejar al final ahí en en un link a

[04:31] mi Patreon, pero antes, lo que hace que te paguen 2,500 y no 50 dólares. ¿Por qué pagar un 2,500? El cliente no pagó por los 20 minutos de de Martín, sino que pagó por los 3 meses de dolor más 20 minutos de claridad. Martín no le mostró el diff, le mostró el log de antes y el de después, y lo tradujo al idioma del negocio. Antes perdías un día por cierre, ahora lo haces mientras te tomas un café. Son 4 días de conta de tu contadora, perdón, al mes que recuperas.

[04:57] 4 días de sueldo todos los meses contra 2,500 una sola vez. El que decidió no fue el programador, sino que la calculadora del dueño. Y eso viene de otros problemas aparte que si se demoran con la contabilidad eh pierden días valiosos de pago de impuestos, pago de cotizaciones, etcétera.

[05:14] Pero aquí lo importante, no vendas las horas, que esto te lo digo en muchos videos, vende el problema resuelto, y muéstralo siempre en cifras que el dueño pueda reenviar a su socio. Pero cómo cotizarlo tú, porque esto yo lo aprendí al revés, y hay un video en este canal donde cuento cómo cobré 200 dólares por un trabajo de 2,000, y lo hice dos veces.

[05:31] ¿Y por qué lo hice? Por cotizar mis horas y no el problema. Así que si te llaman por algo así, haz esto. Primero, cobra el diagnóstico aparte, 100, 200 dólares por decir qué pasa, aunque no lo arregles. Eso te posiciona como el que sabe dónde mirar. Segundo, ponle precio al dolor, no a tu tiempo. Pregunta siempre, ¿cuánto pierdes al mes con esto? Si pierde 1,000, cobrarás 2,500 una vez, es barato y él lo va a saber. Tercero, entrega pruebas. Un video de 2 minutos con el antes y el después corriendo en

[05:57] su máquina y eso es lo que va a reenviar el dueño para probar el pago. Y para encontrarlo, tres pasos, en este orden. Observan en producción, no en tu computador, porque siempre pasa que en tu computador puede que corra bastante bien y pide que lo corran delante de ti.

[06:10] Mide un cronómetro, siempre por bloques basta, sin medir estás adivinando y pregunta el contexto. La contadora, por ejemplo, solo imprimía uno de cada 10 reportes, por eso el descargar las imágenes siempre era completamente absurdo, pero sin esa pregunta Martín no sabría y no habría podido optimizar la descarga en vez de eliminarla.

[06:29] Y si no sabes hacer un cronómetro, bueno, en Patreon te voy a dejar el kit en tus manos con el cronómetro de 20 líneas, la demo con las cuatro versiones del reporte para que la corras y veas los tiempos en tu máquina y la plantilla de cotización, diagnóstico más arreglo con el checklist en PDF. Bueno, volviendo, Martín estuvo a punto de devolver 500 dólares por vergüenza, sentía que 20 minutos era demasiado poco para cobrar 2,500, pero el dueño fue el que le contestó, "No me cobraste por 20

[06:53] minutos, me ahorraste otros tres meses más." Y esa es la gran diferencia entre un programador de tutoriales y uno que cobra, uno que escribe código bonito y el otro que entiende sistemas, datos, negocio. Y negocio es muy importante entender también. No solo se queden con la parte de optimización, sino también entender el negocio de las personas y por lo tanto vas a saber cobrar o más bien saber dónde mirar para cobrar.

[07:15] Y si quieres el otro lado de la moneda, el código perfecto de Joaquín que tumbó una tienda en el Black Friday, mira el video que te dejo acá después de este, porque este te dice cómo cobrar por encontrar el problema, ese cómo no ser el que lo crea. Y cuéntame en el comentario fijado si estás cobrando por hora o por problema resuelto.
