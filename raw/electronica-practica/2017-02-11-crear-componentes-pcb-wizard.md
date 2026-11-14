# Cómo Crear Componentes en PCB Wizard

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=iT3pGlj_hec)
- **Canal**: Kriss Electronics
- **Publicado**: 2017-02-11
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 10:46

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hola a todos y bienvenidos a este nuevo video. Como ustedes saben, la herramienta de diseño de circuitos impresos que utilizo por ser básica, sencilla e intuitiva es el PCB Wizard. Siguen este software contiene en su librería muchos componentes de comuna aplicación como diodos, resistencias, capacitores, transistores. También carece de muchos otros componentes encapsulados que muy a menudo no son recurrentes utilizar como potenciómetros, conectores de audio, integrados de potencia, entre otros.

[00:24] Pero no se desanimen porque lo que hoy vengo a enseñarles es a cómo crear sus propios componentes en PC Wizard desde cero paso por paso. Esto les será muy útil para agregar a su librería cualquier componente o encapsulado que quieran, pudiendo así realizar sin ningún tipo de problemas el diseño de su circuito impreso. Así que si les interesa saber cómo crear componentes en este programa, los invito a quedarse conmigo hasta el final y averiguar cómo se hace. Ahora sí, comencemos. Bien, lo

[00:48] primero que deberemos buscar es la hoja de datos y las medidas del componente encapsulado que deseemos reproducir con este programa. Yo en este caso elegí el TDA 2050 porque posee el encapsulado Pentawatt, muy utilizado por diversos fabricantes para distintos integrados.

[01:03] En la hoja de datos, además de las especificaciones propias del componente, al final vemos una tabla con las distancias normalizadas para cada parte del encapsulado y más abajo el plano con tres vistas del componente físico acompañado por las cotas con su referencia de placa. En la descripción, además de la hoja de datos de este integrado, les dejaré el link al post donde tendrán el plano con las medidas utilizadas para realizar este encapsulado.

[01:26] Una vez abierto nuestro programa, lo primero que haremos será crear una nueva librería donde guardaremos los componentes que vayamos creando. Para ello iremos al menú de herramientas librería, y daremos clic en nueva librería. Se nos desplegará una ventana donde podremos darle un nombre. En este caso se llamará mi librería de componentes. Hecho esto, ya podemos comenzar. a diseñar nuestro encapsulado.

[01:48] Primeramente asignaremos el tamaño y la forma de las islas o pad de nuestro integrado, para lo cual iremos al símbolo del pad y daremos clic en el cuadro podremos modificar las propiedades del pad, podremos modificar su altura y su ancho, darle la forma circular cuadrada o cuadrada con puntas redondas. También podremos elegir el tamaño del orificio del componente. En este caso, el pad será de 2.2 por 3.2 mm.

[02:13] Deberemos modificar la grilla desde la herramienta situada abajo a la izquierda. Haciendo clic derecho sobre ella podremos cambiar la escala de la grilla. Yo la haré personalizada a una distancia de 0.1 mm, que es la que necesito para situar correctamente los pad a la distancia exacta.

[02:29] Podemos realizar un acercamiento con la lupa y haciendo clic derecho en la herramienta de medida cambiaremos el punto de origen, el cual nos será útil para medir con precisión la distancia entre pats o terminales. Personalmente recomiendo ocultar la grilla, ya que por tener tantas subdivisiones resulta incómodo a la vista. Seleccionamos la herramienta pad y con click colocaremos el primer pad justo en el centro del punto de origen, ya que a partir de este punto podremos medir y situar los demás.

[02:55] Como ven, al mover el cursor se ven estos números acá abajo que nos dicen a qué distancia respecto al origen se encuentra el puntero del mouse. Ahora colocaremos el segundo pin, el cual se encuentra a una distancia de 4 mm hacia arriba y a 1.7 a la derecha del origen.

[03:09] Una vez situado en este punto, con clic, colocamos el segundo terminal. El tercero está alineado al primero, pero a una distancia de 3.5 mm. Siguiendo este patrón y las medidas proporcionadas por la hoja de datos, podremos sin problemas situar a la distancia correcta todos los padon.

[03:28] [Música] Perfecto, ya realizamos la tarea más complicada, que es colocar los pad. A continuación, lo que haremos será dibujar tanto la silueta del componente que aparecerá en la máscara de componentes como su forma real. Para esto iremos al menú Edit y seleccionaremos la capa Silk Screen.

[03:51] Esto lo hacemos para que todos los dibujos que hagamos aparezcan en la capa correcta. Recomiendo dejar todas las líneas de esta capa en color negro, ya que es la que típicamente se utiliza en la máscara de componentes o al menos a la hora de imprimir la plantilla.

[04:04] Hecho esto, con ayuda de las herramientas de dibujo, procederemos a dibujar de manera aproximada la silueta o figura del componente en cuestión. En este caso será un simple rectángulo con tres pines asomando por su parte inferior. Una vez hecho el rectángulo del tamaño exacto, haciendo clic derecho y entrando en sus propiedades, podremos cambiar sus características. Yo lo único que modificaré es su patrón deellenado, que por defecto está en blanco. Se lo quitaré para que quede transparente y no

[04:29] obstruya la vista de las pistas o las citas. [Música] Utilizaremos la herramienta de línea para realizar los pines que asoman por la parte inferior del integrado. Desde sus propiedades podremos cambiar el espesor de la línea.

[04:49] [Música] Ahora toca colocar el número de cada terminal donde corresponde. Para esto iremos al menú edit symbol y por último insertin. Situando el puntero justo en el centro del pad del terminal, haciendo clic lo fijamos. Nos saldrá un cuadro donde podremos modificar el número del pin del que se trate. Siguiendo este mismo proceso, completaremos la tarea con todos los pads, sin olvidarnos ninguno.

[05:26] Dicho esto, seleccionaremos los pads con la silueta y haciendo clic derecho en el conjunto, vamos al menú Arrange y damos clic en group. De esta manera agruparemos todos los elementos evitando moverlos individualmente por accidente.

[05:38] ¿Recuerdan que habíamos hecho una copia del encapsulado? Bueno, esta será la que utilizaremos para realizar la vista real del componente. De momento podemos borrar los pad, ya que no los vamos a necesitar. Seguidamente seleccionaremos todo el dibujo y con clic derecho vamos al menú Layer y hacemos clic en Real Component.

[05:56] Como ven, el dibujo desaparece, ya que lo hemos asignado a otra capa. Para ir a la capa de componentes reales, usaremos el menú lateral. Lo siguiente que haremos será modificar las propiedades de las figuras para añadirle color y así lograr un aspecto más real del encapsulado. En este caso para la carcasa pondré un color negro y luego haré una combinación con un tono de gris. De esta forma conseguimos la ilusión de que el componente posee luz y sombra. Esto ya es al gusto de cada uno

[06:19] y también le quitaré el contorno de la figura. Para los pines, en cambio, decidí realizar rectángulos coloreados con una escala de grises claros con un tono muy similar al color real de los pines metálicos del componente. Si hacemos clic derecho sobre el rectángulo, podremos elegir la opción de redondear las esquinas para darle un aspecto más suave a los terminales. Una vez hecho uno, simplemente lo copiamos y pegamos en los demás terminales.

[06:51] Como vemos, los pines se asoman por sobre el integrado, pero esto no importa, ya que seleccionando el rectángulo, podremos elegir que el rectángulo aparezca al frente, tapando sí la punta de los pines. Bien, ya solo nos resta dibujar la aleta disipadora con grises claros y podremos dar por terminado esta fase del diseño.

[07:11] Por supuesto, dependiendo de su componente y de su habilidad para dibujar, pueden agregarle más detalles como inscripciones, sombras, etcétera. [Música] Debemos agrupar nuestro dibujo y luego arrastrarlo situándolo por encima de los pads que anteriormente colocamos, procurando hacer coincidir a la perfección ambas plantillas.

[07:31] Como vemos, cada gráfico aparece en su capa correspondiente. Desde la capa de componentes reales seleccionamos todo nuestro diseño y le damos clic derecho. Y ahora vamos a la opción agrupar. Ahora ya tenemos todas las capas unidas de forma que se mueven solidariamente al desplazar el componente en cuestión.

[07:48] Solo nos resta agregar el componente a la librería, para lo cual seleccionaremos el componente e iremos al menú Edit Symbol y haremos clic en el botón Make Symbol. En el cuadro que nos aparece deberemos completar los datos y la información con el cual el programa reconocerá el encapsulado.

[08:03] En el apartado K pondremos el nombre del encapsulado con la exección puncage. Esto nos sirve en el caso de que también hayamos creado el componente para el montaje del circuito en el simulador. Y luego en los apartados name and description pondremos justamente el nombre de la descripción o las medidas de nuestro componente. Tras completar esta información le damos al botón.

[08:23] Una vez hecho esto, deberemos modificar las características de nuestro componente ya creado. Haciendo clic derecho en él, iremos al menú propiedades. En el cuadro que nos aparece deberemos asignar una letra y un número para nuestro componente. Para esto deberemos saber de qué tipo de componente se trata. En este caso, como es un integrado, usualmente se suele denominar con la letra U. Pero si por ejemplo están diseñando un diodo, deberán utilizar la letra D, la Q en el caso de que se trate de un transistor,

[08:49] etcétera. En el número recomiendo poner el uno para que siempre el primer componente agregado tenga esta denominación. Y ya por último, haciendo clic derecho sobre nuestro encapsulado, iremos al menú Smbol y daremos clic en Add to library. Elegiremos la librería donde queramos guardarlo y si queremos podemos modificar la información disponible en las celdas. Una vez hecho los cambios necesarios, damos clic en okay y listo. Así de sencillo es como podremos agregar a nuestra librería el

[09:15] componente que nosotros queramos utilizar en nuestros montajes utilizando este mismo método y con un poco de paciencia y de tiempo podremos crear muchos componentes, como este SCK de 6.3 3 mm estéreo con un parecido muy pero muy similar a la forma real del mismo.

[09:30] También dibujé un encapsulado TO220 a costado haciendo una versión con disipador incorporado. Asimismo, podemos hacer diodos o resistencias de algún tamaño en específico. También ha realizado este conector de auricular estéreo de 3.5 mm. Esto es solo cuestión de práctica y paciencia. Me pareció interesante compartir con ustedes esta información, ya que en próximos tutoriales realizaremos proyectos con componentes que usualmente no vamos a encontrar en las librerías de este programa. Y bueno, gente, eso es todo

[10:00] por este video y espero que les haya gustado. Si este tutorial te ha servido, la mejor forma que tienes de agradecérmelo es presionando en el botón de me gusta. Eso me ayuda muchísimo a seguir creando contenido para todos ustedes. No olviden seguirme en mis redes sociales y visitar el post con más información sobre este video. Los links están en la descripción. Los invito a dejarme en los comentarios qué proyectos quieren ver realizado en el canal, ya que me interesa conocer sus opiniones.

[10:25] Por último, en pantalla les dejaré estos videos que estoy seguro que les van a interesar un botón para que se suscriban. Y por mi parte, sin más que decir, me despido hasta el siguiente Tío.
