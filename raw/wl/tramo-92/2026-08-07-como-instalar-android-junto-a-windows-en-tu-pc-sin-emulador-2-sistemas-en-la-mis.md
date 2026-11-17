# Como Instalar Android JUNTO a Windows en tu PC SIN Emulador │ 2 Sistemas en la Misma Computadora

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=MlHA4vkYR9I)
- **Canal**: Abraham Francisco Baez
- **Publicado**: 2026-08-07
- **Recopilado**: 2026-11-17
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 25:26

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] cómo instalar Android en una partición de nuestro disco y así poder elegir si arrancar con Android o arrancar con Windows. Te voy a mostrar uno de los mejores sistemas operativos basado en Android para que pueda correr con esta fluidez y así poder iniciar, ya sea desde Windows o iniciar con Android. Te voy a mostrar todo el paso a paso para que lo puedas realizar sin ninguna complicación. Pasemos a la pantalla de Windows.

[00:35] Hola, ¿qué tal? Bienvenidos. Vamos a necesitar una memoria USB 8 GB o superior y además la imagen ISO del sistema operativo Android. Para ello vamos a ir hasta nuestro navegador. En nuestro navegador vamos a escribir Bliss OS, tal y como lo tengo aquí escrito. Luego vamos a desplazar hasta la página Source Forget.

[01:02] Mírenla ahí donde está. Vamos a entrar directamente hasta este enlace. Se abre esta página. Yo voy a traducir. Desplazo un poquito hacia abajo y ahora voy a entrar en la sesión de archivos. Miren ahí. esa pestaña de archivo. Vamos a entrar hasta ahí. Vuelve a cargar la página. Vamos a desplazar. Déjame cerrar esta publicidad por aquí debajo. Y ahora vamos a entrar en oficial.

[01:31] Nuevamente carga la página y aquí vamos a seleccionar Bliss OS 15. En la versión 15 hacemos un clic, desplazamos nuevamente y entramos ahora en gaps. Vuelve a cargar la página. Entramos en genérico, desplazamos nuevamente y vamos a descargar la imagen ISO del sistema operativo Biss OS en la versión 15.

[02:05] Miren, es esta la segunda opción, la que termina en ISO. Si ustedes se da cuenta, aquí dice punto ISO. La primera no termina en punto ISO, entonces es la segunda. Hacemos un clic, va a empezar la descarga. seguido termine este conteo. Ya inició, yo lo tengo descargado, así es que voy a detener la descarga para hacer el video mucho más rápido. Ahora voy a ir a descargar la herramienta Rufus para poder hacer la memoria buteable. Vamos a escribir Rufus y vamos a entrar directamente hasta la

[02:42] página oficial de Rufus. Vamos a desplazar y seleccionamos la primera opción. Ya se descargó. Voy a ejecutarlo inmediatamente haciendo un clic encima. Sí. Ahora voy a cerrar esta ventana. Ya no la necesitamos. Voy a poner por aquí.

[03:01] Voy a hacer un zoom para ver con mejores detalles lo que vamos a hacer. Automáticamente conectamos la memoria. Le va a aparecer en esta sesión. Si no la selecciona solo el programa pueden hacer un clic y seleccionarla. Yo le tengo como nombre a esta memoria Blizzos. Nada que ver. A usted le va a salir simplemente con el nombre que tenga aquí. No hay ningún inconveniente con eso. Vamos a dar un clic en seleccionar. Se abre el explorador de archivo. Hacemos doble clic en el sistema que descargamos. Doble clic y

[03:33] automáticamente este programa carga la ruta. Aquí muy importante para evitar fallos es el esquema de partición que vamos a seleccionar. Esto va a depender del esquema de partición en el que tenemos Windows. ¿Cómo vamos a saber eso?

[03:51] Bastante fácil. Clic derecho. Vamos a hacer en el menú inicio y aquí vamos a elegir administración de discos. Se va a abrir una ventana. Una vez se abra esta ventana, vamos a elegir nuestro disco local C, que es este que está aquí. Mírenlo aquí. Empieza aquí.

[04:12] Esas son particiones del disco local set. O sea, vamos a situarnos aquí. En mi caso es disco cero, que pertenece al disco local C. Míreno ahí. Y vamos a hacer clic derecho y vamos a entrar en propiedades. Una vez dentro de propiedades, en esta ventanita, vamos a hacer un zoom para que puedan ver bien. Vamos a ir hasta la pestaña volúmenes y aquí le va a decir si está en GPT o en MBR. Aquí me dice tabla de partición git GPT. Entonces, ya yo sé que mi sistema operativo está en

[04:46] GPT. Cierro por aquí, cierro esto por aquí y procedo. Vamos a ver bien esto. Ahí. Perfecto. Voy a proceder a seleccionar la tabla de partición GPT porque mi sistema está en GPT para no tener incompatibilidad. Ahora vamos a seleccionar empezar. Okay.

[05:11] Escribir en modo ISO. Perfecto. Okay. Algo importante, todo lo que tengan en la memoria USB se va a eliminar, así es que tiempo de sacarlo. Como yo no tengo nada importante, voy a darle okay. Empieza a formatear la memoria y luego va a desglosar el sistema para pasarlo a la memoria y crear la memoria bootable.

[05:31] Debemos esperar hasta que esta barra verde llegue hasta el final, lo que indica que ha finalizado. Esto suele demorar menos de 10 minutos y en algunos casos incluso menos de 5 minutos. Ha terminado. Como pueden observar, se demoró apenas 3 minutos con 18 segundos.

[05:51] Vamos a proceder a cerrar este programa. Y ahora para realizar una partición exclusivamente donde se va a instalar el sistema operativo, voy a proceder a retirar la memoria para no confundirnos. Vamos a poner el zoom como va. Okay, ahora en el botón inicio de Windows, vamos a hacer clic derecho y vamos a volver a seleccionar administración de discos. Esperamos hasta que abra.

[06:21] Perfecto, ya abrió esta ventanita. Vamos a ponerla aquí un poco más pequeña y vamos a hacer un zoom para que puedan ver con más detalles lo que vamos a hacer aquí, mi gente. Vamos a crear una partición, como dije anteriormente, pero primero vamos a ver el espacio que tenemos disponible. En mi caso, yo tengo espacio de sobra, tengo más de 400 GB disponibles. En su caso, usted va a elegir de acuerdo a la capacidad que tenga disponible. ¿De dónde vamos a realizar la partición? Bueno, del disco

[06:55] local C. Esta partición que está aquí, valga la redundancia, estas no se deben tocar. Esto tiene que ver con el inicio de Windows. ¿Okay? No se deben de tocar. Voy a hacer clic derecho en esta parte de aquí, luego reducir volumen. Vamos a esperar hasta que calcule lo que tenga que calcular todo el espacio.

[07:17] Aparece esta ventana en la cual vamos a colocar la capacidad que vamos a designar para la partición. Aparece en la unidad de MBte, es decir, si yo pongo aquí 25, no está poniendo 25 GB, sino 25 MB. y 1024 MB es 1 GB. Entonces, yo voy a seleccionar para esta partición 128000 MB, que vendrían siendo más o menos eh 128 GB, pero no exactamente, porque recuérdense que 1 GB es 1024 MB, entonces esto vendría siendo como 125 GB aproximadamente. Ahora voy a hacer un clic en reducir. Vamos a esperar hasta

[08:01] que haga la partición. Y ha terminado. Mírenla aquí la capacidad 125 GB. Muy importante recordar la capacidad final que creamos para que en la otra interfaz podamos identificar esta partición. Es de 125 GB. En mi caso, la vamos a dejar así. Ahora sí vamos a proceder a conectar la memoria USB para apagar la computadora.

[08:34] Procedo a apagar la computadora para luego encenderla e iniciar desde el menú de booo para seleccionar la memoria USB como la unidad principal de arranque. Vamos a esperar hasta que se apague por completo. Ya se apagó. Voy a proceder a encenderla y voy a presionar repetidamente la tecla F12, seguido enciendo la computadora para que entre el menú de Bo. Si no sabe cómo entrar al menú de BO en su computador, pues puede escribir el modelo, la marca de su computadora en Google y preguntar cómo

[09:10] entrar al menú de buteo. Y ahí le va a decir, "Perfecto, estoy en el menú de buteo con flecha hacia abajo, flecha hacia arriba, puedo desplazarme en este menú. La opción que nos interesa seleccionar es la memoria USB, que la van a poder identificar por la marca que aquí aparece. En mi caso es una memoria Sandix. En su caso usted elige la marca que le aparece que es de su memoria. Y vamos a presionar la tecla enter. Vamos a esperar hasta que cargue la próxima interfaz para seleccionar la opción

[09:41] adecuada para continuar con el procedimiento. Bien, déjame encuadrar esto bien para que se vea mejor. Chima más para atrás. Ahí, perfecto. Miren, aquí vamos a seleccionar en este menú la opción de Blizzos 15.9.224 101 installation. Okay, la que termina en installation, esa es la que vamos a seleccionar. Presionamos la tecla enter.

[10:08] Recuerden, con flecha hacia abajo y flecha hacia arriba se pueden desplazar en los menús. También flecha a los lados. Si tenemos esas opciones aquí, vamos a presionar la tecla enter. Aquí se supone que deben aparecer todas las particiones que tenemos del disco. Más sin embargo, ustedes vieron que yo hice una partición de 125 GB, pero aquí no aparece. Entonces, cuando sucede eso, que probablemente les suceda, lo que van a hacer es lo siguiente para solucionarlo. Van a desplazarse con la

[10:43] flecha hacia abajo hasta el menú que dice créate, modify, partition, así como se escribe, lo estoy pronunciando. Una vez situado ahí, presionan la tecla enter y ahora en la primera opción o la opción que tenga la mayor capacidad, que es la capacidad total del disco, ustedes van a dar enter. Tranquilo, no se va a borrar nada. Okay, aquí vas a seleccionar esta opción que dice no.

[11:08] Continúe tu CF disc. Presionamos enter y vamos a poner en tamaño completo para que puedan ver todo lo que me sale por aquí. Miren mi gente, desde aquí vamos a seleccionar el espacio de 125 GB que yo acabé de crear. Voy a ponerlo de cerca para que ustedes puedan ver dónde está. Voy a desmontar el teléfono del trípode. ¿Cuál es espacio? Observen por aquí. Miren este que está por aquí.

[11:44] 125. Mírenlo ahí. 125 GB. Vamos a desplazar hasta seleccionar esa opción. Ahora va a quedar así. ¿Qué vamos a proceder ahora a hacer? Bastante fácil, señores. Vamos a presionar la tecla enter, pero ojo aquí con la opción de 125 G seleccionado. Entonces, vamos a presionar la tecla enter. Miren que aquí debajo le va a salir ese puntito de inserción y vamos a presionar nuevamente enter.

[12:18] Perfecto. Ahí ustedes están viendo que ya aquí arriba vamos a subir, vamos a volver a posicionarnos otra vez en la opción de 125 GB porque al hacer enter dos veces se sube automáticamente aquí arriba. Entonces seleccionamos esta opción. Ahora venimos hacia abajo y con las flechas hacia los lados podemos movernos. Aquí vamos a elegir WR right. Mírenla ahí. Esa opción vamos a elegir y vamos a presionar enter.

[12:55] Vamos a esperar. Aquí vamos a escribir y en esto que nos sale aquí la palabra yes. Yes. Miren, ahí está escrito. Y presiono la tecla enter. Eso es para guardar los cambios. Ahora, ¿qué vamos a hacer? Bueno, en este mismo menú vamos a desplazarnos. Bueno, se quedó en automático en quit. Hasta esa opción era que yo quería llegar para salir de este menú. Si no, usted se desplaza con flecha hacia los lado, selecciona quit y presiona enter. Okay, vamos a esperar la siguiente pantalla.

[13:31] Eso le vamos a dar aquí en enter. Y ahora sí voy a poner el teléfono en el trípode. Al realizar esos pasos ya podemos ver la partición de 125 GB que creamos en Windows. Ahora vamos a ir hasta la primera opción que dice VFAT SDA1VAT.

[13:53] Vamos a presionar enter y muy importante, deben elegir la opción do new reformat. Okay. O si no pueden perder el inicio de Windows. Entonces vamos a elegir esa opción. Luego vamos a elegir y ahora vamos a desplazar hasta la opción de 125 GB, que es donde se va a instalar el sistema operativo Android.

[14:18] Presionamos Enter. Aquí vamos a seleccionar 4. Presionamos enter. Luego vamos a presionar okay. Aquí vamos a ponerlo en yes con flecha hacia los lados. Y vamos a esperar hasta que termine este proceso que termina muy rápido.

[14:38] Ha terminado. Aquí vamos a dejarlo en Yes. Y en este menú vamos a seleccionar la primera opción que dice group do F bootader. Enter. nuevamente, okay, volvemos a esperar este otro proceso. Finalmente aparece esta ventana, lo que quiere decir que ya el sistema se instaló correctamente. Tenemos dos opciones, una iniciar automáticamente desde aquí el sistema Blizzos basado en Android o reboot, reiniciar. Yo recomiendo reiniciar para ver nuestro menú de opciones de BO y así poder

[15:16] arrancar ya sea desde Windows o desde Android. Entonces, voy a presionar reboot, pero primero voy a poner en tamaño que pueda ver la pantalla completa. Presiono enter. Enter nuevamente y vamos a esperar hasta que presente el menú donde podemos seleccionar arrancar de Windows o arrancar de Blitz OS. Voy a retirar la memoria USB. Ya la podemos retirar porque ya el sistema se instaló en la partición de nuestro disco. Ahí está cargando. Vamos a esperar hasta que presente. Bueno, ya la presentó la

[15:49] interfaz. Miren. Para iniciar desde Android vamos a seleccionar la primera opción. Para iniciar con Windows, vamos a seleccionar la que dice Windows. Olvídese lo que diga más para allá. Entonces vamos a iniciar obviamente con Bliss OS. Aquí la primera opción.

[16:08] Presionamos enter y ahí empieza a cargar. Ahí pueden ver el logotipo de Bliss OS. Si te está gustando este video, recuerda suscribirte, comentar, dejar un me gusta, pues sabe que todos mis videos son bastante explicativos. Lo explico paso a paso para que cualquier persona lo pueda comprender bien. Aquí vamos a tomar el puntero del mouse y vamos a dejarlo presionado, clic izquierdo y lo vamos a desplazar hacia arriba para poder elegir eh con cuál de estos inicios arrancar.

[16:45] Yo voy a elegir Smart Doc iway para que siempre arranque con ese. Entonces vamos a darle en let's start y aquí le voy a poner stock. Okay, hago un clic en esta opción, en esta parte y vamos a darle los permisos. Vamos a seleccionar SmartDC, vamos a habilitarla, vamos a ir atrás y también lo vamos a hacer con TaskB, aunque no lo estamos utilizando ahora ese inicio, pero también es bueno obtenerlo. Vamos hacia atrás. También voy a seleccionar esta opción de este menú enable, la voy

[17:26] a habilitar y por supuesto la última opción también. Vamos a ir hasta manager, seleccionamos smartdoc y vamos a habilitar esta opción. Permitir. Vamos a ir atrás. Atrás nuevamente y ya tenemos todo listo. Vamos a presionar la tecla escape de nuestro teclado o escape. Y ya podemos ver nuestro menú. ¿Dónde están todas las aplicaciones? En este botón. Miren este botón que está por aquí. Hacemos un clic ahora. Muy importante porque a muchas personas le empieza a fallar el sistema

[18:05] porque empiezan inmediatamente a descargar aplicaciones. Recuerden que debemos esperar hasta que se actualicen los servicios de la Google Play o de la Play Store. Vamos a ir poniendo nuestra cuenta. Para ello, primeramente hay que conectarse a internet. Así es que voy a desplazar hacia abajo esta barra, voy a presionar este icono de internet y luego vamos a darle en conectar a Wi-Fi. Vamos a esperar hasta que escanee todas las redes. Ya la mía aparece por aquí y voy a proceder a poner mi contraseña.

[18:39] Conectar. Voy a seleccionar esta parte de aquí y salgo. Perfecto, ya salí y estoy conectado a internet. Ahora vamos a proceder a poner este sistema en español. Vamos a entrar hasta settings y voy a desplazar con la ruedita del mouse hasta la opción system.

[19:03] Luego esta opción que aparece aquí. Otra vez hago un clic en esta opción. Ahora agregar un idioma en esta opción y voy a buscar español. Vamos a buscar español. Español. Aquí está español. Estados Unidos y lo voy a poner en la primera posición, clic izquierdo, lo dejo presionado y arrastro hacia arriba. Y ahí ya el idioma ha cambiado de nuestro sistema. Tecla de escape. Le doy hacia atrás.

[19:32] Ahora voy a proceder a abrir la Play Store. Mírenla por aquí. Vamos a abrir la Play Store, acceder y vamos a proceder a poner nuestro correo electrónico. Y ahora la contraseña. Siguiente. Acepto. No voy a hacer copia de seguridad.

[19:52] Si ustedes ven que aquí debajo no le sale el botón, ni siquiera presionando la ruedita del mouse, simplemente va a hacer un clic en este icono de aquí arriba. Míralo ahí para que se ponga la ventana en grande. Y ahora sí le sale el botón de aceptar en la parte inferior derecha. Como ven, ya se conectó. Ahora que estamos conectados con nuestra cuenta, ¿qué debemos hacer? Debemos esperar por lo menos de 10 a 15 minutos a que se actualicen los servicios de la Play Store, porque si no lo hacen y

[20:27] empiezan de inmediato a descargar aplicaciones, la Play Store se va a cerrar. repentinamente y ustedes van a pensar que es un fallo y no es un fallo, lo que pasa es que se está actualizando. Por ejemplo, miren, yo voy a abrirla.

[20:41] Puse en grande comenzar, omitir. No, gracias. Y ya puedo empezar a descargar aplicaciones. Pero, ¿qué sucede? que si empiezo desde ahora a descargar aplicaciones, puede ser que se me cierre inesperadamente la Play Store o que el juego no abra correctamente por la razón de que debemos esperar hasta que se actualice.

[21:06] También podemos venir aquí a nuestro icono de nuestro perfil, hacer un toque, luego administrar dispositivos y apps. Una vez aquí, si tienen alguna actualización, ¿qué ustedes van a hacer? La van a actualizar. Miren, actualizar todo y vamos a esperar hasta que se actualicen las aplicaciones para así definitivamente poder empezar a utilizar sin ningún problema la Play Store. Bien, se ha actualizado. Voy a ir atrás y voy a empezar descargando un juego de carrera.

[21:41] Vamos a descargar F. Presiono enter y voy a descargar específicamente este instalar. Como pueden observar, ha empezado la descarga sin ningún problema, sin que se cierre la Play Store. Voy a proceder a activar el modo claro y vamos a ir para ello hasta configuración en nuestro dispositivo y vamos a llegar hasta pantalla. Luego vamos a desplazar y vamos a deshabilitar el modo oscuro. Perfecto, ahora sí se ve mucho mejor. Ya solo es cuestión de esperar hasta que termine la descarga,

[22:18] que luego instale y empezar a jugar. Vamos a hablar de los requisitos para correr este sistema. El sistema puede correr hasta con 1 GB de memoria RAM, por supuesto, no tan fluido, pero el inconveniente viene cuando vamos a instalar alguna aplicación que exige más memoria RAM. Por ende, lo recomendable es que tenga 4 GB o más que memoria RAM, dependiendo los juegos que vayas a ejecutar o las aplicaciones, porque como sabemos hay juegos que requieren de más capacidad de memoria RAM. En cuanto al

[22:57] desempeño de la interfaz del sistema, como dije anteriormente, puede llegar a funcionar con 1 GB más, sin embargo, se queda corto para utilizar, por ejemplo, un navegador. Así es que mi recomendación es que tengan 4 GB o más de memoria RAM. Perfecto, ya se ha instalado. Ahora vamos a presionar el botón jugar. Y miren cómo car inmediatamente la interfaz del juego.

[23:25] Ahí estamos viendo la introducción. Bueno, ya arrancamos. Con el puntero del mouse podemos doblar hacia izquierda derecha. La verdad que yo no soy muy bueno en esto. Vamos a ver. Y como pueden observar, se ve fluido. Claro, eso depende de hardware, de las especificaciones que tenga su computador. Bien, vamos a darle hacia atrás y vamos a salir del juego. Vamos a abandonar. Recuerde con la tecla de escape le vamos a dar hasta que nos presente el menú salir. Explorar este sistema, pues creo que es bastante fácil

[23:58] porque ya como estamos acostumbrados a utilizar teléfonos conocemos las funcionalidades, menú que ajuste, todo. Ahora vamos a proceder a apagar las computadoras para que vean cómo se inicia también con Windows. Recuerden, un clic en este menú y luego vamos a venir hasta el botón apagar. apagar.

[24:19] Vamos a esperar hasta que se apague nuestro computador para iniciar desde Windows. Ya que se apagó, voy a presionar el botón de encendido y ahora aparece el menú donde podemos arrancar, ya sea de Android o de Windows. Vamos a iniciar desde Windows para que vea que funcionó el dual B o el doble boteo. Y miren ahí cómo está cargando ya el sistema operativo Windows.

[24:46] Y finalmente subió el sistema operativo Windows. Ahí vieron que funciona correctamente tanto Android como Windows. No explore más Android, las funcionalidades de Android, porque ya estamos acostumbrados a utilizar teléfonos Android y ya todo eso prácticamente todos lo conocemos y no quería hacer el video tan largo. Bueno, mi gente, espero que este contenido le haya sido de muchísima utilidad. Así es que nos vamos a ver en la próxima entrega. Por favor, recuerde suscribirse y dejar un me gusta. Nos vemos.
