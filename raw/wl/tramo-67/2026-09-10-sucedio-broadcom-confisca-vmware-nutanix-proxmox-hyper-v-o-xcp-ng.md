# ¡Sucedió! Broadcom confisca VMware: ¿Nutanix, Proxmox, Hyper-V o XCP-ng?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=pU_-j8XMqa0)
- **Canal**: Profe Carlos Leal
- **Publicado**: 2026-09-10
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 25:04

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hola, buenas. Yo soy ele Carlos Leal. Es posible aumentar tus ingresos en 16,000 millones de dólares corriendo a la mitad de tus clientes? Broadcom demostró que sí. Eso es posible. Tras comprar Bienware hace un par de años, ejecutó la jugada más vilmente brillante de la industria tecnológica. Así que no se olviden marcar su asistencia escribiendo presente en los comentarios, porque esta clase está a punto de iniciar.

[00:38] Para que nos entendamos bien, antes de continuar y para aclararle la vida a toda esa gente que no domina mucho el tema de infraestructura de servidores, vamos a definir rapidito cuatro conceptos clave que voy a estar repitiendo a lo largo de esta clase. No se preocupen, no les voy a hablar en chino.

[00:58] En primer lugar vamos a hablar del hipervisor. Es la joya de la corona digital. Hay varios tipos, pero en un centro de datos serio se usa el hipervisor tipo uno. Aquí no se usan programas comunes ni sistemas operativos mediocres. Se instala el hipervisor en el servidor directamente en el fierro en la máquina física.

[01:24] El resultado, un solo hardware, un solo servidor se puede dividir para crear docenas e inclusive cientos de máquinas virtuales independientes. Es como agarrar un edificio gigante y convertirlo en un edificio de apartamentos individuales donde cada cliente paga su propio alquiler.

[01:45] En segundo lugar, Argentina. Perdón, no pude evitarlo. En segundo lugar tenemos KVM. La kernel base virtual machine. Esto es un motor de virtualización de código abierto que vive dentro del corazón de todos los sistemas Linux. Y ojo con este dato, porque todos los competidores modernos, a todos los que voy a mencionar aquí, de una u otra forma ejecutan el mismo motor porque usan Linux. O sea, es el mismo carro, ¿no? Pero sí todos tienen el mismo motor.

[02:24] También está la hiperconvergencia, una arquitectura donde el procesamiento, el almacenamiento y la red se unifican en un solo bloque gestionado por software. Es como un teléfono inteligente. Antes tenías que comprar una cámara, un reproductor MP3 y un GPS. tres equipos por separado. Hoy lo tenés todo integrado en un solo dispositivo y controlas todo de una sola pantalla. En el centro de datos, la hiperconvergencia se hace exactamente por eso mismo, porque con un solo servidor podes

[02:58] optimizar recursos. No se me puede olvidar la VDI o Virtual Desktop Infrastructor es la tecnología que permite ejecutar escritorios de trabajo completos dentro de servidores en otro centro de datos. Es como utilizar un servicio de cloud gaming para jugar en streaming. La pantalla, el ratón están en tu casa, pero el poder de procesamiento, la tarjeta gráfica están corriendo en una supercomputadora, ¿quién sabe a dónde, a cientos de kilómetros? ¿Por qué es importante algo así en la industria?

[03:35] Porque con la VDI, el escritorio de tu oficina se mueve o mejor dicho te persigue a cualquier pantalla. Es decir, si estás en la oficina central, tenés acceso a los mismos programas que tendrías en una sucursal. Crónica de una compra inesperada.

[03:55] Pongámonos cómodos y hagamos un poquito de memoria. Hace un par de años la vida en un departamento de tecnología, en un centro de datos, era bastante predecible. tenías tus servidores ruidosos en el cuarto de servidores, pagabas tu licencia perpetua Bengware y todo funcionaba. Y tu única preocupación real era sabor de café ibas a comprar o jugarle la broma a los colegas de ponerle sal donde debería irle azúcar.

[04:29] Pero bueno, eso cada quien tiene su humor. En ese entonces, Bienware te vendía soluciones a la carta. Solo quería virtualizar un par de servidores, comprabas una licencia básica y listo. ¿Querías implementar una VDI o hiperconvergencia?

[04:49] Lo agregabas como un extra opcional. Vos armabas tu menú según tu presupuesto, exactamente como un almuerzo tipo buffet. Pero entonces llegó Broadcom y compró BNware y básicamente tiró el buffet al suelo y te obligó a pagar por el menú más caro del restaurante. Y si le decís, "Pero mira, es que yo estoy a dieta y solo quiero un vaso con agua." Brocon te respondía, "Me da lo mismo. Me da igual. Si querés estar sentado aquí disfrutando del wifi y del aire acondicionado, me pagas la

[05:27] entrada, el plato fuerte, aunque sea de langosta y el postre. Y te lo comás o no, eso a mí no me importa. Para que nos entendamos bien, llegó Broadcom, compró Biware y decidió que el modelo anterior era demasiado amigable. ¿Qué hicieron?

[05:45] destruyeron las licencias perpetuas. Un catálogo gigante de 168 productos a la carta lo redujeron de golpe a solo cuatro paquetes cerrados y las tarifas aumentos descarados de hasta el 150%. Y algunos casos, tengo fuentes muy confiables que dicen que han tenido que aumentar el presupuesto hasta en un 1000%.

[06:13] Todo depende de qué tan armado estabas con la tecnología de Bienware. Y seamos en honestos en esto. No importa si estamos en México, Colombia, Argentina, España o Nicaragua. No importa si tu presupuesto se mide en pesos, en euros o en dólares.

[06:35] Eso no es un ajuste a la inflación, eso es un asalto a mano armada. Y conste, no lo digo yo. Según informes de la prestigiosa consultora Garner, se proyecta que la cuota de mercado de BNWare va a caer del 70% que tenía 2024 a un 40% para 2029, casi la mitad. ¿Por qué? Porque la gente está escapando de esos precios leoninos. Y en una encuesta reciente de Rimini Street se reveló que el 98% de los clientes de Miengware ya están evaluando o ejecutando alternativas y un 36% el tercio ya

[07:18] comenzó activamente su migración. Pero eso a Brotcon le importa exactamente lo que a vos te importan las advertencias de extraer el USB de forma segura. Ellos no compraron BNWare para caerle bien a la pyme de la esquina que tiene dos servidores usados que compró en eBay. Ellos compraron Bienware para quedarse con los bancos, con las multinacionales de telecomunicaciones y con los gobiernos. Clientes tan profundamente atrapados que salir de ahí les cuesta más caro que pagar el

[07:52] aumento. Las cifras son frías. La división de software de Broadcom generó 6,800,000000 en un solo trimestre, o sea, un 17% más interanual. aumentaron precios, persiguieron a clientes antiguos con auditorías de hasta 3 días para exigirles retirar parches de seguridad si no tenían contrato vigente.

[08:19] Creo que la palabra para definir eso es usura y aún así generaron más dinero que nunca. Lo que Brocon se llevó. Ahora bien, la pregunta de los 6,800 millones de dólares es, cuando el gigante cayó, ¿a dónde huyó el resto de la humanidad? Porque cuando una puerta se cierra martillazos, el mercado se encarga de abrir un par de ventanas. Y aquí es donde la historia se pone interesante. Vamos a analizar a los ganadores por categoría y como no podría ser de otra forma, primero vamos a

[09:00] revisar a los competidores de peso, a los reyes del sector corporativo. Nutanic, el rey comercial. Si hay un ganador comercial indiscutible tras dos años de caos, ese es Nutanix. Con decirles que yo ni lo conocía. Si me hubieran preguntado, hace dos años pensaría que era una empresa nicaragüense que que vendía helados.

[09:26] Tus ingresos subieron un 18% y rompieron un récord histórico de nuevos clientes. Y es que hay una ventaja enorme que no se puede ignorar. Su hipervisor es 100% gratis, o sea, te elimina de un plumazo el famoso impuesto de virtualización. Y fíjense bien, no lo digo yo, esto lo aprendí en un evento que se llama Touch Day, se realizó aquí en Nicaragua a mediados de julio y un representante de la marca lo dijo, el hipervisor es completamente gratis y si esto fuera poco, te dan la gestión centralizada en

[10:07] un solo clic. Herramientas de migración automática para mover máquinas virtuales desde Bienware sin detener la operación. Fíjense bien, porque esto es astucia corporativa. Durante años su filosofía era hiperconvergencia o muerte. Pero para pescar a toda esa gente descontenta con Bienware dijeron, "¿Sabes qué? Ya no me importa qué juguetes tengas, tráelos todos." y abrieron la plataforma a almacenamiento externo, como decir del Powerflex, Pure Storage o Nep App. Ojo, aclaración importante, número uno,

[10:47] Notanic no es una solución low cost. Si tu meta es recortar presupuesto a cero, entonces vale la pena que sepas que Nutanix cobra y cobra bien porque sus ojos eres bueno y lo bueno cuesta. Pero hay una diferencia abismal entre pagar por un servicio premium con reglas claras que soportar que te multipliquen la factura por 10 de la noche a la mañana y que en el presupuesto del 2026 tengas 100 y que en el del 2027 pongas 100, pero que te das cuenta que de repente el proveedor subió los precios y

[11:24] que esos 100 ya no son suficientes. La gente no huye a Nutanic solo por el precio, huye por dignidad comercial, porque se sienten traicionados y obviamente porque ofrece un excelente servicio con soporte empresarial de calidad.

[11:42] Aclaración importante número dos, especialmente para esa gente que ya me está escribiendo en los comentarios, "Profe, está bueno, excelente que le pase eso a Broadcom porque es una empresa china. Lamento informarte que Broadcon no es una empresa china. Su sede está en Palo Alto, California, Estados Unidos de Norteamérica, en el mero Silicon Valley.

[12:07] Así que la geopolítica asiática aquí no aplica. ¿Sabes qué aplica? Capitalismo salvaje, puro y duro. Ahora bien, ¿qué pasa si tu empresa no puede o no quiere invertir? o no tiene presupuesto para Nutanix, qué mancha tan negra es la pobreza. Entonces, la verdad necesitas una alternativa 100% gratuita. Bueno, ahí entran los otros competidores que son los verdaderos héroes del Open Source. El segundo gran ganador corporativo, aunque a muchos les cueste creerlo, es IBM. Casi estoy seguro que

[12:49] no se esperaban ver un salto del 417% en máquinas virtuales ejecutándose sobre Open Chief durante el último año. ¿Te imaginas vos? Las ganancias se multiplicaron también por 417%. Incluso la NASA migró parte de su infraestructura hacia allá. La ventaja de Open Chief es que te permite ejecutar máquinas virtuales y contenedores uno al lado del otro usando KVM como motor.

[13:20] Pero ya me los imagino en los comentarios. Profe, ¿cómo puedes decir eso? Qué ignorante que sos. Read con Open Chief no es gratis. Suave, calma, calma. Aquí viene el dato clave. Recordate que Rehat utiliza estándares abiertos.

[13:40] y que además existen clones binarios, es decir, toda la potencia de virtualización empresarial está disponible en otras distribuciones comunitarias como Rocky Linux y Alma Linux, es decir, las tenés gratis. Aunque seamos sinceros, esto solo te sirve si tu empresa va rodando a una arquitectura nativa a la nube. Si lo único que queres es levantar servidores con una base de datos SQL de toda la vida y que nadie te moleste, implementar Open Shift es como utilizar un camión de bomberos para ir a pagar una vela.

[14:21] Además, tiene una curva de aprendizaje horrible. Hagamos una pequeña pausa de honestidad técnica. Si el contenido de esta clase te está sirviendo para entender hacia dónde se mueve la industria informática y no quedarte obsoleto en tu trabajo, considera suscribirte a este canal y darle un buen me gusta a esta clase. A vos no te cuesta absolutamente nada y a mí me ayuda a convencer al algoritmo de que estas clases aportan valor real y garantiza que yo pueda seguir creando este material.

[14:55] Tres semanas después del dengue, todavía me valen mis articulaciones. Ya le dieron me gusta, es gratis, no como Brocon, que dentro de poco te vas a querer cobrar hasta por respirar. Ya marcaron su asistencia, solo tienen que escribir presente.

[15:11] Excelente. Sigamos. Proxmox V, la bonita popular. Llegamos al favorito de la casa, al que la mayoría de ustedes ya tienen instalado en un servidor de pruebas o en una PC viejita que tienen ahí arrinconada en una esquina. Proxmox ve ha ganado por goleada el primer puesto en el terreno del código abierto.

[15:36] Durante estos dos años se dedicaron a resolver varias de sus grandes carencias históricas. Por ejemplo, lanzaron Proxmox Data Center Manager PDM para los amigos, para gestionar múltiples clústeres dentro de un tablero. Añadieron balanceo de carga automática y la gran noticia para el mundo corporativo. Bin lanzó soporte nativo para respaldo sobre Prox. Si no me entendiste nada de lo que acabo de decir, no te preocupes. Nadie nace de aprendido ni sabiéndolo todo. Es normal, solo tenés que acostumbrarte a estas

[16:13] tecnologías y es normal cuando estás comenzando, así que hay que seguir estudiando. Pero como a mí me gusta decir las cosas como son, Prosmox todavía tiene detalles. Si pretendés llevarlo a un núcleo de una gran corporación, el tiempo de respuesta de su soporte técnico premium sigue siendo de 2 horas en horario laboral. ¿Te imaginas? Se te cae el servidor de tarjetas de crédito del banco un sábado a las 6 de la tarde.

[16:45] ¿Qué vas a hacer? esperar que llegue el lunes. Además, en nuestra región latinoamericana hay pocos integradores certificados en comparación con el ecosistema tradicional. PDM es un gran paso, pero todavía no es bicenter.

[17:02] Si necesitas a alguien que te sostenga la mano a las 3 de la mañana un domingo porque colapsó la facturación, la red de seguridad de Protmos es más reducida, aunque claro, el costo es prácticamente cero, gratuito. Entonces, perfectamente podrías contratar un experto, un consultor que te ayude el domingo a las 3 de la mañana y millones de administradores están decidiendo que el riesgo vale la pena totalmente. Además, pues con un poquito de estudio se soluciona los especialistas. Eh, luego tenemos a

[17:39] los especialistas de nicho que han aprovechado esta revuelta para crecer a ritmo eniablado. Scale Computando el terreno del Edge Computer, o sea, tienda, fábrica, sucursales sin personal de TI, se alinearon con Lenovo y ofrecen clústeres de tres nodos en unos $10,000.

[18:02] Ojo aquí, en 2025 fueron adquiridos por Acumera, así que habrá que vigilar que la directiva no cambie el rumbo. También está Bercho, una empresa pequeña que reportó crecimientos superiores al 80% de los ingresos recurrentes y arrebató clientes de la talla de Boeing o de la NASA a Bienw. Su hipervisor Berch OS demostró migraciones en caliente en plena jornada laboral sin caídas de servicio. Y a los que están listos para escribir en los comentarios, "Profe, estás desinformando. Primero dijiste que

[18:40] Rehat se había comido el paquete de la NASA y ahora decís que es Verge IO." Si están escribiendo ese comentario, me están confirmando, me demuestran que no saben nada de administrar una infraestructura crítica. En un centro de datos real no le rendís pleitecida ni le sos fiel a una marca. En un centro de datos de nivel crítico, convivís implementass varias soluciones según la necesidad de cada proyecto.

[19:13] Para los puristas del código abierto que no quieren saber nada de supervisores KVM y prefieren seguir la línea del clásico SEN, yo no tengo ningún problema con eso. Y esto tiene un enfoque fuertemente orientado a la soberanía de datos europea y han roto fielmente su compromiso histórico de limitarte a 2 TB por volumen. Y para ir cerrando el abanico de sorpresas, mire lo que apareció en el mapa. HPE Morpos BN Essentials. Philip dijo, "¿Cómo si aquí hay dinero? Lancemos nuestro propio

[19:52] hipervisor basado en KVM. y lo vamos a lanzar con un precio agresivo, $600 por socket con un año de soporte incluido. Al cobrar por procesador físico y no por núcleo, por los famosos core en servidores grandes de densidad de alto tráfico, el ahorro puede llegar hasta el 90% comparado con Benware. Estamos hablando de HP, así que tienen toda la fuerza de ventas para mantenerlo en cualquier empresa. También está Citric Sense Server. Citricó revivir Sen Server 9 para posicionarlo como una alternativa

[20:34] seria ante todo tipo de cargas de trabajo. Pero seamos honestos, la recepción del mercado ha sido más o menos tirando a menos. Parecen más bien como el niño que nadie invitó a la fiesta, pero de todos modos apareció, no llevó regalo, quiere salir en la foto y además quiere ser el que parte el pastel.

[20:58] La realidad es que tras años de abandono y giros corporativos, a Citre le está costando muchísimo convencer a la gente de que esta vez sí van y serio. Fíjense que hay otra sorpresa, Microsoft HyperB o Asure Local, ya saben, ¿verdad? A la hora de un naufragio, muchos corren a agarrarse de la primera tabla que encuentran. Y ante la crisis de Bienware, la primera tabla que muchísimas empresas encontraron fue IPB, simplemente porque ya lo tenían en sus servidores, es decir, ya tenían Window,

[21:37] pues entonces ya tenían incluida la licencia de Hyperb. Hay que reconocer que la versión de Windows Server 2025 mejoró una barbaridad. Soporta máquinas virtuales de hasta 240 TB de RAM, de RAM, no de almacenamiento en disco y trae soporte brutal para GPU compartida.

[21:59] ¿Cuál es el problema aquí? Bueno, que es Microsoft y siempre intentan venderte sus porquerías y ellos están empujando agresivamente a todo el mundo para que vaya hacia Ashur. ¿Y qué significa Ashure? Bueno, que tenés que pagar una suscripción en la nube de Microsoft. Nada extraño, Microsoft siendo Microsoft. Seamos lógicos. Si la gran lección que nos dejó Broadcon fue no dejarnos amarrar, no dejarnos atrapar por las garras de un solo proveedor y que ese proveedor para colmo es agresivo, cambiarte a un modelo

[22:40] de facturación recurrente en la nube para administrar tus propios servidores locales requiere pensarlo dos, tres y hasta cuatro veces. Es decir, estás huyendo de un proveedor agresivo, tal vez el tío Bill no sea tu mejor opción.

[22:56] Acabo de recordar una frase que leí hace poco en un foro de arquitectura de sistemas. decía más o menos así, Brockconó a la virtualización, la obligó a evolucionar. Y estoy de acuerdo con eso porque hace 2 años teníamos prácticamente un estándar de facto, un solo camino por recorrer. Hoy hay un abanico que es más amplio que nunca.

[23:24] Tienes estabilidad sin importar el precio tenés a Nutanianic. vas hacia contenedores y cubernets, entonces la tecnología de Read con Open Chief. Queres contención de costos, soberanía y control absoluto, entonces tenés ahí a Proxnus V o a XCPNG. Tenés cientos de sucursales distribuidas. Entonces, scale computing. ¿Querés optimizar licencias por socket en hardware HPE? Entonces tenés Morpheus VM Essentials. Lo fascinante de todo esto es que en 2 años el monopolio que te tenía cómodo perdió

[24:01] el control absoluto del mercado y los profesionales de TI en Latinoamérica y España y el resto del mundo volvieron a tener libertad de elección. Me gustaría conocer tu experiencia. No revelen muchos datos porque yo sé que están administrando infraestructura e información sensible.

[24:22] Ya dieron el salto fuera de la piscina de Bienware o siguen pagando la factura con el dolor del alma del financiero de la empresa. ¿A qué plataforma migraron? Los leo en los comentarios. Sigo organizando el curso de Docker.

[24:38] También estoy buscando un patrocinador para implementarlo en la NU. Si no lo voy a tener que hacer local. ¿Se portan bien? Nada les cuesta. Aquí termina la clase de hoy. Espero sus reflexiones y análisis en los comentarios. Gracias por asistir a esta clase. Hasta la próxima.
