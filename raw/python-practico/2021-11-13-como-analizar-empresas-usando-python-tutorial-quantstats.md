# ¿Cómo Analizar Empresas usando Python? | Tutorial QuantStats

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=TC9p3BefiPo)
- **Canal**: PythonIA
- **Publicado**: 2021-11-13
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:13

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:04] Muy buenas a todos. En este vídeo vamos a aprender a cómo podemos realizar análisis eh cuantitativos de empresas usando Python y para eso nos vamos a apoyar en una librería que e se llama Quan Stand, que nos va a permitir obtener un montón de métricas supervaliosas a la hora de realizar nuestros análisis y de una forma bastante automática. Entonces, ¿cómo lo vamos a hacer? Bueno, eh esta librería básicamente fue desarrollada por eh esta persona eh Ran Rosy, que es un bueno, una persona que ha estado muy metida en

[00:42] el mundo de las finanzas y que realmente eh pues tiene e muchísimos desarrollos, ¿vale? si entramos en su en su GitHub ha desarrollado muchísimas eh aplicaciones y muchísimas cosas relacionadas con el mundo de las finanzas y con el mundo de trading algorítmico. Entonces, es una persona a tener en cuenta, una persona referente en este sector y eh vamos a ver un poquito eh cómo podemos programar con Python e todas estas cosas.

[01:11] Entonces, básicamente lo primero que tenemos que hacer es eh instalar aquí, ¿vale? hacer un pip pip install eh quant stats. Vale, esto es lo primero que tendríamos que hacer para instalar la librería y una vez la tengamos eh lo primero que vamos a realizar es eh una extracción de datos. Para eso vamos a usar e digamos esta extensión de Pandash, ¿vale?, que viene incorporada dentro de Quan Stand y vamos a obtener en este caso los retornos que ha producido Tesla a lo largo de los

[01:44] últimos años. Entonces, para hacer esto, eh, básicamente vamos a usar la función down retons y vamos a pasarle el ticket de eh de la empresa. Entonces, hacemos esto y luego eh bueno, vamos a calcular el el ratio de eh el share ratio, ¿vale?, que es básicamente cuánto de eh beneficio estamos obteniendo, ¿vale?, respecto del riesgo, ¿vale? es una relación que mide el beneficio respecto del riesgo.

[02:11] Entonces, em aquí vamos a hacer una una representación donde básicamente vamos a representar los earnings que ha tenido Tesla, lo vamos a guardar en esta en esta imagen y vamos a suponer que hemos empezado a invertir en Tesla con 1000 € ¿vale? Entonces, e vamos a intentar ejecutar aquí. Una vez ah ejecutamos, básicamente eh tenemos aquí la imagen, ¿vale? Que si vemos aquí, pues esta es un poco la eh evolución, ¿no?, que hubiera pasado si eh con 1000 € hubiéramos invertido en Tesla, ¿no?

[02:48] Pues si hubiéramos invertido en 2010, pues ahora mismo eh vale, cuando empezó a cotizar, pues ahora tendríamos 250,000 € ¿vale? Y aquí pues vemos los diferentes, bueno, la un poco la la etapa, ¿no? Un poco el proceso de cómo ha ido evolucionando. Y vemos que desde comienzos, desde el 29 de junio de 2010 hasta el 5 de noviembre de 2021 se ha revalorizado un 25,47%.

[03:12] Es una auténtica locura. Entonces, bueno, eh esto es algo bastante interesante que podemos realizar con Tesla. También lo podríamos aquí cambiar, ¿no? Podríamos decir, "Oye, ¿qué ha pasado, por ejemplo, con Facebook? Pues vamos a ver qué ha pasado con Facebook, ¿no? Vamos a ver cuánto nos hubiera generado Facebook, por ejemplo, que también ha sido una compañía que ha crecido muchísimo, ¿no?

[03:33] Entonces, vamos a ejecutar y sería tan sencillo como cambiar el ticket, ¿no? Y entonces ahora pues en vez de en Tesla, aquí habría que poner esto es la de Tesla. Vamos a eh ahora guardó, ahora lo sobreescribió, ¿vale? Ahora lo sobreescribió. es la de Facebook. Pues con Facebook si hubiéramos invertido en el 2012, pues ahora actualmente tendríamos habríamos digamos multiplicado por 10, ¿no? Nuestra inversión actualmente. Bueno, ahora ha caído un poco, entonces hubiéramos invertido y hubiéramos ganado también

[04:03] pues mucho dinero, ¿no? Entonces está un poco la forma. Podríamos también otra empresa que ha crecido muchísimo los últimos años es eh Nvidia, tickel NVDA, ¿vale? Podríamos aquí eh ver qué ha pasado con Nvidia también, que ha sido una empresa eh muy muy potente en los últimos años. Em y eh y vamos a ver, ¿no?, qué ocurriría aquí con Nvidia.

[04:27] Entonces, en este caso vemos que en Nvidia, ¿vale?, pues también ha sido un crecimiento exponencial desde 2000 a pues con 1,000 € hubiéramos tenido 800,000, ¿no? O sea, ha sido una locura lo que ha pasado también con Nvidia. ha sido una de las empresas que más ha crecido en los últimos años. Entonces, tenemos todo esto que nos viene superb para un poco comparar, ¿no? El crecimiento de las empresas y el cómo eh un poco la revolución pues esta que estamos viendo tecnológica ha afectado.

[04:55] Entonces, pues bueno, ahora por ejemplo podríamos ver un poquito algunas métricas, ¿no? Vamos a suponer que lo vamos a hacer con Tesla de nuevo. Vamos a cogernos a Tesla y vamos ahora aquí a plotearlo, ¿no? A plotear esto. E y básicamente lo que vamos a hacer es un report, ¿vale? Con esto vamos a obtener un montón de métricas y básicamente lo que estamos pasándole es el stock que hemos cogido antes. Lo vamos a comparar con el S&P 500, es decir, con las 500 empresas más grandes americanas. Y este es el título

[05:25] que vamos a poner a nuestro gráfico, ¿vale? Eh, vamos a poner Tesla eh métrica, ¿vale? Eh, Tesla métrica y lo vamos a guardar en este output, ¿vale? Es importante pasarle el output que est es, digamos, donde lo vamos a guardar ese HTML, ¿vale? Esto genera un código en HTML.

[05:45] Entonces, si nosotros ejecutamos aquí, pues nos va a generar un reporte superinesante con todas las métricas, en este caso de Tesla, ¿vale? El reporte sería algo tal que así, es decir, tendríamos el título, ¿vale?, que en este caso lo hemos cambiado. Ahora vamos a actualizarlo, ¿vale? Esta es la figura que nos genera, eh, ti, ¿vale? Vamos a actualizarlo. Voy a cerrarlo.

[06:15] Voy a cerrarlo y voy a volver a abrirlo para eh ver un poquito. Eh, bueno, esto se nos ha pillado aquí. Vamos a eh abrir aquí. Vale, básicamente esto es lo que nos genera. ¿Qué nos genera? Bueno, pues un lado nos da una comparativa entre la empresa, ¿no?, y el S&P 500, ¿no?, que en este caso pues es la línea amarilla.

[06:45] Luego vemos aquí cómo han ido evolucionando los retornos en escala logarítmica, eh cómo han ido evolucionando e la volatilidad, es decir, obviamente eh la volatilidad de este activo es mayor, ¿vale? Porque obviamente estamos teniendo unos retornos muchísimo mayores. Y aquí pues vemos un montón de métricas, ¿vale? Un montón de métricas.

[07:04] que bueno pues hay que estudiarlas, ¿no? Hay muchos el kell criterio, bueno, muchísimas métricas, ¿vale? El máximo dropdown, ¿vale? Por ejemplo, vemos que aquí en el en el Strategy, el máximo dropdown de Tesla ha sido un 60% y en el S&P ha sido de un 33%.

[07:23] Eh, pues bueno, son temas a tener en consideración. Esto es un poco la el retorno acumulativo, ¿no? Cómo ha ido en porcentaje evolucionando y vemos pues diferentes métricas, ¿vale? Muchísimas métricas aquí. ¿Cuál ha sido, por ejemplo, el mejor día? El mejor día en el en Tesla a en el Samp ha sido un un 9%, el día de más crecimiento y el mejor día en Tesla ha sido un 24%. El peor día ha sido una caída del 21 y de un 10. El mejor mes, una subida de un 81. Y aquí una caída, ¿no? Bueno, una

[07:59] subida de un 12. El peor pues un 24 y un 12. El mejor año pues 743%, una auténtica salvajada. Em, ¿vale? Y si vemos aquí, bueno, hay distintas métricas, ¿vale? Por ejemplo, los cinco periodos de drawdown peores, cuando se han producido el la volatilidad, cómo ha ido afectando la volatilidad. Obviamente vemos que es mucho más volátil Tesla que el Bmart, que en este caso es el S&P. Y luego aquí tenemos una un gráfico que me gusta mucho analizar porque nos da un poco eh la evolución temporal a lo largo del

[08:33] tiempo de años por un lado y eh meses por otro. Entonces vemos, por ejemplo, que el mes donde más creció eh Tesla fue en mayo de 2013, ¿no? Esto nos da un poco una indicación así para ver si hay cierta correlación en los meses, ¿no? A lo mejor podemos ir analizando empresas, decir, pues a lo mejor Amazon o a lo mejor Apple, empresas que venden mucho en Navidades, pues tienen unos retornos más grandes en Navidades, entonces pues pueden haber ciertos comportamientos cíclicos, ¿no?, en las empresas y esto

[09:03] nos viene muy bien para analizar este tipo de comportamientos cíclicos. Entonces, por ejemplo, aquí en 2020 vemos también un crecimiento muy bueno. Eh, vemos, por ejemplo, que en noviembre es un buen mes para Tesla. Vemos aquí eh bastantes verdes. Luego vemos que a lo mejor el mes de marzo es un mes en general que suele ser peor. Vemos aquí bastantes eh cifras rojas, ¿vale? Y nos viene pues super bien este tipo de de análisis. Lo mejor de todo es que es bastante sencillo de de implementar.

[09:32] Implementar esto en en Python es bastante sencillo y nos va a permitir hacer un análisis cuantitativo de las empresas muy detallado y digamos con con mucha precisión. Entonces, eh bueno, hasta aquí un poco e el vídeo de hoy. Si te ha gustado, pues eh pues déjale un like y déjale, bueno, un comentario. Y eh recuerda, tenemos algunos cursos eh relacionados con estos temas. Si quieres profundizar en toda esta parte de análisis cuantitativo con Python, te voy a dejar un enlace en la descripción en un curso que

[10:04] tenemos en Udemi. Incluso si quieres profundizar en la parte de creación de robots y estrategias automáticas, también tendrás eh algunos cursos que podrían ser de tu interés. Yeah.
