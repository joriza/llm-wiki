# 35 años de Linux: 35 curiosidades que cambiaron la informática

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=0l0yP227KRc)
- **Canal**: La Chica de Sistemas
- **Publicado**: 2026-09-04
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 22:35

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hola, ¿cómo están? Todo bien, aquí Alexia, la chica del sistema así. Bueno, este va a ser un video un poquitito atípico porque hace poquitos días que el kernel Linux acaba de cumplir 35 años y nada, remontándonos un poquito a la historia, agosto del 91, Linus Torvalds con apenas 21 años mandó un mensajito al Usenet comp.os.minix diciendo algo así en sus palabras como, "Hola a todas las personas que utilizan Minix, estoy haciendo un sistema operativo parecido a Minix, desde cero, es más que nada un

[00:28] hobby, no va a ser nada ni grande ni serio como el proyecto GNU. Cuéntenme qué cosas les gustan de Minix, etcétera." Y bueno, [música] 35 años más tarde acá estamos, Linux domina la infraestructura global, domina la telefonía móvil [música] y cambió la historia de las tecnologías de la información para siempre. Así que, qué mejor manera que celebrar estos 35 años de historia con 35 curiosidades sobre Linux. Seguramente algunas ya conocen, muchas las hemos abordado ya en los videos del canal y otras son

[00:55] sorpresa, así que vamos para allá, vamos a meterle pata. Número uno, el desfase del debut. El anuncio en Usenet, como les conté al principio del video, ocurrió el 25 de agosto de 1991, pero el código fuente en sí, la versión 0.01, recién se liberó el 17 de septiembre de ese año. Lo increíble es que aunque la versión 1.0 oficial tardó casi 3 años en llegar, recién en el 94, ya para el 92 y el 93 la comunidad estaba armando los primeros sistemas operativos funcionales en base al kernel

[01:25] Linux, estoy hablando de distros, ¿no? Las primeras fueron MCC Interim, SLS, Slackware, Debian y Red Hat. Al día de hoy perduran todavía Slackware, Debian y Red Hat, que se terminó renombrando a RHEL o Red Hat Enterprise Linux. Estos ya estaban compilando software sobre kernels experimentales que ni siquiera se consideraban estables.

[01:44] Número dos, la ironía frente a GNU. En ese mensaje fundacional que les conté al principio, Linus fue muy modesto diciendo, "Linux no va a ser nada ni grande ni profesional como GNU." Pero la ironía histórica es enorme. El proyecto GNU de Richard Stallman llevaba años y años construyendo compilers, shells de altísimo nivel técnico, pero el kernel GNU, el Hurd, se demoraba tanto, tanto, tanto, que de repente aparece el kernel amateur, si se quiere, de Linus Torvalds y fue la pieza que terminó completando

[02:14] el rompecabezas operativo. Número tres. Linux originalmente no se iba a llamar Linux. Linus no planeaba bautizar el sistema con su propio nombre porque decía que podía ser algo egocéntrico. Su idea original era llamarlo Freax, un juego de palabras entre free, por libre en inglés, y freak, que sería algo así como loco. Y la clásica X que identificaba el universo Unix. De hecho, durante casi medio año, todos los makefiles y los directorios de desarrollo locales en su disco llevaban el nombre Freax.

[02:42] Número cuatro. El bautismo, entre comillas, no autorizado de Ari Lemke. El nombre Linux, en realidad, no se lo debemos a Linus Torvalds, sino a Ari Lemke, un administrador de sistemas de la Universidad Tecnológica de Helsinki, donde Linus era estudiante. La cosa es así. Cuando Linus le pidió espacio en el servidor FTP de la universidad para subir el código fuente, a Lemke no le gustaba para nada el nombre Freax, así que, sin pedirle permiso a Torvalds, creó directamente el directorio

[03:07] /pub/os/linux, y cuando Linus lo vio, no le quedó otra que aceptar que el mundo ya lo conocía con ese nombre. En realidad, en el libro de Linus Torvalds, él mismo cuenta que cuando lo vio, hasta inclusive le gustó y decidió no cambiarlo.

[03:20] Número cinco. El accidente del emulador de terminal. En realidad, el desarrollo aceleradísimo de Linux a principios de los 90 se lo debemos a una metida de pata de Linus Torvalds, porque él estaba utilizando Minix y utilizaba Minix para construir Linux, lo usaba como una especie de andamio, digamos. Pero un día metió la pata porque estaba conectándose al servidor Unix de su universidad vía dial-up, y en vez de discar al módem, discó sin querer al disco rígido y, bueno, hizo pelota su instalación de

[03:47] Minix. Y en vez de reinstalar todo desde cero, decidió que era momento de programar su propio driver de discos y su propio sistema operativo. Número seis, el famoso debate del 92 de monolíticos versus microkernels. En enero de 1992, Andrew Tanenbaum, el creador de Minix y una de las máximas eminencias académicas en sistemas operativos, alguien a quien yo admiro muchísimo, abrió un hilo en su propio Usenet en comp.os.minix, donde Linus Torvalds solía postear, titulado "Linux es obsoleto". Tanenbaum sostenía, quizás

[04:17] estaba un poco cansado de que se hablaba tanto de Linux en su propio Usenet, y sostenía que apostar por un diseño monolítico en los 90 era un error gigantesco y que el futuro técnico pertenecía a la elegancia modular de los microkernels.

[04:30] Cuando le metieron el dedo en la llaga a Linus Torvalds, no se calló nada y salió con argumentos puramente pragmáticos sobre el rendimiento en hardware real y la sobrecarga del pasaje de mensajes. Aquel cruce epistolar, si se quiere, se convirtió en el debate de arquitectura de software más famoso de la historia.

[04:46] Con los años, la historia nos terminó demostrando, valga la redundancia, que el diseño monolítico modular, heredero de la filosofía del Unix original de AT&T, es sumamente robusto y eficiente. Sin embargo, hoy en día también conviven sistemas muy estables y rendidores en producción masiva como macOS, con su núcleo XNU, que utiliza un kernel híbrido aprovechando lo mejor de cada mundo.

[05:07] Número siete, de 10,000 a más de 40 millones de líneas. La versión 0.01 contenía exactamente 10,239 líneas de código escritas en C y en Assembly. Y todo este código está descrito casi en su totalidad Hoy, 2026, el árbol de código del kernel supera ampliamente las 40 millones de líneas. Si una sola persona quisiera sentarse a escribir el kernel actual línea por línea, el código de desarrollo superaría los miles de millones de dólares, según los modelos de estimación de ingeniería de software. Es por este

[05:36] motivo que un montón de empresas tecnológicas hicieron los números y se dieron cuenta que en lugar de hacer su propio sistema, era mejor contribuir al desarrollo del kernel Linux. Número ocho, el cambio bisagra a la licencia GPL versión 2.

[05:50] Originalmente el Linux 0.01 se distribuía bajo una licencia casera escrita por Linus Torvalds que no tenía ningún valor legal, que decía palabras más, palabras menos, que quedaba prohibido, estrictamente prohibido, cualquier tipo de cobro por Linux, ni siquiera se podía cobrar para cubrir los gastos de copias en diskettes.

[06:07] Recién con la versión 0.12 en diciembre del 92, Linus Torvalds termina adoptando la licencia general pública de GNU, la GPL versión 2, y este simple cambio legal fue el catalizador que permitió a empresas e ingenieros de todo el mundo invertir recursos en mejorar el código sin temor a ser bloqueados luego.

[06:24] Número nueve, 3 años de gestación hasta la 1.00. Aunque ya miles de entusiastas y administradores corrían Linux en producción entre el 92 y el 93, la versión oficial 1.00 se lanzó recién el 14 de marzo del 94 en la Universidad de Helsinki. Aquella versión ya soportaba multitarea preventiva real, memoria virtual paginada, compatibilidad básica con redes TCP/IP y el sistema de archivos EXT2.

[06:50] Número 10, MCC Interim Linux, la pionera olvidada. Antes del surgimiento de distros famosísimas como Slackware o Debian, la primera distro documentada de la historia fue una llamada MCC Interim Linux, compilada por el Centro de Cómputos de la Universidad de Manchester, Gran Bretaña, en febrero del 92. No tenía instalador gráfico ni dependencias automáticas, se entregaba en cuatro diskettes y había que escribir todos los comandos de terminal manualmente para volcar el binario del

[07:16] kernel y la raíz de utilitarios al disco. Debian, el romance y el homenaje a Pixar. Debian, la distro más influyente de toda la historia, según Alexia, fue fundada en el año 1993 por el recordado y queridísimo Ian Murdock. La distribución Debian nació combinando el nombre de él con el de su novia de aquel momento, Deborah, por eso se llama DevIan.

[07:37] Además, desde 1996 cada versión estable de Debian lleva el nombre en clave de un personaje de la película Toy Story. Buzz, Rex, Buster, Bookworm, Trixie. Esta tradición se instauró en Debian cuando Bruce Perens tomó la conducción del proyecto, que en aquellos años trabajaba en Pixar, casualmente. La rama inestable se bautizó Sid en honor al vecino que rompía los juguetes.

[07:59] Número 12. Tux y los primeros días de GIMP. La icónica mascota de Linux, el pingüino llamado Tux, no existía durante los primeros 5 años del kernel. Aparece recién en 1996. Fue diseñado por Larry Ewing utilizando una versión muy muy temprana e inestable de GIMP, el programa de manipulación de imágenes de GNU.

[08:18] Ewing participó en un concurso de diseño de logotipos impulsado por la lista de correos de Linux y su ilustración se convirtió en el estándar definitivo. Esa misma ilustración sigue siendo el logo oficial de Linux al día de hoy.

[08:31] Número 13. La historia detrás del pingüino. ¿Por qué un pingüino y no un perro como en Golden Dog? Qué sé yo. La idea surgió porque Linus tenía una fascinación particular por estas criaturas. Reforzada por una famosa y muy graciosa anécdota de 1993 en el zoológico de Camberra, Australia, donde estaba de vacaciones con su esposa y un pingüino pequeño le mordió el dedo cuando intentó acariciarlo. Más adelante Linus aclaró con humor que él no quería que el logo de Linux fuera una bestia

[08:55] salvaje agresiva y es por eso que el pingüino de Linux es un pingüino regordete porque dice en sus palabras que en lugar de querer retratar una bestia, quería un pingüino gordito que acababa de comerse un arenque y estaba descansando plácidamente. Así que por eso tenemos el pingüino gordito. 14.

[09:12] Nombre en oculto en el Makefile. Mucha gente no sabe que las versiones de Linux tienen un nombre además de un número. Pero lo cierto es que cada lanzamiento del kernel cuenta con un nombre en clave oficial, aunque no suele verse en los anuncios comerciales ni en la consola por defecto. Vive escondido en la variable name dentro del Makefile en la raíz del código. A lo largo de las décadas hubo nombres como One Giant Leap for Frog Kind, Killer Penguins, Sneaky Weasel o Baby Opossum Paws, que es la de

[09:39] las 6 y las 7, que significa algo así como grupo de zarigüeyas o comadrejas bebé, depende si vives en Argentina le dicen comadrejas, si vives en otro lado le dicen zarigüeya. La cosa es que esto refleja un poquito el humor interno que Linus y los mantenedores del kernel sostienen puertas adentro. Número 15, salto de versión sin motivo arquitectónico. El paso del kernel 2.6.39 a la 3.0 en el 2011 no introdujo ni cambios revolucionarios de API ni rompió espacio de usuario nada. Linus

[10:06] explicó públicamente que simplemente estaba harto de contar versiones con números infinitos y que aprovechando el aniversario número 20 del proyecto convenía resetear el odómetro, literal. 16, rechazo al versionado semántico. En la inmensa mayoría del ecosistema de software actual, romper una API exige subir el número mayor de versión. En el kernel Linux esto no funciona así. El esquema de versiones es pragmático y continuo, regido por una única regla dorada impuesta por Torvalds, nunca

[10:33] rompas el espacio de usuario, nunca rompas el user space. Si una actualización del kernel hace fallar un binario compilado hace 15 años, el problema es del kernel y tiene que revertirse. Número 17, la creación relámpago de Git.

[10:47] En abril del 2005, la empresa detrás de BitKeeper, el software propietario que utilizaba Linus Torvalds para coordinar los parches del kernel, retiró las licencias comunitarias gratuitas tras roces con los desarrolladores, pero lejos de frenar el proyecto, Linus Torvalds se encerró 2 semanas y diseñó desde cero un sistema distribuido ultrarrápido y basado en grafos dirigidos acíclicos llamado Git. Hoy Git no solo sostiene a Linux, sino que es el estándar universal de control de

[11:12] versiones para casi toda la industria del software a nivel global. Número 18, la vigencia absoluta de la lista de correos. A pesar de la popularidad de plataformas modernas con interfaces web, pull request, botones de merge y qué sé yo, el núcleo central de Linux se sigue desarrollando a través de listas de correo en texto plano. Los desarrolladores de todo el mundo tienen que enviar los parches formateados con Git format patch y Git send email, revisando línea por línea mediante

[11:38] respuestas de correo tradicionales. Sí, el código de Linux no se envía por repositorio, se envía por email. 19. El reloj suizo del ciclo de desarrollo. El desarrollo del kernel funciona con una precisión cronometrada. Cada ciclo dura entre 9 y 10 semanas. Apenas sale una versión final, se abre una ventana de cambios o merge window estricta de 2 semanas de duración, donde Linus integra los grandes paquetes de cambios arquitectónicos y los nuevos drivers.

[12:05] Luego la ventana se cierra y se liberan entre 7 y 8 versiones candidatas, RC o release candidates. Cada una de estas sale una vez por semana, dedicadas exclusivamente a corregir fallos y estabilizar código. 20. Greg Kroah-Hartman y el filtro de producción.

[12:20] Aunque Linus Torvalds es la figura pública detrás del kernel Linux, la estabilidad real de los millones de servidores en el mundo descansa en Greg Kroah-Hartman. Greg es el encargado principal de mantener los subsistemas de drivers y básicamente las ramas stables y LTS o long term support. Es considerado una de las personas vivas que más parches de software ha auditado, revisado y aplicado en la historia de la informática.

[12:44] 21. El intento de secuestro de marca. A mediados de los años 90, una persona en Estados Unidos registró la marca comercial Linux a su nombre y comenzó a enviar cartas exigiendo el pago de regalías y un porcentaje de ventas a los distribuidores y creadores de CD-ROMs.

[12:58] Linus, junto a empresas de la comunidad y abogados del movimiento Open Source, inició una demanda federal que logró anular esa maniobra y recuperar el control del nombre, que hoy custodia legalmente la Linux Foundation. 22. El audio que zanjó la pronunciación.

[13:13] Durante los primeros años de vida de Linux, había debates acaloradísimos en foros sobre cómo debía pronunciarse el nombre del kernel. ¿Es Linus? ¿Es Lainus? ¿Es Linius? Para terminar con todas estas discusiones de raíz, el mismísimo Linus Torvalds grabó un audio que durante años formó parte de los repositorios y la documentación diciendo, "Hola, soy Linus Torvalds y yo pronuncio Linux como Linux." Lo cierto es que a Linus Torvalds le han hecho infinidades de entrevistas y donde él

[13:38] siempre responde lo mismo, "En Finlandia mi nombre es Linus, en Estados Unidos me dicen Linus, pero el kernel siempre se llama Linux." 23. El motor oculto detrás de Android. Cada vez que alguien enciende un teléfono Android está corriendo un kernel Linux modificado a través del proyecto ACK por Android Common Kernel.

[14:06] Google toma básicamente las versiones LTS oficiales y les aplica optimizaciones específicas para ahorro de batería, seguridad en hardware móvil y memoria compartida. Linux es indirectamente el sistema operativo con mayor base de usuarios finales en el planeta. 24. El monopolio en el supercómputo. En la década del 90 y a principios del 2000 las supercomputadoras más poderosas del mundo corrían variantes comerciales de Unix como AIX, IRIX o Solaris. Sin embargo, la capacidad de compilar Linux

[14:34] a medida y optimizarlo para clúster masivos barrió con toda la competencia. Desde noviembre del 2017 el 100% de las 500 supercomputadoras más potentes del planeta operan alguna distro Linux. 25. La paradoja del escritorio. Y este está relacionado con el anterior porque hablé de estos dos en mi video anterior. A pesar de dominar internet, la nube, los servidores empresariales y los dispositivos móviles, en la computadora de escritorio tradicional Linux sigue representando una porción minoritaria

[15:01] que oscila entre el 4 y el 5% de la cuota global. Número 26. En la órbita terrestre y en Marte. En el año 2013 los sistemas informáticos de la Estación Espacial Internacional migraron sus terminales de soporte y laptops de astronautas a distribuciones Linux para garantizar confiabilidad y no depender de soporte de terceros. Más lejos aún, el helicóptero Ingenuity que realizó decenas de vuelos autónomos en la atmósfera de Marte como parte de la misión Perseverance de la NASA, operó

[15:27] con un kernel Linux embebido. 27, la ley de Linus y la verdadera dificultad de depurar. En su ensayo fundamental de 1997, La Catedral y el Bazar de Eric Raymond, él analizó el modelo de desarrollo abierto de Linux y acuñó la célebre ley de Linus, "dados suficientes ojos, todos los errores son superficiales". Raymond profundiza en un punto clave que cualquiera que programa o administra sistemas conoce de memoria.

[15:52] Es mucho más difícil encontrar un bug que aplicar un patch. La genialidad del modelo radicaba en que miles de personas corriendo el sistema en hardware distinto exponían de inmediato las fallas. Una vez detectada la causa raíz, corregir el código es la parte más trivial. 28, una PC con 4 MB de RAM. El entorno donde Linus desarrolló las primeras líneas del kernel era bastante modesto e inclusive para estándares de la década del 90. Era un clon de la IBM 386 con 33 MHz y 4 MB de RAM.

[16:22] Su objetivo principal al describir el sistema era exprimir a fondo las funciones avanzadas de cambio de contexto y paginación en el hardware del chip 386, a lo que Minix no aprovechaba bien en ese momento. 29, ¿quiénes financian Linux hoy? Existe a veces ese mito romántico de que el kernel sigue siendo desarrollado exclusivamente por particulares, por personas, individuos, estudiantes en sus cuartos a la noche luego de estudiar.

[16:47] Si bien la realidad es que la comunidad individual sigue activa, más del 80% de los parches que se incorporan al kernel vienen de ingenieros pagos contratados por gigantes tecnológicos como Intel, AMD, Red Hat, IBM, Google, los chinos de Huawei, Meta y Amazon, que colaboran en conjunto en una infraestructura compartida.

[17:08] Número 30, la aventura en Silicon Valley y Transmeta. En el 97, Linus se fue de Finlandia y se mudó a California para trabajar en Transmeta, una startup de tecnología que diseñaba procesadores de bajo consumo. Torvalds aceptó la oferta laboral con una cláusula innegociable en su contrato. Debía tener libertad absoluta y tiempo dedicado para continuar manteniendo y liberando el kernel Linux de manera independiente. La llegada de Rust al kernel Linux. Durante más de tres décadas el kernel Linux se mantuvo

[17:36] como un bastión infranqueable de puro código C y Assembly. Sin embargo, a partir de la versión 6.1 a finales del 2022, el proyecto dio un paso histórico al admitir oficialmente a Rust como el lenguaje de desarrollo de primer nivel para construir controladores con seguridad de memoria en tiempo de compilación. De este modo, Linux soporta oficialmente tres lenguajes: C, Assembly Rust. Linus Torvalds históricamente se opuso y se sigue oponiendo a incluir C++ en el kernel, criticando duramente su sobrecarga

[18:06] oculta y abstracciones innecesarias para bajo nivel. Ahora, con Rust consolidado como un lenguaje moderno y multiparadigma, la puerta para C++ en el kernel quedó definitivamente cerrada para siempre. 32. La firma criptográfica de Linux. A pesar de que el repositorio recibe miles de modificaciones semanales de colaboradores distribuidos en todos los continentes, la versión troncal del kernel, es decir, mainline, conserva una jerarquía estricta. Cada etiqueta o tag de lanzamiento final es firmada

[18:33] criptográficamente por la clave pública GPG personal de Linus Torvalds. 33. El choque con Stallman, la Free Software Foundation y el intento de llamarlo el Lignux. En los primeros años el proyecto Debian recibió patrocinio financiero de la Free Software Foundation, pero esta cercanía trajo fuertes fricciones políticas.

[18:54] Richard Stallman comenzó a tener una injerencia creciente en el proyecto. Insistía que el sistema operativo completo no debía llamarse simplemente Linux y llegó a proponer formalmente el nombre Lignux, una combinación que generó un rechazo casi unánime en la comunidad. Finalmente la FSF presionó para que la distribución entonces adoptara la denominación oficial de bien GNU/Linux.

[19:15] A Linus Torvalds nunca le agradó esta disputa por la nomenclatura. Siempre sostuvo con pragmatismo que cada creador de distribución era libre de bautizar a su sistema como se le dé la gana, pero que el kernel sí es únicamente Linux.

[19:27] Además, Torvalds dejó en claro su postura. Si bien él siempre reconoció la genialidad de la licencia GPL en su versión 2 para proteger el código del kernel, ha declarado en múltiples ocasiones que no comparte en absoluto el dogmatismo ni las declaraciones que salen de la boca de Stallman. 34. El shock del creador y el verdadero motivo.

[19:44] Torvalds ha confesado que si alguien le hubiese dicho en el 91 que su pequeño proyecto casero seguiría en desarrollo pleno 35 años después gobernando la nube, los centros de datos y las redes globales, lo habría considerado una locura total.

[19:57] Linux no nació con un plan maestro de negocios ni con financiamiento de capital de riesgo ni con ambiciones geopolíticas. Nació pura y exclusivamente de la curiosidad técnica, de las ganas de exprimir su propio hardware y de pasar la bien programando.

[20:10] De hecho, su autobiografía se titula exactamente así, Just for fun, solo por diversión. En esas tres palabras Linux sintetiza el motor de todo este viaje. Fue por placer, por nardear, por el puro gusto de escribir código y entender los fierros, tal como nos pasa a nosotros. Y la última curiosidad para celebrar estos 35 años, número 35, la infraestructura invisible del mundo. 35 años después de aquel modesto mensaje en Usenet, Linux es la capa invisible sobre la cual opera la civilización moderna. Desde los DNS

[20:39] raíz que resuelven la web y los centros de datos que procesan la nube hasta la banca electrónica, los enrutadores hogareños, los televisores inteligentes, los exploradores espaciales, el experimento de un estudiante de 21 años se convirtió en la mayor obra de ingeniería colectiva en la historia de la humanidad.

[20:55] Bueno, y hasta acá llegamos con las 35 curiosidades. Por favor, si aún no se han suscrito al canal, no olviden suscribirse y nos vemos en poquitos días más con nuevo contenido. Adiós. [música] [música] [música] [música] [música] [música] ¡Ah!
