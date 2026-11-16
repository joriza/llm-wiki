# Hice la misma app en Python, Electron y Tauri: la más liviana no es la que todos dicen

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=vvCCnOivQhE)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-10-11
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 04:17

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Estas tres apps son iguales, mismos productos, mismo carrito, mismo botón de cobrar. La primera está hecha en Python, las otras dos en Electron y en Tauri, que es como se hacen hoy apps como Visual Studio Code, Discord o Slack. Por fuera no vas a notar ninguna diferencia, pero por dentro una ocupa 24 veces más espacio en tu disco que otra. Y la que todo internet dice que es la más liviana, en mi prueba fue la que más memoria RAM usó. Así que hice lo de siempre, dejé de opinar y lo medí. Ya,

[00:25] primero las reglas. La app es un punto de venta para un almacén, un catálogo de 12 productos, un buscador, un carrito que calcula el IVA, un botón para cobrar y el resumen de ventas del día. En las tres hice exactamente las mismas dos ventas con los mismos clicks. Y las tres terminaron en 31.309 pesos, al peso. Ahora el código. La versión en Python usa Tkinter, que viene incluido con Python. Son 153 líneas en un solo archivo. Electron y Tauri comparten la misma interfaz hecha en

[00:51] HTML y JavaScript, unas 130 líneas. Lo único que cambia es el programa que abre esa interfaz en una ventana. En Electron son 14 líneas de JavaScript. En Tauri, siete líneas de Rust. Esa es la gracia de estas dos herramientas. Si ya sabes hacer páginas web, ya sabes hacer apps de escritorio. La pregunta es, ¿cuánto te cuesta eso? Primera ronda, ¿cuánto pesa? Es lo primero que nota tu cliente, porque es lo que tiene que descargar.

[01:14] Python, empaquetado en un solo ejecutable con PyInstaller, 12,3 megas. Electron, 125 megas. Y Tauri, 1,4 megas. ¿Cómo puede Tauri pesar casi nada si muestra exactamente la misma página web? Porque no trae su propio navegador. Usa el que ya viene en el sistema operativo.

[01:29] En Windows es WebView2, el motor de Edge. En Linux, que es donde hice esta prueba, es WebKit. Electron, en cambio, mete un Chrome completo dentro de cada app, por eso ya instalada la versión de Electron ocupa 296 megas, 24 veces lo que ocupa la de Python. Y aquí hay una trampa que casi nadie cuenta. Si empaqueto Tauri en el formato que trae todo incluido, un AppImage pesa 80 megas. Lo liviano de Tauri no es magia, el navegador lo instaló otro. Segunda ronda, la la RAM.

[01:56] El tamaño lo pagas una vez, cuando descargas. La RAM la pagas todo el tiempo que la app está abierta. Y en un computador de oficina con 8 GB, junto al navegador y al Excel, eso importa. Escribí un script en Python que abre cada app cinco veces, espera a que quede quieta y suma la memoria de todos sus procesos. Ojo con esto, la app de Python es un solo proceso, la de Electron son seis, porque cada app de Electron es en el fondo un navegador completo, un proceso principal, otro para la página y

[02:21] varios más de apoyo. Los resultados: Python, 28 MB, Electron, 221 MB, casi ocho veces más, y Tauri, 310 MB. Sí, en mi prueba Tauri fue el que más RAM usó, pero seamos justos, lo medí en Linux, en una máquina sin tarjeta de vídeo, donde el navegador tiene que dibujar todo por software. Cuando le cambié el modo de dibujo, bajó a unos 190 MB, y en Windows usa otro motor, así que el número cambia. Lo que no cambia es el fondo, Tauri pesa poco en el disco, pero en memoria sigue siendo un navegador. La

[02:53] que ganó en RAM, y por lejos, fue la más ahorradora de las tres. Tercera ronda, ¿cuánto tarda en abrir? Mi script mide desde que lanzo la app hasta que la cabecera azul aparece dibujada en la pantalla. Python, en un solo archivo, 0,63 segundos. Electron, 0,43. Tauri, 1,25. Otra vez castigado por dibujar sin tarjeta de vídeo. Electron le ganó a Python. Y aquí hay una lección para los que vendemos apps hechas en Python. El modo de un solo ejecutable de PyInstaller descomprime todo en una

[03:20] carpeta temporal cada vez que abres la app. Si la entregas como carpeta, Python abre en 0, 37 segundos. El más rápido de los tres, mismo código, solo cambia cómo lo empaquetas. Entonces, ¿cuál usar? Python con Tkinter para apps internas, puntos de venta y herramientas de oficina que corren en computadores modestos. Es la que menos memoria usa, por lejos. Y si ya sabes Python, no tienes que aprender nada más. Electron, si tu equipo ya trabaja en web y la app tiene que verse idéntica en todos lados.

[03:45] Lo pagas en disco y en memoria. Tauri, si lo que más te importa es un instalador mínimo y tu cliente usa un Windows moderno. Pero no te creas que es liviano en todo y vas a tener que aprender algo de Rust. El código de las tres apps y el script que las mide están en la descripción. Corre la prueba en tu computador y déjame tus números en los comentarios. Sobre todo si usas Windows, quiero ver si Tauri se defiende mejor ahí. Y si te quedó la duda de qué librería de Python usar para la

[04:09] interfaz, hice exactamente esta prueba con Tkinter, Flet y Pyku con un punto de venta real que le entregué a un cliente. Solo uno sobrevivió, te lo dejo aquí en pantalla.
