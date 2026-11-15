# Deep Freeze GRATIS? UWF: Filtro de Escritura Unificado / Activacion y configuracion básica amateur

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=lH82Nx3dHM4)
- **Canal**: Fernando Branca
- **Publicado**: 2025-11-09
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 14:36

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:01] el UWF este filter que eh en castellano sería filtro de lectur de escritura unificado. es e es una utilidad de Windows que lo que hace es crear una un espacio virtual, una superposición donde se escriben todos los datos de una sesión, digamos, de en la que uno está navegando, trabajando, instalando, desinstalando, probando cosas y al reiniciar la máquina esa esa superposición e virtual desaparece y la máquina vuelve a su estado original. Es exactamente lo mismo que hace un programa como el Deep

[01:03] Freeze. Sería un deep freeze, pero dentro de el propio Windows. Bien, este filtro de escritura unificado ya está en Windows, pero está desactivado y deshabilitado. Entonces, lo que tenemos que hacer es primero habilitarlo para que aparezca.

[01:26] está como digamos este oculto. Primero hay que habilitarlo y después hay que activarlo y configurarlo para que funcione igual que un deep phrase. Para habilitarlo lo que vamos a hacer es ir acá al buscador y poner activar o desactivar las características de Windows. Buscar, nos va a aparecer este cuadrito.

[01:47] Vamos a ir donde dice bloqueo de dispositivo, abrir ahí y hacer un clic acá en filtro de escritura unificado y darle a aceptar. Ahí está. Ahí comienza a buscar los archivos. Esto demora normalmente unos 20, 30, 40 segundos.

[02:07] Busca los archivos, hace los cambios y ahí ya quedaría habilitado, eh, es decir, visible el filtro. Y después vamos a tener que activarlo, que sería como instalarlo para que funcione y configurarlo. Y esto va a funcionar igual que el Deep Freeze.

[02:28] Eh, ahí está aplicando los cambios, igual que el programa que se llama Deep Freeze, hay otro que se llama Shadow Defender, etcéteras, que funcionan exactamente igual, pero esto es totalmente gratuito, que está con Windows. Cerramos y ya está habilitado.

[02:41] Ahora vamos a activarlo. Para activarlo, vamos a acá al símbolo de sistema. cmd. Ejecutamos como administrador. Ahí apareció y tenemos que posicionarnos en la carpeta Windows System 32. Yo estoy en otra acá, entonces voy a cambiarme.

[03:00] CD Change Directory C2 pun bar Windows bar System 32. Y ahí estoy. Bueno, una vez acá el comando para acceder a todos los menú y demás. es h ufmgr.excel y ahí me aparecen todos los distintos parámetros. Sí. Eh, no voy a perder tiempo en explicar los más importantes en cada uno, sino que directamente voy a ir haciendo, voy a ir, digamos, activando el ese deep freeze en mi compu.

[03:40] Em, y a medida que lo hago voy explicando, digamos. Eh, el primer comando que vamos a usar es uwfmgr.x, espacio protect c2 punos. Esto, ¿qué significa? Ah, a ver, creo que escribe algo mal. Ah, claro, me faltó volume. Ahí está. Ahora sí, volumen. Volume protect C dos puntos. Y ahora sí me había olvidado de una palabra. El filtro de escritura protegerá el volumen C. Sí. Ahora vamos a ir a acá y vamos a poner filter enable.

[04:24] Listo. ¿Qué hicimos con esto? Primero protegimos al volumen C. Le dijimos que lo que tiene que proteger es solamente el disco C y lo segundo fue habilitarlo. Tras reiniciar, después de reiniciar el sistema, va a quedar habilitado, es decir, el disco C va a quedar freeado.

[04:40] Listo, eso es todo. Ahora bien, por defecto, esa ese archivo oculto, ese archivo temporal, mejor dicho, ese ese overlay o superposición, así es el nombre técnico, tiene un tamaño de 1 GB y está alojado en la RAM. Nosotros tenemos que ampliarle el tamaño y también este si queremos sacarlo de la RAM y que se cree ese archivo temporal en el disco RG.

[05:22] E bien, lo que vamos a hacer entonces son esas dos cositas. Vamos a primero a escribir uf mgr.x espacio set type disc. De esta manera va a quedar se va a escribir en el disco y no en la RAM. Sí, hicimos algo mal. Sí, hicimos algo mal.

[05:55] Primero tenemos que poner lo mismo que el mismo error de hoy que cometí hoy. Sí, es overlay. Ahora sí, fugr.exe overlay set type disc. Y ahora sí, el tipo de superposición se establecerá en disc. Ahora lo mismo, pero en lugar de set type disc, que por defecto es esto. Vamos a agregar un cero. Vamos a hacerlo 10 veces más grande y en lugar de 1 gig va a tener 10 GB. ¿Sí?

[06:34] Perfecto. Si nosotros ahora reiniciamos el sistema, nos va a quedar el disco en la después cuando la máquina vuelva a prenderse, nos va a quedar el disco C freeado con el archivo de superposición que se escribe temporalmente en el disco rígido y que tiene un tamaño de 10 GB.

[06:53] Entonces, vamos a poder trabajar normalmente hasta que esos 10 GB se llenen. ¿Qué pasa cuando esos 10 GB se llenan? Puede haber problemas de estabilidad, la máquina se puede tildar, puede haber problemas, pueden saltar errores.

[07:10] Para que esto no suceda, podemos hacer dos cosas, o agrandar el tamaño o permitirle a UWF que cuando se llene esos 10 G 10 GB continúe escribiendo el archivo temporal en el espacio libre que encuentre en el disco regido. Sí, voy a buscarlo al comando. Este ufmgr overlay set gu pass through on.

[07:50] Ahí está. El acceso directo al espacio disponible de su perposición se establecerá en on tras reiniciar el sistema. Es decir, que cuando se llenen esos 10 GB que yo le establecí, se va a seguir escribiendo en otra en otras partes del disco que encuentre libres.

[08:04] Esto nos da un montón de de espacio para nuestros para que no se nos tiende la máquina. De todas formas, también lo que podemos hacer es decirle al sistema que nos avise cuando ese espacio que recién establecimos en 10 GB se esté llenando con dos tipos de avisos. el warning, que sería el aviso primero, y el critical, que es el aviso de que ya estás a punto de llenarlo.

[08:36] Eso se establece de la siguiente manera. Uwfmgr overlay set critical thres hold y habíamos puesto entonces que la superposición iba a ser de 10,240. Entonces vamos a ponerle acá 8000 MB. Sí, el umbral crítico es 8,000. Y ahora vamos a poner el otro.

[09:11] No el crítico, sino el otro, el de warning, que es warning threshold. Vamos a ponerlo en 5000. Ponerle, ¿no? 5000. Ahí está. De esta manera lo que hemos hecho hasta ahora es lo siguiente. Frisamos el disco C. Establecimos que el espacio temporal donde va vamos a trabajar en en C va a estar en el disco rígido y va a tener un total de 10 GB.

[09:40] Al cuando llegue a 5 GB va a salir una advertencia, cuando llegue a 8 GB vay a salir una segunda advertencia y cuando se llene, en lugar de tildarse o de reiniciarse la máquina o lo que sea, va a seguir escribiendo el archivo, pero en el espacio libre que encuentre en el disco. Con eso ya más o menos tendríamos todo listo para reiniciar la máquina y que funcione el este filtro de escritura unificado de manera perfecta. Vamos a hacer una última cosa que es controlar que todo esté bien.

[10:12] Para eso vamos a ir al comando ufmgr.ex eh y el comando es get gu config. Y ahí nos va a aparecer la configuración completa. La configuración completa eh que yo se las voy a mostrar desde acá. la configuración actual y la configuración próxima después de reiniciar. La actual dice que el estado del filtro está desactivado, dice que el tipo de la superposición estará en la RAM y que va a tener un tamaño máximo de 1024. Si nos vamos para abajo, nos va a figurar la configuración

[10:57] de la sesión siguiente después de reiniciar, donde el filtro ahora está activado, donde la superposición va a ser el disco, el tamaño máximo 10,000 meg, el umbral de 5000, el otro umbral de 8000 e y el acceso directo al espacio libre activado. Es decir, cuando se llenen estos 10,000 seguirá escribiendo en el espacio libre del disco. Sí, listo. Con eso ya tenemos el deep freeze funcionando.

[11:24] Hay otras cositas que se pueden tocar, por ejemplo, a ver, pero no voy a hacerlo ahora. Eh, este la configuración de servicio, eso significa que eh por ejemplo las actualizaciones de Windows se van a hacer igual a pesar de estar el disco freeado. De otra manera, ahora está desactivado. Así como está, tenemos que que tenemos que desactivar el filtro, o sea, el freeze, el UWF, lo desactivamos, hacemos las actualizaciones y lo volvemos a activar.

[12:00] En cambio, con esto activado, con la configuración de servicio, no sería necesario hacer eso. Directamente los archivos de programa, los de Windows, se actualizarían automáticamente sin tener en cuenta el freeado que le hicimos a la compu.

[12:17] Eh, bueno, eso más o menos es lo más importante. Después, bueno, ahí podemos hacer exclusiones, podemos excluir eh algunos registros de de Windows o carpetas. o directorios o archivos, decirle por ejemplo en el directorio, no sé, C2 pun fotos, que ese no lo no esté frisado y podremos seguir borrando, agregando, quitando archivos y no se van a a que a a modificar al reiniciar la máquina.

[12:55] Eh, bueno, pero eso ya es un poquito más avanzado. Lo básico ya está. Con lo básico que yo ya hice quedaría el deep freeze activado y listo para funcionar. Igual que el Deep Freeze o el Shadow Defender o esos programas, pero gratis. Sí.

[13:19] Por último, yo acá tengo esta utilidad anabooks.com UWF utility, que es un entorno visual más lindo para ver eso mismo y para hacer los mismos cambios. Yo no confío demasiado en eso, prefiero hacerlos en el símbolo de sistema, pero fíjate que solamente a modo de curiosidad lo voy a abrir y acá me muestra los cambios. Sin embargo, ¿ves que acá no me muestra este cambio, el máximo overlay? como que le falta un cero al final, que no sé si es por espacio de por una cuestión de de que le falte un

[13:57] dígito a esto, al display este, o porque no se este programa no lo lee. La verdad que no sé, pero bueno. Acá podemos activarlo, desactivarlo y en change settings cambiar los números, los parámetros, disco RAM, el máximo overlay size, los dos threshold de crítico y el de advertencia.

[14:20] etcétera. Eh, es mucho más práctico por ahí que andar con el con los comandos en el en el símbolo de sistema, en el CMD. Pero bueno, lo dejamos así y reiniciamos la máquina y ya tenemos el tip free.
