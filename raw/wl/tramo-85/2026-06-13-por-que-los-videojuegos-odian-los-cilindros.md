# ¿Por qué los videojuegos ODIAN los cilindros?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=OXFTmaf-54g)
- **Canal**: Guinxu
- **Publicado**: 2026-06-13
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:58

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Esto no es un cilindro. De hecho, es probable que casi nunca te hayas cruzado con un cilindro de verdad en un videojuego, porque los motores de físicas odian los cilindros, así que prefieren fingir que no existen. En su lugar, los suelen sustituir por esto, una cápsula. ¿Cómo que una cápsula?

[00:17] ¿Tantos problemas da un simple cilindro? ¿Y de verdad no hay ninguna forma de añadir un cilindro real a un videojuego? Veámoslo. Guincho. Muy buenas, gente, ¿qué tal estáis? Para que veas la discriminación tan grande que sufren los cilindros en videojuegos, dime todas las figuras 3D que conozcas.

[00:36] La esfera, el cubo y yo creo que enseguida también dirás el cilindro. Es una figura 3D super básica. Vale, pues abro Unity. Tipos de colisiones. Caja, esfera, pero ni rastro del cilindro. Eso sí, la dichosa cápsula que no falte.

[00:52] Abro Unreal Engine y lo mismo. Esfera, caja, cápsula, pero tampoco hay cilindro. Sorprendentemente, Godot Engine sí tiene cilindros de verdad, pero en la documentación te avisa de que es mejor no usarlos porque se buguean.

[01:06] ¿Qué clase de conspiración es esta? Antes de hablar de por qué los motores evitan los cilindros, veamos por qué tampoco son especialmente prácticos de usar. Imaginad que estoy haciendo un juego y quiero que el protagonista sea un cilindro. He preparado una película para ilustrar cómo se enfrentaría a distintos obstáculos. Atentos.

[01:24] Cilindro tratando de cruzar un bache en el camino. Como veis, su base recta se atasca ante el mínimo obstáculo. ¿Qué pasaría si en lugar de un cilindro fuera una cápsula? Aquí, sin embargo, la base redonda de la cápsula resbala suavemente por el bache, permitiéndole seguir su camino. Segundo experimento. Cilindro tratando de subir unas escaleras. De nuevo, es incapaz de subir.

[01:50] Se queda completamente encallado. Con la cápsula, en cambio, nuevamente podemos seguir avanzando sin problemas. Al empujar un escalón, su base redonda hace que se deslice hacia arriba más fácilmente. Con esto ha quedado claro que a nivel de recorrer el escenario de un juego, una cápsula es más útil, más todo terreno, mientras que un cilindro se atasca bastante por su propia naturaleza. Pero no me importa, quiero usar un cilindro de todas formas. Me apetece hacer un juego donde el protagonista sea, yo qué

[02:20] sé, un robot limpiador tipo Roomba. Si se atasca, ya lo arreglaré yo, le pondré un salto, añadiré una fuerza hacia arriba o lo que haga falta, pero déjame usar mi cilindro. No, está prohibido, no existen las colisiones en forma de cilindro, fastídiate. Un cilindro solo prohibidísimo. Ah, pero si el cilindro viene con dos bolas pegadas en los extremos, perfecto. ¿Qué clase de lógica es esta?

[02:44] Uy, y esta alarma, a ver si han entrado a robar. Voy a ver. Alto ahí, policía del cilindro. Era una cápsula. Tengo mis razones, suéltame. Y eso se lo cuentas al juez. Uf, hoy ha sido una cápsula haciéndose pasar por un cilindro, mañana puede ser una página web falsa haciéndose pasar por mi banco. Menos mal que este vídeo está patrocinado por Nord VPN. Nord VPN es una herramienta que ofrece múltiples capas de seguridad al usar internet todo en uno gracias a su antivirus integrado

[03:17] de nueva generación enfocado en la privacidad. Por supuesto, sigue siendo la VPN que ya todos conocéis, permitiendo cifrar tu conexión y conectarte a todos estos servidores. Pero ahora, además, cuando descargues un archivo de internet, lo analizará en busca de malware. Si entras en una página web falsa que se haga pasar por otra, cuenta con una protección anti-phishing para bloquearla. Por supuesto, también ayuda filtrando llamadas telefónicas potencialmente fraudulentas y de spam. Y si navegas por

[03:43] páginas que no paran de sacar pop-ups con publicidad, Nord VPN también se encarga de evitarlo. Ah, y su monitor de la Dark Web te avisará si encuentra una filtración donde aparezcan tus datos. Yo lo uso en Linux, pero también está para Windows, Mac, Android y iOS en forma de aplicación, así como en extensiones de navegador. Cualquier problema que surja ofrecen soporte 24/7. Entrad en el link de la descripción para recibir una oferta exclusiva y 4 meses gratis. Y si no os convence, tenéis 30 días para

[04:10] pedir el reembolso. A lo que íbamos. ¿Por qué un cilindro está prácticamente prohibido en videojuegos, pero en cambio una cápsula está perfectamente aceptada? A simple vista parece una figura incluso más complicada. Lo parece, pero hay truco. Y ese truco hace que en realidad la cápsula sea muchísimo más fácil de manejar por un motor de físicas. Para entenderlo, vamos a ver cómo funcionan las colisiones de las figuras más típicas. Con una caja es facilísimo. El motor solo tiene que comprobar si estás

[04:40] entre sus límites: izquierda, derecha, arriba, abajo, delante y detrás. Luego, la colisión con una esfera también es ultrafácil. Solo tienes que medir la distancia hasta su centro. Si estás más cerca de su radio, has chocado. Si no, sigues fuera. Fin. Y ahora viene el trucazo de las cápsulas. Imagina que tenemos una cápsula así de alta y queremos chocar contra ella por aquí.

[05:03] Avanzamos poco a poco y eh, ¿qué hace una esfera aquí? Em, vale, pues la esquivo. Voy a chocar por otro lado. Pero qué leches está haciendo, ¿por qué se mueve? Da igual desde donde intente chocar, siempre aparece una esfera persiguiéndome. Resulta que en cierto modo, cuando compruebas la colisión con una cápsula, en realidad estás comprobando la colisión con una esfera.

[05:27] [música] Tremenda matrioska. Por lo tanto, el motor no tiene que resolver una figura rara, simplemente busca dónde estaría esa esfera escondida y hace una colisión de esfera que ya hemos visto que era superfácil de calcular. Es un poco como el pesado ese de Zelda Ocarina of Time que no te dejaba a al Árbol Deku. Por cierto, ya que estamos, ¿qué impresión os da el remake que acaban de anunciar? Vale, pero entonces, ¿y un cilindro? De entrada no parece tan complicado.

[05:55] Primero, podríamos calcular si estamos dentro del círculo horizontalmente. Y luego podemos comprobar si además nos encontramos entre la tapa de arriba y la de abajo. Oye, pues no era tan difícil. ¿Por qué Unity o Unreal Engine no lo hacen? ¿O por qué Godot está bugeado?

[06:10] ¿Acaso son unos vagos y no se esfuerzan en su propio motor? Claro, hasta aquí todo parecía relativamente sencillo, pero en realidad solo hemos hecho la mitad del trabajo. Hasta ahora el motor simplemente estaba comprobando si dos objetos se habían metido el uno dentro del otro. Pero como en muchos otros aspectos de la vida, lo verdaderamente importante no es entrar, sino saber moverte una vez estás dentro. Imaginad que nuestro personaje avanza 10 píxeles por frame. Va caminando tranquilamente y

[06:37] de repente, ¡pam! Ha terminado dentro de una esfera. Claro, no queremos que nuestro juego acabe así. Tenemos que sacar al personaje de ahí. Pero, ¿hacia dónde? Lo suyo sería empujarlo justo en la dirección de la colisión para que parezca que al chocar en realidad se detuvo justo en la superficie. Con esferas, averiguar esa dirección es fácil. Basta con guiarse por la línea que une al jugador con la esfera. Así que con cápsulas será igual de fácil, pero ahora llega el cilindro, así que

[07:05] agarraos fuerte al asiento. Si chocas con el lateral, no hay problema, te empujamos hacia fuera. Y si chocas con la tapa, tampoco, te empujamos hacia arriba o hacia abajo según la tapa que sea. Pero, ¿y si chocas justo aquí? ¿En el borde?

[07:20] ¿Te empujo hacia arriba? ¿Hacia un lado? ¿Mitad y mitad? Obviamente, las matemáticas saben resolver esta situación. Espero que nadie haya puesto en duda el infinito alcance de su poder, pero eso no quita que acabamos de entrar en una zona llena de casos especiales. Y los motores de físicas odian los casos especiales. Porque si no vas con suficiente cuidado, pueden aparecer resultados extraños, temblores y otros bugs. Contrariamente, las cápsulas no tienen casos especiales porque no tienen

[07:52] esquinas. Toda su superficie es suave y continua, así que la dirección en la que hay que expulsar al objeto de dentro cambia poco a poco de manera gradual, sin saltos raros. Pero un momento, los cubos también tienen esquinas como el cilindro, ¿por qué a ellos no se les discrimina también en los motores de videojuegos? Pues porque las esquinas de una caja son mucho más fáciles de manejar. Las direcciones de sus caras ya están definidas. En cambio, un cilindro en el borde ha de combinar dos mundos,

[08:19] el de los planos y el de las superficies curvas. No es imposible hacerlo, nada es imposible para las matemáticas, pero si la cápsula ya evita ese problema y además se mueve mejor por el escenario, como hemos visto, ¿para qué complicarse la vida? Además, cada figura nueva que añadas al motor hay que programar cómo interactúa con las demás, esfera con esfera, caja con caja, caja con esfera, cápsula con caja, cápsula con esfera.

[08:44] Entonces, si empezamos a añadir cilindros, conos, elipses, prismas o cualquier otra figura, la lista de combinaciones se vuelve mucho más difícil de mantener. Por eso los motores de videojuegos prefieren trabajar con el mínimo de piezas básicas, pero que abarquen el máximo de casos posibles.

[09:03] Entonces, ¿nos rendimos en cuanto a intentar tener colisiones en forma de cilindro? ¿Mi pobre Roomba va a tener un chichón en la cabeza y un bulto colgando ahí abajo? Hasta ahora todas las colisiones eran figuras matemáticas perfectas, pero los videojuegos todavía guardaban una bajo la manga, usar un modelo 3D que en vez de servir para representar los gráficos en pantalla, servirá para las físicas.

[09:28] Entonces, podríamos modelar una malla 3D muy parecida a un cilindro, pero que en realidad estuviera hecha de 20 caras, por ejemplo, igual que ocurre con los gráficos 3D. Parecen suaves, pero en realidad son todo polígonos.

[09:42] En realidad, esta técnica también serviría para conos, elipses o incluso rocas irregulares, puentes y lo que necesites en tu juego. Entonces, ¿por qué no simplemente usamos este método de manera universal para cualquier colisión de un juego? Pues, porque a nivel de rendimiento es bastante más costoso. Una esfera solo necesita medir una distancia. Una caja tiene unas reglas muy simples, pero una malla puede tener cientos o miles de triángulos que comprobar. Por eso los videojuegos

[10:11] intentan usar esas figuras básicas siempre que puedan, ya que resuelven las colisiones de manera mucho más eficiente. Por lo tanto, es habitual que los juegos muchas veces prefieran reservar las colisiones con mallas 3D solo para cuando no les quede otra opción. Respondiendo a la pregunta principal, los videojuegos odian los cilindros porque les complican la vida, mientras que al final, ya sea una cápsula o un puñado de triángulos de un modelo 3D, consiguen prácticamente el mismo resultado.

[10:41] Hoy ha participado mucha gente, ¿eh? Sergian SegaSonic dobló la voz del policía, el canal de Cris dobló al delincuente, Dani Capa hizo la miniatura y seguiré encargándole más si os gusta el estilo. Ah, y seguramente tengáis dudas de quién es este que ha aparecido de fondo en el vídeo. Es Alba Majo, desarrolla videojuegos.
