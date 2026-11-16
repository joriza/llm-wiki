# PyInstaller, Nuitka y Briefcase: empaqueté la misma app tres veces y una tardó 40 minutos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=jY6IS53ESP8)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-08-27
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 05:59

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] 75 segundos. Eso fue lo que tardó la primera herramienta en cerrar el build. La segunda se tomó 41 minutos completos y aún así es la que uso todos los días sin pensarlo dos veces. El binario más rápido de construir resultó ser el más pesado y el más lento en abrir. El que se comió 40 minutos de mi máquina es hoy el que arranca en la laptop de prueba antes de que el cursor termine de parpadear. ¿Cuál de las tres es la mejor? Esa pregunta obvia está mal planteada. Te lo voy a demostrar con los

[00:26] tres builds corriendo de verdad en pantalla. Me llamo Iván y en este canal no comparo herramientas leyendo su documentación. Las corro, hoy corrí PyInstaller, Nuitka y Briefcase contra la misma aplicación de escritorio en Python. Sin trucos, sin configuración especial para que ninguna quedara bien.

[00:40] La apuesta es simple, si empaquetas mal, tu usuario ve un antivirus marcando tu programa como sospechoso o un ejecutable de 80 MB para una app que pesa dos o una app que tarda cuatro segundos en abrir cuando debería abrir al instante. ¿Y por qué pasa esto? Eso ya lo vimos en el video anterior de esta serie. Hoy medimos la causa herramienta por herramienta. La respuesta fácil es decir que Nuitka es más lento y listo, cambiamos de tema. Pero esa respuesta no explica por qué el binario de Nuitka

[01:03] termina siendo el más liviano de los tres. Algo más está pasando. Lo que pasa es que las tres herramientas no hacen lo mismo con nombres distintos, hacen tres cosas distintas. PyInstaller toma tu script, junta el intérprete de Python, tus librerías y tu código y los mete todos en un solo paquete. No compila nada, empaqueta, por eso es tan rápido de configurar. Nuitka hace algo más ambicioso, traduce tu código Python a C y lo compila de verdad, con un compilador real al binario nativo de tu

[01:28] sistema. Por eso tarda tanto. empaquetando, está construyendo. Briefcase no compite con las otras dos en cómo procesa tu código. De hecho, puede usar PyInstaller por debajo, compite en el paso siguiente. Te arma un instalador nativo, un archivo DMG en Mac, un MSI en Windows, algo que tu usuario reconoce y en el que confía al hacer doble clic. Tres estrategias y la que tarda 40 minutos en terminar es todavía la incógnita. ¿Por qué alguien pagaría ese tiempo? Empecemos por PyInstaller porque es el que casi todo

[01:54] el mundo prueba primero. El comando mínimo es este, 1 minuto con 15 segundos de principio a fin en mi máquina. El ejecutable salió pesando 84 MB para una app que en código puro no llega a los dos. ¿Por qué? Porque adentro va el intérprete completo de Python. Y hay un costo extra. En modo one file, el ejecutable se descomprime a una carpeta temporal cada vez que lo abres. Eso explica el arranque de 3,8 segundos que medí, el más lento de los tres.

[02:18] PyInstaller resuelve el problema en 1 minuto, pero ese minuto es exactamente lo que Nuitka se niega a ahorrar. El comando ya no es tan directo, 41 minutos. Sí, ¿escuchaste bien? Nuitka no empaqueta, compila y compilar de C a binario nativo con optimizaciones toma tiempo de máquina real, no de configuración, pero el resultado, 28 MB y un arranque de 0,4 segundos.

[02:38] Prácticamente instantáneo, ese es el trato. Le regalas 40 minutos a tu máquina hoy y tu usuario nunca nota que tu app tardó en abrir. Y sí, tuve un tropiezo real, la primera corrida falló porque me faltaba declarar el plugin de la interfaz gráfica. El error de Nuitka fue específico, te dice exactamente qué plugin activar, pero si no sabes que existe ese flag, te quedas viendo un mensaje de compilador que no esperabas.

[02:57] Entre esos dos extremos falta resolver algo que ninguno de los dos toca. ¿Cómo llega ese ejecutable con confianza a la máquina de otra persona? Ahí es donde entra Briefcase. Acá el flujo no es un comando, son tres, 8 minutos en total, contando los tres pasos, pero lo que sale no es un ejecutable suelto, es un instalador nativo completo, icono, metadata de la app, todo lo que tu sistema operativo espera ver antes de confiar en un programa desconocido. El artefacto final pesó 45 MB y abrió en

[03:22] 1,2 segundos. Ni el extremo rápido de Nuitka ni el extremo pesado de PyInstaller. Un punto medio porque está resolviendo un problema distinto, distribución, no solo empaquetado. Y acá es donde la comparación que arrancamos, cuál tarda menos, deja de importar. Y si el criterio fuera solo el tiempo de build, PyInstaller gana siempre y no hay video que hacer, pero el tiempo de build es el costo que pagas una vez en tu máquina.

[03:43] El tiempo de arranque y el tamaño son el costo que paga tu usuario, cada vez en la suya. Nuitka no es el lento, es el que decidió que el compilador se quede con los 40 minutos para que el usuario final no se quede con nada. Y si crees que ya sabes cuál ganó, espera a ver las cuatro columnas juntas. Con eso en la mesa, midamos las cuatro variables que de verdad importan, una corrida cada una en la misma máquina. Y aquí va la advertencia que no me voy a saltar.

[04:05] ¿Esto aplica igual a tu proyecto? No necesariamente. Esto es una app corrida una vez en una máquina, no es un estudio con muestra estadística. Si tu proyecto usa librerías nativas distintas, si tu sistema operativo es otro, estos números se mueven. Lo que no se mueve es el patrón. PyInstaller es el más rápido de construir y el más pesado de cargar.

[04:22] Nuitka invierte esa relación por completo y Briefcase queda al medio en casi todo, porque su prioridad no es velocidad ni tamaño, es el instalador. Si este tipo de comparación con builds reales te sirve para decidir en tu propio proyecto, suscribirte ayuda. Así le sigo metiendo tiempo de máquina a este canal. Con la tabla ya no hace falta adivinar. Y si tu proyecto no calza exacto en ninguno de estos tres casos, la pregunta que importa no cambia. ¿Quién paga el costo, tu máquina

[04:45] hoy o el usuario cada vez? Tres casos, tres respuestas. Si necesitas entregarle algo a un cliente pequeño esta tarde y a nadie le importa si el archivo pesa 80 MB, PyInstaller es la herramienta correcta. Un minuto de build contra 40 no es una decisión difícil cuando el volumen es de una sola instalación. Si vas a distribuir tu app a miles de usuarios, o corre en hardware limitado, o necesita arrancar rápido porque la usan todo el día, el cálculo cambia. Ahí los 40 minutos de Nuitka se pagan una

[05:09] sola vez en tu máquina de build. Mientras tanto, los 0,4 segundos de arranque los cobra cada usuario cada vez que abre la app. Y si tu app la va a instalar alguien que espera un instalador de verdad, firma, icono, permisos del sistema operativo, la experiencia nativa de Windows o Mac, ninguna de las otras dos te resuelve eso sola. Ahí es donde entra Briefcase.

[05:28] Ninguna gana en las tres columnas a la vez. Y si alguien te dice que sí, probablemente no corrió los tres builds. Y si tu caso es una mezcla de los tres, cliente grande pero con hardware limitado, por ejemplo, la pregunta sigue siendo la misma. ¿Quién paga el costo hoy y quién lo paga cada vez? Responde eso primero y la herramienta se elige sola. ¿Cuál de las tres es mejor? Ya viste que esa pregunta estaba mal hecha desde el principio. La real es a quién le cobras el costo, a tu máquina de

[05:49] build hoy o al dispositivo de tu usuario cada vez que abre tu app. La próxima vez que alguien jure que ya sabe cuál usar sin haber corrido los tres builds, tú sí tienes con qué responderle. Nos vemos en el próximo build.
