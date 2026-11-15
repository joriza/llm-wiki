# Aprende SOLID en 5 minutos (explicado fácil)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=vHDgTolPMGM)
- **Canal**: Torti Code
- **Publicado**: 2026-03-24
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 05:15

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] ¿Quieres pasar esa entrevista técnica y conseguir un sueldo de senior? Allá afuera, las mejores empresas pagan muchísimo dinero a los programadores que escriben código limpio. Y la pregunta obligada para entrar siempre es, ¿sabes aplicar los principios solid? Y seguro pensarás, pero si la inteligencia artificial ya genera el código, ¿para qué necesito aprender esto? Ahí está el detalle. Escribir código hoy es fácil, pero si tú no entiendes estos principios y dejas que Chat, GPT o Cloud hagan todo

[00:32] por ti, ¿cómo vas a saber si te están entregando una obra maestra o un código basura que va a explotar mañana? La IA teclea rápido, pero el arquitecto que revisa y manda eres tú. Hoy te explico los cinco principios solid directo al grano, con ejemplos de la vida real y viendo exactamente cómo se aplican en el código para que nunca se te olviden.

[00:53] Empezamos con la S. El principio de responsabilidad única. La regla es simple. Un archivo o clase debe hacer una sola cosa y tener una sola razón para cambiar. Imagina un restaurante donde el chef cocina, cobra en la caja y además lava los baños. Si un día se lastima lavando el baño, la cocina se detiene por completo y el restaurante quiebra por mezclar tareas. En tu código, el error es tener una clase usuario que guarda los datos en la base de datos y además manda correos electrónicos.

[01:25] Si el proveedor de correos falla y tienes que modificar la clase, podrías romper el registro de usuarios por accidente. La solución es dividir. Crea un archivo solo para la base de datos y otro solo para los correos. Si el correo falla, tu base de datos sigue intacta.

[01:41] Pasamos a la O. Abierto y cerrado. Tu código debe estar abierto para agregarle cosas nuevas, pero cerrado a modificar lo que ya funciona. Piensa en una cafetera de cápsulas. Si quieres un café de vainilla, no desarmas la máquina ni le cambias el motor. Simplemente le insertas una cápsula nueva. La máquina no se toca. En programación, el problema clásico es tener una función de descuentos llena de condicionales IF para clientes VIP o clientes nuevos. Si tu jefe te pide agregar el descuento de

[02:12] Black Friday, tendrías que abrir y modificar ese código viejo arriesgándote a meter box. En su lugar usas una interfaz base. El nuevo descuento será simplemente una clase nueva como una cápsula de café que enchufas al sistema sin tocar ni una sola línea del código anterior. Letra L. Sustitución de Liscof. Una clase hija siempre debe poder reemplazar a su clase padre sin que la aplicación explote. Imagina que pides un Uber seleccionando la categoría vehículo. Esperas un auto, pero la app

[02:44] te manda un tractor. Es un vehículo, sí, pero no puede ir rápido por la autopista. El viaje se arruinó porque el hijo no cumplió lo que el padre prometía. En tu código, imagina que tienes una clase padre documento que tiene las funciones leer y escribir.

[03:00] Luego creas una clase hija llamada documento de solo lectura. Si tu sistema intenta usar la función escribir en ese nuevo documento, la aplicación va a colapsar. La solución es no forzar la herencia. Crea un documento legible y por separado un documento escribible.

[03:19] Letra I. Segregación de interfaces. Nunca obligues a tu código a depender de funciones que no va a usar. Es como tener un control remoto de 80 botones para la tele, pero tú solo usas tres: prender, volumen y cambiar canal. Los otros 77 botones son pura basura visual.

[03:37] En el código. Esto pasa cuando creas una interfaz gigante llamada dispositivo inteligente, que te obliga a programar las funciones llamar y tomar foto. Si se la aplicas a un reloj básico sin cámara, el sistema te obligará a poner la función de la foto vacía o con un error.

[03:54] Lo correcto es dividir ese control gigante. Crea una interfaz solo para llamar y otra para tomar fotos. Así, tu reloj solo firma el contrato de lo que realmente hace. Y cerramos con la D. Inversión de dependencias. Tu sistema principal jamás debe amarrarse directamente a una herramienta externa.

[04:13] Piensa en un piloto de Fórmula 1. Él no depende de un modelo de auto específico, depende de la abstracción de un volante. Si le cambian el coche, simplemente toma el nuevo volante y arranca. Si en tu tienda online escribes el código amarrado directamente a la pasarela de pagos de Stripe, el día que Stripe se caiga o cambies a PayPal, tendrás que reescribir todo tu proyecto. La solución es crear una interfaz general llamada pasarela de pago. Tu tienda se conecta a ese volante genérico y desde afuera le

[04:43] inyectas Stripe o PayPal. Si cambias de proveedor, tu tienda no sufre ni un solo cambio. Así de directo. La inteligencia artificial te va a ayudar a teclar el código más rápido, pero saber evaluar si ese código respeta estos cinco principios es lo que te convierte en el arquitecto del proyecto y te hace ganar como senior. Si esta explicación te sirvió, revienta el botón de like, suscríbete y ponme en los comentarios qué otro tema quieres que te explique sin dar tantas vueltas. Nos vemos en el

[05:14] próximo
