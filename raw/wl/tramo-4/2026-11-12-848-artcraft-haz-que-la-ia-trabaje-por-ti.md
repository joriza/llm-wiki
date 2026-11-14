# 848 - ArtCraft: haz que la IA trabaje por ti

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=I5D_lJjEqKk)
- **Canal**: atareao
- **Publicado**: 2026-11-12
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 37:18

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:08] Hola, soy Lorenzo y esto es Atareao con Linux, episodio número 848. Lo cierto es que todo esto de la inteligencia artificial, todo esto de los modelos de lenguaje, todo lo que estamos hablando en los últimos meses han venido a revolucionarlo todo y, cuando digo todo, es todo. Y, por supuesto, Linux y el escritorio no podían quedarse aparte.

[00:29] En este sentido no es tanto por la los modelos de lenguaje que estén ya interactuando con el escritorio, que probablemente ya lo estén y yo no me haya dado cuenta de ello, sino más bien por la cantidad de herramientas que han empezado a caer del lado de Linux.

[00:44] Bueno, realmente han empezado a caer de todos los lados, pero en el mundo de Linux también. Y esto es superinteresante porque hasta el momento adolecíamos de algunas herramientas que necesitábamos. Algunas por compatibilidad directa con otros sistemas operativos o con otras herramientas y otras porque estuvieron, como por ejemplo eh eh alguna herramienta para CAD y que dejaron de estar o que las herramientas que hay actualmente no son exactamente compatibles o no son exactamente iguales

[01:15] que lo que teníamos. Por ejemplo, lo típico es Photoshop. Eh, yo soy un un usuario por defecto de GIMP. Siempre he utilizado Bueno, siempre, desde hace muchísimos años, yo te diría que desde hace más de 20 años que utilizo GIMP. Y lo utilizo eh lo suficiente como para haberlo utilizando documentos, valga la redundancia, utilizando documentos oficiales, tanto GIMP como Inkscape. De hecho, todos los eh todas las artes, todos los diseños que hago de cualquier cosa las hago con Inkscape. Y hasta el

[01:49] momento pues eh con esto he tenido más que suficiente. Pero hay personas que por la razón que sean han utilizado durante toda su vida Photoshop y ahora son incapaces o nunca sido capaces de habituarse a GIMP, simplemente por el flujo de trabajo que tengan o por la razón que sea.

[02:06] Bueno, pues esto ya puede cambiar porque actualmente ha ha caído dentro del mundo Linux algo que se llama Artcraft, de lo que te voy a hablar en este episodio. Pero no te voy a dar el enfoque que has venido escuchando hasta el momento de todo el mundo y es básicamente que van a acabar con Photoshop, van a acabar con AutoCAD, van a acabar con Word. No, realmente ya existía GIMP para poder haber poder haber terminado con con Photoshop o tenías herramientas como LibreOffice o como cualquier otra

[02:37] herramienta que podían haber acabado con las anteriores y nunca han acabado. Puedes decirme, no, porque el flujo de trabajo no era exactamente el mismo, había ehm variaciones que se habían hecho que prácticamente copiaban el flujo de Photoshop, pero nunca han acabado con él. Y yo creo que esta es tan poca. Y esto precisamente es de lo que yo te vengo a hablar, no exactamente de estas herramientas como las que van a acabar con eh AutoCAD o con Photoshop o con Word, sino esas herramientas con las

[03:07] que vas a poder dejar de trabajar, es decir, con las que la IA va a trabajar exactamente por ti. Y es que lo que te voy a hablar en este episodio es cómo puedes hablar con tu modelo de lenguaje para que él sea el que haga la presentación, el que haga el documento de Word, el que haga las modificaciones de una imagen, cualquier cosa de estas. En principio no me voy a centrar sobre todas, pero ya verás que es superinteresante. Y esto es el el enfoque que quiero darle en este episodio. Nada de voy a acabar o estas

[03:37] herramientas van a acabar con Photoshop, sino estas herramientas eh o mejor dicho, la IA va a acabar con Photoshop, porque tú ya no te vas a poner delante de Photoshop a hacer una imagen, sino que directamente le vas a decir a la IA que te haga la imagen o que te haga el el documento de Word o que te haga la presentación. Así que vamos directos al turrón. En este episodio te voy a hablar de Artcraft.

[04:01] Y para y para ello lo principal es, pues, contarte un poco esto, porque básicamente habrás leído lo de siempre. Una gran cantidad de aplicaciones que están desarrolladas en Rust, puede ser que esto no lo hayas escuchado, pero así es, y que eh van a ocupar el hueco de Adobe y de Microsoft.

[04:22] Y la lo cierto es que eh todas estas herramientas pueden hacer parte del trabajo de que puedes hacer con eh Microsoft, con Microsoft Word o con Adobe Photoshop. No exactamente, probablemente no sean capaces de hacer exactamente lo que tú eh puedes llegar a hacer, pero es que para la mayoría de personas, los que durante muchos años hemos utilizado LibreOffice, pues prácticamente yo con LibreOffice hago exactamente lo mismo que tú puedes hacer con Microsoft Word. Es más, yo puedo

[04:50] hacer muchas más cosas que con LibreOffice que tú puedas hacer con Microsoft Word. Por Bueno, a lo mejor tú no, eh porque me estoy particularizando en ti, pero en general la mayoría de personas, por ejemplo, y esto es una de las quejas que tengo siempre, utilizan Microsoft Word exactamente que si tuvieran una máquina de escribir, ni utilizan estilos, ni utilizan las herramientas que Microsoft Word pone a tu disposición.

[05:14] En mi caso, yo durante los años en los que estuve utilizando LibreOffice y exactamente estuve utilizando LibreOffice con eh organismos oficiales, habíamos implementado las plantillas suficientes como para realmente no utilizar LibreOffice o Microsoft Word como eh máquinas de escribir, sino habíamos eh preparado nuestras herramientas o las herramientas necesarias para que todo aquello funcionara perfectamente.

[05:41] Y por por eso precisamente, y aquí es donde viene toda la gracia, eh a lo mejor tú no necesitas exactamente Microsoft Word. Con simplemente LibreOffice tendrías más que suficiente. Y por esto o por ende, una herramienta como ArcCraft Word o como se llame, probablemente lo pueda llegar a reemplazar.

[06:01] Por lo menos para lo que tú haces o para lo que la mayoría de gente utiliza. Pero esta no es la verdadera noticia. La verdadera noticia es que todas estas herramientas llevan dentro un servidor MCP. Sí, sí, eso que te he estado dando la paliza en los últimos episodios. Bueno, en los últimos meses yo te diría. Es que es esto del MCP, el Model Context Protocol, es un lenguaje con el que tu agente de inteligencia artificial se puede relacionar.

[06:30] Y aquí es donde viene toda la gracia. Tú le puedes decir a tu agente directamente que escriba el documento, que abra un documento, que escriba, que formatee, que meta las fórmulas, que mueva los gráficos, que los exporte y que los guarde. Y esto lo puedes hacer tanto con Word como con eh o sea, con Microsoft Word o con Arc Craft Word o con la de las presentaciones o con todas las herramientas habituales o todas las herramientas que trae esta esta suite ofimática que yo creo que está verde

[06:59] porque ehm para hacer todo esto está un poco verde, pero eh podías utilizar cualquiera de las que te he comentado, tanto LibreOffice como OnlyOffice, pero como te digo, la gran ventaja que te oferta o que te ofrece esta herramienta o este conjunto de herramientas es que se pueden relacionar directamente con tu agente.

[07:18] Tú te puedes conectar con Open Code, por ejemplo, y simplemente eh decirle que escriba un documento de texto con Warcraft sobre la desaparición de los dinosaurios, qué, cómo, cuándo y por qué. Y esto se lo das y él directamente eh va a conectarse mediante un MCP, o sea, el agente se va a conectar mediante el MCP y va ya a crear todas sus cosas. Va a crear el título, la desaparición de los dinosaurios y va a crear pues eh los los distintas secciones, eh los distintos encabezados,

[07:53] eh qué desapareció, cuándo ocurrió, cómo sucedió, todo esto lo va a ir escribiendo y lo va a ir preparando él completamente. Evidentemente yo he puesto un ejemplo, quiero decir, yo te he le le dado ya todo, le he dicho, hala, un documento sobre la desaparición de los dinosaurios. Pero tú podrías hacer exactamente lo mismo eh a partir de tu propia documentación.

[08:16] Es decir, eh aquí tienes todo lo que he trabajado yo sobre este tema y con todo este trabajo que yo he hecho del tema, prepárame una presentación, prepárame un documento, prepárame y esto te lo va a hacer. Eh, en el ejemplo que yo te he puesto, pues eh he hecho exactamente eso. Le he dicho que prepare un documento y él ya me ha preparado directamente un documento eh de dos páginas, tampoco que se haya esmerado mucho, sobre la la desaparición de los dinosaurios. Si yo ahora lo abriera eh Word, voy a abrirlo

[08:50] con Word, puedo abrirlo directamente. Eh, a ver, examinar y le digo eh a ver si lo encuentro porque en eh bueno, para que te hagas una idea, simplemente lo que estoy haciendo es buscarlo a ver dónde lo dónde lo he guardado y aquí está. Desaparición de los dinosaurios. Y aquí está exactamente lo que yo te digo, la desaparición de los dinosaurios, qué desapareció, cuándo, cómo y por qué. Y él te va a contar aquí en un par de páginas exactamente el tema. Pero además yo lo Por ejemplo, también añade el por

[09:26] qué importa hoy. La extinción de los dinosaurios es un recordatorio de la fragilidad de los Todo esto lo ha hecho él en base a vete a saber qué. Pero como te digo, lo lo importante, lo gracioso, lo verdaderamente eh hm suculento de todo esto que te estoy contando es que a partir de tu documentación tú puedes generar documentos. Documentos eh con un formato, con unos estilos, con algo que tú ya tengas preparado. De manera que vas a conseguir que documentos que estén completamente, por ejemplo, en Markdown

[09:58] los convierta a Word con el formato que tú esperas o con el formato que se espera. Y esto es la gran ventaja y el gran potencial de todo esto que te digo. Es más, si ahora yo digo que em aplica un estilo espectacular al documento, él lo que va a hacer directamente es preparar eso. Va a el documento y aplicarle un estilo. Eh, aquí se va a inventar el estilo, pues va a hacer una paleta de no sé qué, el título en no sé qué tamaño, el subtítulo en no sé cuántos, todo eso lo va a inventar, pero

[10:34] lo tendríamos ahí de la misma manera. Bueno, al final Arc Craft no es solo una aplicación, es una organización. En GitHub se llama Story Told y tiene 68 repositorios desde 2021, que está bastante bien. Y dentro hay dos cosas que jamás se mezclan. Por un lado es el estudio de creación con IA y por otro es la Craft App Suite.

[10:57] Y te digo que eh y ya te puedes hacer una idea que todas estas herramientas están implementadas utilizando eh inteligencia artificial. Lo que la suite trae hoy en día son, o por lo menos en el momento en que preparé este episodio, porque a lo mejor esto ha variado, son 13 aplicaciones de escritorio implementadas en Rust puro, sin Electron nor webviews ni nada de esto. Y está licenciado con una licencia dual doble, MIT y Apache 2.

[11:25] ¿Qué quiere decir esto? Que básicamente puedes utilizar cualquier aplicación de estas para lo que te dé la gana, porque la licencia MIT es una licencia completamente libre que te va a permitir incluso empaquetarlo y venderlo. O sea, puedes hacer casi cualquier cosa con ella.

[11:40] ¿Qué es? Eh, el estudio básicamente es una interfaz para desarrolladores, mientras que la Craft App Suite son 13 10 13 digo 13 en el momento que hice esto aplicaciones nativas con sus correspondientes ficheros. Y corre, y esto es una de las grandes ventajas, en Linux, macOS, Windows, FreeBSD, RISC-V y en WebAssembly.

[12:03] El coste libre y sin suscripción ninguna. Sin embargo, el estudio sí que consume créditos y y disponible para utilizarlo tanto en la nube como en macOS como en Windows. Ehm, no en Linux. Un pequeño problemilla. Eh, de las 13 aplicaciones que había cuando publiqué o cuando creé este documento, 12 compilaban ya con WebAssembly a excepción de Fil Craft.

[12:31] Eh, básicamente esto quiere decir que cualquiera de estas aplicaciones las vas a poder utilizar directamente en la nube o te las puedes levantar tú o puedes hacer tú lo que ah básicamente quieras. Como te decía prácticamente al principio, no te quiero hablar de que estas herramientas van a reemplazar a Microsoft Word, lo que te quiero decir es que la IA va a reemplazar a Microsoft Word utilizando estas herramientas o lo que sea.

[12:56] Quiere decir que estas herramientas son quizás el punto de entrada a todo esto porque eh son herramientas que están implementadas ya Es decir, son eh aplicaciones que las puede utilizar directamente tu agente, tu modelo, tu tu modelo de lenguaje, el que tú quieras, un modelo de lenguaje que evidentemente utilice herramientas.

[13:19] Eh, y esto es realmente brutal porque además no necesitan conectarse a un servicio de terceros, no necesitan autenticarse, corren directamente en tu equipo. Un puerto abierto sin control, es todo un regalo para la red. Eh, pero tú todo esto lo puedes correr directamente en tu equipo y no te tienes que preocupar de absolutamente nada. Es un verdadero regalo.

[13:40] Ahora viene la otra parte. Yo lo que he hecho ha sido conectar una a una cada una de las herramientas que he ido probando. Eh, Microsoft Word, eh Photoshop, eh LibreOffice, bueno, LibreOffice o como se llame esta, la de hojas de cálculo, he ido conectándolas una a una. ¿Por qué?

[13:58] Porque las 13 herramientas si las pones en marcha lo que son son 795 herramientas. Claro, 795 herramientas lo que supone es que es un eh consumo de tokens nada más arrancarlo brutal. Así que vale la pena que vayas utilizándolas según necesites. Si vas a utilizar Catcraft o Worlcraft o Figcraft o Gridcraft o Decraft, cualquiera de estas eh lo que tienes que hacer es tener en cuenta esto para habilitarlas una a una.

[14:27] Como te digo, yo en mi caso lo que he ido haciendo ha sido ehm si utilizar eh la el listado de MCPs y ir conectando el MCP que tocara en cada momento. Si voy a trabajar con Worlcraft, pues directamente conecto Worlcraft. Que voy a trabajar con PDF craft, conecto PDF craft y así sucesivamente. Con PDF craft evidentemente ya te puedes hacer una idea lo que puedes hacer. Directamente es que cojas un documento en PDF y que lo desgloses o que le digas que una determinada página la saque o lo que tú

[14:59] quieras. O sea, las posibilidades son brutales. Y es que todo esto lo que lleva es que en el caso particular, por ejemplo de Worlcraft, un agente hace el el documento herramienta por herramienta. Eh sin ventanas, sin necesidad de abrir para nada eh Microsoft Word o en este caso Art Art Art Word o Craft Word, Craft Word. Sin abrir Craft Word.

[15:25] Yo lo he abierto única y exclusivamente para que si eh te conectas a YouTube y quieres ver el vídeo, veas exactamente cómo cómo se muestra. O sea, si yo ahora lo lo abriera de nuevo eh ya me ha cambiado los estilos. Lo ha puesto con un estilo más, bueno, pues con un estilo distinto, simplemente. Y ahora le puedo decir directamente que ehm ehm desarrolle con más profundidad las posibles causas de la desaparición de los dinosaurios.

[16:05] Y que quite el apartado de por qué importa hoy. ¿Vale? Entonces ahora se va a poner a trabajar, pero si te fijas le he dicho dos cosas. Una es que desarrolle todo un poco y otra es que un apartado concreto lo quite. Él ya tiene herramientas para identificar qué partes son y puede trabajar directamente con ellas.

[16:33] Ahora, como te decía, si bien eh estas herramientas funcionan sin ventana, sí que necesitan la aplicación para poder trabajar con ellas. Es decir, eh lo que dejan es abierto un puerto para que puedan trabajar o bueno, un puerto o lo utilizan en modo en modo cli, pero eh necesitas tener la aplicación instalada.

[16:54] Eh, la siguiente herramienta de la que te quería hablar también, o sea, te te he comentado así un poco sobre Warcraft, eh lo siguiente sería Grid Craft, que es ni más ni menos que eh una cómo se llama, una Bueno, la alternativa a Excel y aquí es la siguiente parte que te digo. La siguiente parte que te digo es que con esta alternativa Excel eh puedes tener directamente trabajando a tu modelo de lenguaje para que te genere una una hoja de cálculo. Y aquí te pongo directamente

[17:31] aquí creo que que hice en su momento como prueba una Además, es que eh si lo miras, verás que realmente abre de una manera exactamente brutal. Bueno, yo hice un pequeño cuadro de mando en su momento, un cuadro de mando donde eh se veía pues las las comunidades por plataforma. No sé exactamente de dónde saco los datos, no tengo ni idea, pero hice aquí un uh una una hoja de cálculo, más bien un panel de de mando donde tenía eh los datos mensuales con sus correspondientes gráficos, los los gráficos o los datos

[18:10] correspondientes a las distintas plataformas, YouTube, Spotify, RSS, en fin, todas los las cuestiones, tanto de seguidores como de cuota, en fin, todo el tema. Luego por trimestres y luego la previsión. Eh, yo creo que todos estos datos son inventados porque creo que no le di pie o no le di acceso a ninguna de las herramientas, pero pero simplemente para que te hagas una idea.

[18:32] En un solo punto tienes toda la información. Es decir, aquí ya eh esto ya empieza a eh mucha atracción en el sentido de que eh la gran ventaja que tiene esto es que ahora eh si conectas eh tu modelo de lenguaje a una fuente de donde sacar todos los datos y tu modelo de lenguaje a una fuente eh como puede ser esta, como puede ser eh eh Grid Craft, con Grid Craft lo que va a hacer es convertir todos esos datos que ha extraído de vete a saber dónde en información aquí, información en tu eh

[19:08] Grid Craft, en tu Excel, entre comillas. Bueno, pues con esto ya lo puedes exportar para dárselo a quien quieras. Es más, eh puedes tener toda esta información actualizada día a día y cuando alguien te lo pida simplemente es abrirlo, decir abrirlo no, simplemente decirle a tu modelo de lenguaje que actualice toda la información y él te lo va a crear de nuevo.

[19:32] O sea, las posibilidades que las posibilidades que tiene son brutales. Bueno, aquí eh eh mientras yo te estaba contando todo este rollo, eh este hombre o este modelo de lenguaje ha seguido escribiendo sus cosas, ha empezado a hablar sobre tal, ha añadido nuevas secciones sobre las causas de la extinción, como el impacto de un asteroide, el invierno, y luego me pregunta si quiero eh una conclusión de cierre. Le he dicho que sí y luego te mostraré un poco el resultado.

[20:03] Eh, la siguiente eh [risas] esta es brutal. Lo que le dije es la siguiente de las herramientas es Fit Craft. En Fit Craft, para el ejemplo, lo que hice es que se que mirara cómo estaba hecha eh Atareao.es y que una vez viera Atareao.es directamente que hiciera el ejemplo de Gricraft. O sea, que el ejemplo.

[20:30] A ver si sé yo abrir esto. Vale. Le dije que hiciera un ejemplo exacto de cómo era eh Atareao.es, es decir, conéctate a Atareao.es, mira cómo está hecho y con esto me haces una simulación o un modelo exactamente de Atareao.es.

[20:50] Voy a ver si lo encuentro. Eh, a ver. Aquí está. Atareao Atareao Home, vale. Atareao Web Ficraft, aquí está. Vale. Y aquí está Atareao Atareao Web eh modo eh brutal. O sea, te Él ha cogido eh ha hecho exactamente lo mismo que hay y además lo ha hecho en dos modos, en modo claro y en modo oscuro. Brutal. O sea, es simplemente brutal. ¿Qué qué gran ventaja tienes aquí? Pues la gran ventaja que tienes con esto es que una vez ya te la ha hecho, tú ahora puedes hacer el proceso inverso, ir modificando

[21:28] determinadas partes y esas partes ya convertirlas a HTML para volver a eh modificar tu página web. O es más, si tú no tienes ni idea de diseño o, mejor dicho, si tú sabes como hacer tu página web, pero no sabes como programarla, lo que puedes hacer es a partir de estas herramientas te generas el eh el la eh el boceto y con ese boceto modificas las cosas que tú quieras y ya se las puedes dar a alguien que las programe o incluso se lo puedes dar a un modelo de lenguaje para que te programe esto.

[22:01] La siguiente sería eh Deckcraft. Eh, Deckcraft es eh una herramienta que te va a permitir hacer presentaciones. Es, digamos, el PowerPoint. Eh, aquí tienes exactamente lo mismo. Yo aquí lo que hice es eh decirle un que me hiciera una presentación sobre Traffic. Así directamente. Ehm, no le puse muchas más cortapisas ni le dije nada más, simplemente eso. Y con eso eh pues Pues ya directamente él me hizo aquí una presentación sobre Traffic.

[22:38] A ver si me deja mostrarla. Vale, una presentación sobre Traffic. Aquí no he hecho nada más, simplemente es esto, pero y aquí es donde viene la parte importante. Tengo suficiente documentación en todos mis artículos, publicaciones, etcétera, para haber hecho de esto una presentación exactamente brutal. Una presentación pues como yo hubiera querido.

[23:00] Eh, simplemente A ver si me deja. Bueno, aquí no me va a dejar hacer nada. Pero yo puedo aquí ya hacer una presentación de las típicas donde tienes el las distintas ventanas que vas a a ir mostrando y la siguiente ventana eh que se va que se que se va a mostrar. O sea, te va a contar toda la película en una presentación en la que yo prácticamente no he intervenido para nada. Bueno, prácticamente no. No he intervenido para nada. Directamente le he dicho que hiciera la presentación, es una

[23:31] presentación en PowerPoint, la puedes exportar, se la puedes poner a alguien y con esto ya lo tendrías absolutamente todo. O sea, las posibilidades que tiene es no es tanto, como te decía, herramientas que van a acabar con PowerPoint, con Arcraft, con Word o sea, con Word, con Son herramientas que te van a permitir o van a permitir a un modelo de lenguaje reemplazar el trabajo que tú tienes que estar preparando todo esto.

[23:58] Hasta la fecha, por ejemplo, las presentaciones que yo voy haciendo, todas las presentaciones que utilizo para que me sirvan de guion para cada uno de los episodios de atareado.es las estoy haciendo utilizando eh Types.

[24:14] Eh, si yo creo que Bueno, por si acaso, Types es un eh lenguaje de tipo LaTeX o tipo Markdown, pero mucho más sencillo que el LaTeX y con formato que no tiene Markdown. Eh, todas estas presentaciones yo lo que hago es darle todo el guion y decirle que me monte la presentación. Yo no hago todo esto, sino tengo hecha una plantilla y sobre esa plantilla él lo modifica.

[24:41] Son plantillas muy estándar y plantillas que a mí actualmente me sirven para eh el guion del episodio del del podcast o del o del vídeo. Me sirven para eso, pero claro, esto va mucho más allá. Estás haciendo ya presentaciones de las típicas que utilizas para presentar cualquier cosa.

[24:58] Y aquí eh se abre todo un mundo de posibilidades. Ya no tienes que aprender eh TypeScript o, mejor dicho, ya no tienes que aprender Types, sino que eh ya te puedes manejar exactamente igual que te manejabas con PowerPoint o con la herramienta que te estuvieras manejando, pero no tienes que manejarla tú, la tiene que manejar tu modelo de lenguaje.

[25:19] Bueno, me ha vuelto a hacer sus cosas con la los dinosaurios y aquí pues se ha explayado un poquito. Eh, ya te pone una línea temporal de la de la extinción, las distintas causas de la extinción, eh quiénes sobrevivieron y una conclusión.

[25:36] Realmente es espectacular. Ya te digo, aquí hay mucho que trabajar sobre él porque todo este tipo de cosas probablemente las haya hecho sin estilos y de una manera un poco eh rudimentaria. Básicamente como la mayoría de personas escriben con Microsoft Word, como si fuera una máquina de escribir. Aquí lo que hay que decir ahora es que aplique estilos y si puedes, si ya tienes tu plantilla de de estilos, eh decirle tienes que utilizar esta plantilla de estilos y si no, bueno, pues ya tienes

[26:05] muchísimas más opciones y posibilidades. Pero bueno, simplemente para que te hagas una idea, eh tú podrías escribirle exactamente eh un documento o o tendrías información, por ejemplo, sobre eh la evolución de Linux en los últimos años y le podrías decir hazme una línea temporal de la evolución de Linux.

[26:23] Y no te tendrías que estar peleando con los dibujitos, con los que siempre te peleas y en los que inviertes mucho más tiempo preparando toda esa que haciéndola. Bueno, por ponerte algún ejemplo más, eh también hice alguna cosa con eh Effect Craft.

[26:42] Que A ver, Effect Craft Me he equivocado. Con Effect Craft que no sé no sé exactamente cuál es el el equivalente, pero a ver si me deja abrir proyecto. No sé si tengo alguna cosa hecha. Yo creo que sí. Effect Craft creo que es esto.

[27:06] Creo que hice una presentación. Vale, sí. Vale. Ahora le puedo dar al play y aquí me hace una presentación de Atareao con Linux o no sé qué. Con su supongo que con su musiquilla, sus cositas y y y una presentación, pues eso, muy sencillo todo.

[27:22] Eh, te vuelvo a decir, aquí la gracia es que yo no he hecho absolutamente nada. Le dije que hiciera una presentación de Atareao con Linux, un vídeo, un pequeño corto y poco más, no le dije nada más. O luego le dije, oye, cámbiame esto de esta manera, cámbiame aquello de la otra y ya está.

[27:39] Ehm, evidentemente aquí es donde viene la cosa, si tú tienes una idea de diseño como exactamente la mía, pues te puede te puede salir un churrete como el que me ha salido a mí. Pero si realmente eh tienes idea de diseño, seguro que le puedes sacar muchísimo partido. Porque aquí una de las partes importantes, tanto con con Word o con con eh Wordcraft o Arcraft o como se llamen, con la hoja de cálculo, con el editor de texto, con cualquiera de estas eh más o menos te manejas porque sabes

[28:13] exactamente el lenguaje que tienes que utilizar. Con Effect Craft, pues probablemente lo que te falte, igual que me falta a mí, es el lenguaje con el que le tienes que ir diciendo las cosas a tu modelo de lenguaje para que haga las cosas como tú esperas.

[28:27] Eh, y eh y las posibilidades son brutales, o sea que aquí tienes eh simplemente un mundo de posibilidades, porque cuando te encuentras con esto eh ya ves todas las opciones y posibilidades que tienes. Pero bueno, la cuestión y lo más importante y para que te des cuenta eh hay que también tener una mirada crítica en todo esto que te estoy contando. Se trata de una versión de todas estas herramientas que están en versión alfa, además muy alfa, están en desarrollo. Ehm, a pesar de que tenga 795 herramientas

[29:03] como tiene, lo cierto es que no es que las haga eh las haga realmente completas. A te darás cuenta que le faltarán cosas. Eh, por ejemplo, el desarrollo de PhotoCraft eh pues eh sí que ha tenido un impulso gracias a todo este tipo de ehm como te digo, de hype que se ha creado con Photoshop o PhotoCraft va a acabar con Photoshop o eh cualquiera de estas herramientas. De hecho, eh PhotoCraft en 3 semanas recibió 71,000 estrellas en GitHub, lo cual ha despertado mucho más la atención que

[29:42] cualquier otra de las herramientas de de cualquier otra cosa. Quiero decir que estamos ante algo que puede ser muy potente y no tanto por este proyecto en particular, sino por las manos que tienen nuestras modelos de lenguaje para hacer determinadas operaciones. Con estas herramientas le estamos dando eh opción para que hagan cosas que hasta el momento hemos hecho nosotros. Y aquí es donde creo que tiene muchísima interesante muchísimo interés, perdón.

[30:13] Bueno, eh hasta el momento para retocar una foto, montar un vídeo o preparar cualquier presentación tenías que estar trabajando en él. Ahora puedes decirle cómo quieres la presentación, qué es lo que tiene que contener la presentación, que la haga y tú corregirlo. Igual que cuando tienes un ayudante o una persona que trabaja contigo y le dices, prepara la presentación. Y una vez te ha preparado la presentación dices, no, hombre, no.

[30:39] La primera hoja la quiero de esta manera, la siguiente hoja la quiero de aquella. En fin, que aquí hay un mundo de posibilidades para tener un ayudante que hasta el momento tenías que hacer tú poco a poco. Bueno, llegados a este punto me queda solamente una parte que es hasta el momento yo le dediqué un episodio o varios episodios del podcast y de los vídeos a DraftSight. DraftSight es una herramienta que se implementó y no me acuerdo ahora mismo cómo se llaman los desarrolladores

[31:10] y la sacaron para Linux. Y aquello para mí fue un una auténtica revelación porque era exactamente lo que yo buscaba, es decir, una equivalencia de AutoCAD pero para Linux. DraftSight cumplía exactamente esto. Tenía eh el mismo tipo de formato, es decir, lo que te estaba contando al principio del episodio, básicamente, que hay muchas personas que están acostumbradas a utilizar Photoshop y cuando llegan a GIMP no se aclaran, pues aquí sucede exactamente lo mismo.

[31:38] Aquí con eh DraftSight DraftSight tiene el tenía, mejor dicho, el mismo funcionamiento que con CAD, que con AutoCAD, con lo cual la el cambio era ninguno. Eh, esto mismo pues ahora mismo lo tienes con eh CAD Craft y con otra herramienta que me gusta más que CAD Craft que se llama Open CAD.

[31:58] Open CAD es una herramienta que es muy similar a esta y es la que yo he estado probando y sobre la que te hablaré en algún episodio posterior. Y la he estado probando porque eh quería ver hasta dónde o qué posibilidades tenía el el tema de los modelos de lenguaje para hacer este tipo de cosas.

[32:15] Y y aquí es donde viene la parte un poco negativa y es que no he conseguido hacer nada interesante. Bueno, veremos. Así que bueno, eh tenemos aquí algo realmente eh importante y algo eh muy potente y no tanto sobre estas aplicaciones, sino más bien sobre todas las posibilidades que tienen.

[32:38] Lo que me llevo de todo esto que te cuento es, básicamente, un software de escritorio que se está reescribiendo en lenguajes nativos y que es completamente open source para que tú puedas eh utilizarlo. Ehm, yo creo que con esto tenemos abierto un mundo, no solo porque se están reimplementando aplicaciones, aplicaciones que hasta el momento estaban ehm cerradas, sino porque le están dando manos a nuestros modelos de lenguaje para hacer muchas otras cosas.

[33:12] Y esto es, básicamente, lo que yo quería contarte desde el principio del episodio, que bueno, te he estado ehm mostrando o te he estado contando las posibilidades que te puedes que puedes hacer con con eh los editores de texto, los editores de hojas de cálculo, pero hay un mundo más allá. O sea, tienes 13 aplicaciones que pueden estar gestionadas directamente por tu modelo de lenguaje y esto es muy potente.

[33:36] Y esto es un poco lo que quería contarte en este episodio. Espero que te haya gustado tanto como me ha gustado a mí, porque lo he disfrutado no solamente preparando el episodio, sino viendo las posibilidades que te ofrecen estas herramientas.

[33:49] Llegados a este punto y antes de concluir, te tengo que decir que yo voy a seguir como hasta hasta ahora, en el sentido de que mi documentación va a seguir estando en Markdown y las presentaciones las voy a seguir haciendo con Typst. Y esto es así porque, básicamente, Markdown es un lenguaje plano, con lo cual lo no depende de ningún eh fabricante ni de ningún desarrollador ni de ninguna empresa, sino que es un lenguaje completamente plano que va a seguir funcionar siempre.

[34:18] Bueno, siempre hasta que pase algo, ¿vale? Y el las presentaciones en Typst porque realmente yo lo que estoy buscando es un guion. Y recuerdo aquella conversación de alguien que dijo, si haces una presentación muy espectacular, me refiero a lo que haces con eh ehm PowerPoint o con la herramienta que utilices, probablemente la gente se despiste más con la presentación que con el contenido. Y esto no es el objetivo yo que yo traigo. Mi objetivo es contarte algo realmente interesante.

[34:49] Bueno, y poco más que decirte. Espero que te haya gustado tanto el episodio como me ha gustado a mí y recordarte que puedes dejarme una valoración, tu opinión, lo que tú consideres en atareao.es, en en YouTube, en Spotify, en donde tú quieras que voy a intentar responder por donde sea. Siempre que lo hagas en atareao.es eh tengo ojos para ello. De hecho, tengo un modelo de lenguaje conectado directamente a atareao.es para eh informarme de si alguien ha escrito algo, para que veas.

[35:20] Y poco más que decirte. Recordarte que este es un podcast de la red de podcast de sospechosos habituales donde puedes encontrar fantásticos y maravillosos podcast. Puedes participar en esa red entrando en Telegram en @ illet info.

[35:30] Pero si quieres participar en el grupo de atareao con Linux, te recomiendo que busques atareao con Linux en Telegram y allí nos vas a encontrar hablando de modelos de lenguaje, de licencias, de Linux, de ehm programación, en fin, de todo este tipo de cosas que tanto nos gustan.

[35:48] Y del mundo del alojamiento que últimamente le estoy dando mucha caña. Ya te contaré. Y poco más que decirte. En el próximo episodio, antes de que se me olvide, te hablaré sobre unas peleas que he estado teniendo para programar más o programar, utilizar más los modelos de lenguaje locales.

[36:05] Eh lo que he estado haciendo ha sido comparar modelos de lenguaje locales eh para hacer determinadas tareas. Por ejemplo, para eh los, ¿cómo se llaman? Los la hm las palabras clave que se muestran en YouTube. Bueno, pues esto ya lo estoy haciendo con un modelo de lenguaje local. Para programar también estoy utilizando modelos de lenguaje local para que me hagan determinados scripts.

[36:27] Eh para determinadas operaciones también utilizo modelos de lenguaje local. Y lo que hago es mediante un modelo de lenguaje ehm más potente, en este caso, ojo, que estoy utilizando DeepSeek eh 4.1 Flash y además con el modo de pensamiento bajo, bueno, pues con eso eh directamente coordino a los agentes para que me hagan exactamente lo que quiero.

[36:49] Pero de esto ya te hablaré en otro episodio. Así que nada más que decirte. Recordarte única y exclusivamente que la vida son dos días y uno ya ha pasado, así que disfruta como si no hubiera mañana y si puede ser con Linux y en este caso con Artcraft mejor que mejor.

[37:03] Un saludo y nos escuchamos el próximo lunes. Hasta luego. [música]
