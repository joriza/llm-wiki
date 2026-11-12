# TurboQuant en llama.cpp 🚀 Cómo Reducir la VRAM de tus Modelos de IA sin Perder Calidad

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ERNNwzXWoSg)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-11
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 11:23

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Turboquant es un algoritmo de cuantización vectorial online desarrollado por investigadores de Google Research. Su objetivo es cuantizar minimizando la distorsión de su estructura geométrica. En pruebas de cuantización de KVK logran neutralidad de calidad absoluta con 3.5 bits por canal. Ayuda a descongestionar el cuello de botella de memoria reduciendo su tamaño, lo que permite búsquedas de similitud más rápidas y menos costos de memoria. En resumidas cuentas que la gente de Google lanzó un paper acerca

[00:33] sobre algo llamado Turbo Quant, el cual es un algoritmo que logra reducir el consumo de memoria en modelos de lenguaje a partir de cuantizar su KV caché sin apenas pérdida de calidad. Una de estas ideas de Turboquant ya llevan tiempo desarrolladas dentro de llamas CPP. Aquí tenemos toda la información en el hilo 21,038 y aquí vamos a ver los resultados que ellos mismos nos prometen y después vamos a ver cómo ejecutarlo.

[01:02] Por aquí estamos viendo un ejemplo con el modelo GPT OSS20B en el benchmark AIME2. En este benchmark, dicho modelo, sin cuantizar su KV caché o su ventana de contexto da una puntuación total de 37.9%. Si cuantizamos la KVCH sin la tensión rotativa al estilo turbo quant, bajamos de 37 a 31. Es decir, estamos consumiendo, sí, la mitad de memoria, pero vemos que hay un verdadero cambio en la calidad. Por el contrario, si cuantizamos, sí, en Q8 la KVK, pero al mismo tiempo con todo y atención

[01:43] rotativa, nos mantenemos muy cerca del resultado original en 37%. Y así nos vamos a cuantizaciones más extremas, por ejemplo, a 4 bits, la KVC, no el modelo. En vez de estar en los 37.9% originales en dicho benchmark, bajamos a 2% y simplemente con la rotación de atención subimos a 21.7%.

[02:08] Entonces, estamos viendo que en Q8 es prácticamente el consumir la mitad de memoria gratis, es decir, a cambio de siquiera perder calidad. Algo se pierde aparentemente, pero prácticamente nada. Pasamos a la mitad de memoria, manteniendo el 90 y tantos% de calidad.

[02:26] Aquí mismo, en este mismo hilo hay demasiada información sobre todo esto, pruebas con distintos modelos, hasta en velocidad y todo tipo de cosas, pero ahora vamos a verlo en uso realista, es decir, cómo activarlo, cómo utilizarlo.

[02:39] Para ello, pues, tal como nuestro video de llama CPP, podemos descargar llama CPP para nuestro sistema operativo y para funcionar en el tipo de hardware que nos interese. Por ejemplo, Windows 64 bits KUDA 13 con todas las librerías de KUDA 13.3. Todo eso lo descomprimimos en la misma carpeta y después descargamos el modelo que nosotros queramos. No significa que el modelo debió de ser preparado para esto ni que lo debemos de descargar en una cuantización especial. Yo aquí, por

[03:09] ejemplo, tengo el Gema 412B, que originalmente pesa poco más de 24 GB de V RAM. Sin embargo, bajo la estrategia QAT, Google permite que estos modelos sean cuantizados a 4 bits sin perder calidad o al menos teniendo una calidad equivalente. Pasamos de esos 24 GB a únicamente 6.25.

[03:30] Esto en conjunto con una buena cuantización como de un Slot Dynamic Q4K XXL. Tenemos el 99% de calidad del modelo pesando una cuarta parte. Tenemos también el MM Prog para visión y el MTP para acelerar la generación de tokens.

[03:45] Todo esto consumiendo 6.65 GB. Además, los modelos GMA su KV, su ventana de contexto de por sí consumen muy poco comparado con otros que también están optimizados como los Quen Quen 3.5 0.8B. Consume como 5 GB o 6 en V RAM con su ventana de contexto completa y el modelo a 4 bits. Gema 4 E2B que para empezar es un modelo de 5.1B realmente en memoria con toda su ventana de contexto consume 3 GB. Así que no solo es que aquí estamos viendo una optimización bastante interesante en cuanto al modelo por ser

[04:22] QAT y por estar en una cuantización de un slot a 4 bits, sino que también de por sí su KV caché consume poca memoria. Simplemente con eso, con estos ajustes, estuviéramos obteniendo una muy buena velocidad gracias al especulative de coding. De todo esto ya tenemos muchos videos más rápido que Qen 3.54B por ejemplo, a pesar de ser tres veces el tamaño y con buena ventana de contexto sin aún aplicar Turbo Quant. Voy a abrir el administrador de tareas y vemos nuestra GPU vacía, una RTX 3060 de 12

[04:54] GB. ejecuto el punto bato y vemos que nos está consumiendo 9.8 GB de V RAM. Este modelo que de hecho originalmente ni siquiera debería de caber porque el puro modelo pesaría más de 24 GB, pero bajo estas optimizaciones mantenemos calidad equivalente prácticamente la misma, pesando mucho menos y aún con 131,000 tokens de ventana de contexto. Ahora, ¿qué sucede?

[05:20] Que este modelo está preparado hasta 262,000 tokens. No puedo cargar todo ese contexto, toda esa ventana de contexto porque la KVCH requiere un poco más que lo que me queda libre. Es aquí entonces cuando entramos a utilizar Turbo Quant o la tensión rotativa que tiene ya CPP al estilo turbo Quant. Y esto lo vamos a hacer no únicamente para el modelo, sino también para el borrador, el modelo borrador en este caso MTP. Entonces nosotros podemos cuantizar la KV caché tal como decimos, tanto del modelo como

[05:53] del borrador con estos parámetros para que en vez de que esté a 16 bits la pasemos a 8 bits consumiendo la mitad y manteniendo prácticamente la misma calidad según vimos benchmark. Simplemente con esto, si guardo el archivo y vuelvo a ejecutar el modelo, vamos a ver ahora cuánta memoria nos consume. Aquí de momento aún no vemos turbo quant, solo estamos cuantizando la KVCH. Hace rato consumíamos 9.8 GB, ahora consumimos 9.1, con lo cual ahora sí nos cabe la ventana de contexto

[06:26] completa. Pongo entonces 262,144, que es el total, guardo el archivo y vuelvo a ejecutar. Aquí ya está en ejecución. Vemos los 262,144 tokens de ventana de contexto y nos está consumiendo 10.9 9 GB de V RAM, pero ahora con el doble de ventana de contexto. Okay, pero esto es cuantización. La cuantización de la KVK ya se podía hacer. Lo que nos interesa es que en dicha cuantización se active la tensión rotativa al estilo turbo quant, que nos haga no solo seguir consumiendo así de poco gracias a la

[07:02] cuantización, sino también mantener la calidad. Cuantizar ya se podía. Lo que queremos es mantener la calidad luego de cuantizar. ¿Qué tenemos que hacer? Nada. ¿Por qué no tenemos que hacer nada? Porque sencillamente mismo llama CPP en sus versiones actuales. Dado que es una mejora gratis, ni siquiera es que la tengamos que activar, sino que simplemente al momento de que cuanticemos la KV caché se activa. ¿Cómo podemos estar seguros de que esto está funcionando? Vamos a copiar, por

[07:33] ejemplo, todo lo que tenemos en el cmd. Lo voy a pegar aquí en Visual Studio Code y vamos a buscar con control F atención rotativa. ¿Y qué estamos viendo por aquí? Que la KVK está cuantizada y que tiene la tensión rotativa activa. Es decir, no tenemos que hacer nada porque tal como decimos es una mejora gratis.

[07:55] Simplemente al haber cuantizado a 8 bits pues se activa esto en las versiones actuales. Antes no. ¿Cómo lo podemos saber? Pues revisando esto, antes ni siquiera aparecía esto de por aquí, ahora nos aparece varias veces. Así es.

[08:10] ¿Por qué? Porque no solo es en el modelo, sino también en el modelo borrador, en este caso en el MTP. Y así de simple, podemos tener el doble de ventana de contexto consumiendo prácticamente lo mismo en memoria y manteniendo prácticamente la misma calidad a partir de simplemente cuantizar la KVCH, dado que de forma automática se activa la tensión rotativa. No únicamente nos sirve para poner el doble de memoria o el doble de KV caché, el doble de ventana de contexto, sino sencillamente para que

[08:42] nos quepa. A lo mejor de otra forma ni siquiera cabía. Tal cual como en un inicio, en un inicio no me cabía 262,000 y ahora sí consumiendo la mitad y manteniendo la calidad. Aquí, tal como decimos en los modelos Gema, de por sí están muy optimizados, manteniendo prácticamente toda la calidad a pesar de requerir una cuarta parte. Tenemos MTP que me acelera hasta tres veces lo que un modelo de una tercera parte de tamaño, como el Quen 3.54B.

[09:10] Tenemos más calidad por ser un modelo más grande, porque esta cuantización no quita precisión y porque la KVC en 8 bits no quita precisión, al mismo tiempo que de por sí los modelos Gema consumen muy poco su ventana de contexto, su KV caché. Entonces, aquí tenemos un combo perfecto. Sin embargo, a pesar de todo lo que estamos diciendo positivo de este modelo, es donde menos se nota. ¿Por qué? Porque ya dijimos que de por sí la KVCH no requiere tanto espacio, no requiere tanta memoria comparado con

[09:42] otros modelos. Así que en otros modelos a lo mejor revisamos y la V RAM está en 10.9, cuantizamos y quizá baja a siete o a seis dependiendo del modelo, su arquitectura y demás, cuánto consume su KV caché. Así que esto de la tensión rotativa en llam CPP al estilo turbo quant del paper de Google está perfecto para los modelos GEMA para optimizarlos más. Pero más perfecto aún para los que no son gema para optimizarlos mucho, dado que de por sí su KV no está tan optimizada. En los mismos logs, en cada

[10:14] modelo que carguemos, podemos ver cuánto consume la KVCH antes y después de cuantizar. Y pues bueno, básicamente es la mitad. Si nos consumí a 3 GB a 16 bits, a 8 consume 1.5 y a 4 consume 0.75. Si originalmente requiere 1 GB, en Q8 0.5. 5. Si originalmente requiere 30 GB en Q8 15. Así que donde más se nota la mejora, pues es en aquellos modelos que de por sí no vienen tan optimizados. Y pues ya luego de eso podemos usar el modelo con normalidad. Presiono enter y comenzamos a ver la respuesta. Teniendo

[10:52] muy buena velocidad a pesar de ser un modelo 12B en una GPU muy simple. Esto gracias al MTP. cabiendo en esta GPU dado Qat a 4 bits, toda la ventana de contexto de por sí, porque el modelo la tiene muy optimizada y con la tensión rotativa, pues aún mejor. La atensión rotativa no nos hace ahorrar memoria, el ahorrar memoria lo hace el cuantizar. La tensión rotativa lo que hace es que con esa cuantización no se pierda calidad.

[11:19] Si quieres seguir viendo este tipo de videos, simplemente da like y suscríbete.
