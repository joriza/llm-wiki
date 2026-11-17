# Comparativa SLMs en Programación 🤖 Gemma vs Ornith vs Qwen vs LFM

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ArABLzPR5Ok)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-16
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:12

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En este vídeo vamos a comparar el rendimiento de Gema 4 12 B, LFM 2.5 8 B a 1 B, Hornet 1.09 B y Qwen 3.5 9 B. Todos ellos en un one shot exactamente el mismo prompt. Más que leer a fondo el prompt, que nos vamos a tardar mucho y se nos va a olvidar la mitad, vamos a ver más bien el código bien desarrollado para luego compararlo a lo que entreguen estos modelos de lenguaje. Es decir, el juego que voy a mostrar es un juego desarrollado con todas estas características. Simplemente por si

[00:37] queremos ver un poco cuáles son los parámetros con los que ejecuté cada modelo de lenguaje, aquí los vamos a ver un poquito por encima. Simplemente son los valores recomendados, todos ellos con aproximadamente 131,000 tokens de ventana de contexto, los modelos a 4 bits y en el caso de los que tienen MTP y visión, pues también activado. Esto básicamente es el juego que se desarrolla a partir de seguir correctamente dicho prompt. Defiende el núcleo de la base minera. Aquí dice con

[01:07] qué flechas nos podemos mover, o mejor dicho, con qué teclas. Sector 1 de 2, puntos, vidas, naves hostiles, estado, etcétera, etcétera. Dice que presione intro para comenzar. Y por cierto, en este proyecto no solo está indicado toda la funcionalidad en el prompt, sino también la paleta de colores, así que hasta visualmente debería de ser muy similar. Presionamos intro, aquí comienza el juego y de hecho tiene sonido. Nosotros somos este personaje y tenemos que estar protegiendo al

[01:36] astronauta. Hay distintas piezas y cada una funciona diferente. Por ejemplo, estas las puedo atravesar, puedo pasar por debajo, otras las puedo destruir, otras directamente ni siquiera la bala puede atravesarlas y en otras la bala sí pasa por encima de dicho material. Aquí pues debemos de intentar destruir a estas otras naves tratando de que no nos maten al astronauta que tenemos debajo, donde aparece el casco de astronauta.

[02:03] Aquí acabamos de ganar una vida, ahora gané escudo, afortunadamente escudo permanente aquí, que no podemos destruir y pues mientras tanto puedo seguir destruyendo naves. Y ahí con ese con esa habilidad, pues básicamente se destruyeron todas las que había en pantalla. Ya más o menos entendimos cómo es que funciona el juego y pues esto mismo es lo que necesitamos que haga estos modelos de lenguaje que pequeños. Sin embargo, no significa que lo hagan bien o mal, significa que probablemente en un one shot ninguno lo

[02:32] va a poder hacer bien, porque comúnmente este trabajo lleva pruebas, lleva desarrollo, lleva iteraciones. Aquí el objetivo más bien va a ser cuál llegó más lejos. Mencionar que ni siquiera yo he visto cómo son los proyectos que desarrolló cada modelo. Comenzamos entonces con Gema 4 12B, este modelo que es de 12 billions de parámetros, un modelo denso, bastante interesante y que han corregido su uso de herramientas.

[02:56] Sin embargo, aquí no estamos haciendo uso de herramientas, aunque de por sí para su tamaño es suficientemente bueno en código. Es un modelo que además bajo QAT lo podemos cuantizar a 4 bits sin que teóricamente pierda calidad a pesar de pesar una cuarta parte y este modelo con todo y su MTP generaba aproximadamente 87 tokens por segundo en promedio. Generando un total de 12,000 tokens en su respuesta, en conjunto con su cadena de razonamiento. Por aquí pues vemos su cadena de razonamiento y luego

[03:26] de su cadena de razonamiento en la cual no hizo mucho código como tal, sino que más bien fue determinando cada cosa y al momento de abrir y revisar, pues se ve similar pero más simple este menú. Le damos en iniciar misión y esto es lo que conseguimos. En este caso aparentemente medio funcional, pero más horrible todo, con ciertos textos en inglés. No veo enemigos, no veo al astronauta, solo veo mi nave y ni siquiera la puedo mover.

[03:54] Con lo cual, si bien es una muy buena base pasar de cero a esto, lo cierto es que el prompt ya está preparado para que haga todo, absolutamente todo. Y pues aquí con una simple iteración no fue suficiente. Seguramente si seguimos iterando y demás con el modelo, pues claramente lo podamos conseguir y hasta sin él también. Pero digamos que esta es toda la calidad que se consiguió para esta tarea en una única solicitud y respuesta. Vamos a ver ahora la respuesta de LFM 2.5, el cual genera

[04:24] tokens muchísimo más rápido y además generó menos de la mitad de tokens, con lo cual tardó muy poco tiempo. Este modelo también es de razonamiento y realmente es muy eficiente. Sin embargo, a pesar de todo ello, no es un modelo que esté preparado para la generación de código. No significa que no lo pueda hacer, significa que no es para lo que está preparado, con lo cual seguramente esto va a estar horrible. Vamos a revisar y pues ni siquiera veo nada, básicamente. Tenemos aquí de estilo CSS

[04:53] una única línea, no tenemos nada de contenido dentro del HTML, tenemos directamente un script dentro del cuerpo y al finalizar, pues simplemente se cierra el script y se cierra el cuerpo, así que seguramente muchas cosas que aquí intente utilizar ni siquiera las creó ni les dio cierto estilo. Así que pues este modelo pudiera llegar a ayudar para autocompletado y otras cosas, pero este modelo no está preparado para código. Sin embargo, puede usar muy bien herramientas, ya lo vimos en vídeos

[05:20] previos, pero no para hacer código. Y al mismo tiempo es bastante eficiente tanto en uso de memoria como en lo rápido en lo que genera los tokens. Vamos entonces ahora al siguiente modelo, que en este caso es Ornit 1.0. En promedio nos generó 69 tokens por segundo, a pesar de que tenemos una versión con MTP.

[05:39] Prácticamente generó la misma cantidad de tokens que el Gema 4 2B. Sin embargo, es curioso cómo este Ornit 1.0 9B, al igual que Qwen 3.59b, no solo me consume un poco más de memoria, sino que su generación de tokens es menor que la de gema 4 12b. Vamos a revisar entonces cuál es el resultado que conseguimos. En su cadena de razonamiento vemos aquí texto escrito en idioma español y aquí no se puso a hacer código, simplemente pensó en qué cosas iba a poner en cada parte, haciendo esto en español y por

[06:10] cierto, me acabo de dar cuenta de algo. Si revisamos la cadena de razonamiento de gema, por aquí vi algo curioso y es que según él estaba escribiendo código en varios puntos como aquí y en otro, según él, estaba refinando, pero realmente no hizo nada. Esto parecería indicar que dichos modelos de lenguaje son entrenados a partir del resumen de otros modelos de lenguaje y no de realmente lo que están haciendo, porque este razonamiento, o por lo menos una parte del mismo, no tiene mucho sentido,

[06:38] son puros tokens simplemente por gastar. Muy bien, veamos entonces qué fue lo que generó ornit, damos un clic y pues en este caso, en ese one shot, a pesar de que probablemente sí hizo más código que lo que vemos, pues visualmente no alcanzamos a apreciar nada y recordemos que el objetivo es, en un one shot, qué tanto logró hacer. Supongo yo que sí hizo más, que hay más cosas, pero con el código que generó, pues de poco sirvió, porque no alcanzamos a ver nada. Por último tenemos cuent 3.59b

[07:08] generando más tokens que los demás, 14.000, a 67 tokens por segundo, curiosamente generó menos velocidad que el modelo ornit, muy poca diferencia, pero de todos modos la hubo. Su cadena de razonamiento también fue en idioma español y en este caso no inventó nada, es decir, olvidenlo, generé todo en un bloque único y en ningún lado generó un bloque único, básicamente. No sé estos modelos por qué, según ellos hacen código y según ellos quién sabe qué tanto, pero es falso, seguramente porque

[07:40] destilan a partir de modelos más grandes, en línea, privados, que en su cadena de razonamiento simplemente vemos resúmenes. Así que, pues, dicho razonamiento no tiene mucho sentido. Vamos a revisar, entonces, la respuesta de este Qwen 3.59B.

[07:54] Y en este caso, el menú se ve un poquito más interesante que de los otros modelos, afortunadamente, y espero que al dar clic, pues, sigamos sorprendidos para bien. Voy, entonces, a dar clic y, pues, no, directamente no pasa nada.

[08:08] Entonces, en este caso de estos cuatro modelos, pues, para un simple one-shot a partir de un prompt completamente bien elaborado y un proyecto medianamente simple, de un código de unas 1,000 líneas, por decir algo, pues, no son suficientes. Pueden ayudar, sí, para autocompletar código, para ir trabajando en conjunto con ellos, pero no para delegarle un proyecto completo, por más pequeño que sea, y que lo haga bien a la primera. Esto por dos motivos. El primero de ellos son modelos pequeños. Y

[08:39] el segundo motivo es solicitud-respuesta. Aquí no hay ningún tipo de agente que les permita seguir iterando y hasta probar. Si por aquí vemos realmente cómo es que había generado yo el proyecto, si mal no recuerdo había sido con Sonnet 5, sí, pero en esfuerzo de razonamiento el máximo, el el que aparece por aquí, y vemos, pues, que llegó a hacer un montón, pero montón de cosas antes de dar siquiera la respuesta final. Estuvo hasta ejecutando código, compilando el proyecto y quién sabe qué tanto, con lo

[09:08] cual no solo es que el modelo es más inteligente, sino que, además, pues, pudo iterar por mucho rato. Y aquí está, precisamente, el código que descargué y hace rato ejecutamos. Entonces, con esto, ¿qué podemos sacar de conclusión en este momento? Que claramente los modelos de lenguaje en línea son más inteligentes. Sin embargo, la razón principal de que funcionen mejor no necesariamente es solo porque el modelo es más inteligente, sino porque itera demasiado, da muchas vueltas, corrige y

[09:36] todo ello. Es decir, a pesar de que teóricamente hicimos una sola solicitud y y teniendo en cuenta que le hicimos aquí en el chat y no en su modo agente de aplicación, teóricamente debería de ser más como solicitud y respuesta, sin embargo, eso es falso. Por aquí quién sabe qué tanta cosa estuvo haciendo y no me refiero solo al código, sino cada uno de los procesos, incluido crear, ejecutar, etcétera, etcétera. Si quieres ver un vídeo en el que intentemos potenciar estos modelos pequeñitos de la

[10:04] misma forma que funciona Cap, por ejemplo, en Cloud, pues va a ser el siguiente vídeo que voy a grabar enseguida de este. Así que simplemente dale a Like y suscríbete.
