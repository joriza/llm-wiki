# 5 Librerías de Python que deberían ser ILEGALES

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=cM4HJXWDNeU)
- **Canal**: CD
- **Publicado**: 2026-11-01
- **Recopilado**: 2026-11-23
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 06:57

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Un solo comando y en lo que tardas en parpadear tienes Python instalado, un entorno virtual creado y todas las dependencias de tu proyecto listas. [música] Sin pip, sin venv, sin pelearte con versiones. Y eso ni siquiera es lo más loco de esta lista. Hay una librería que mira cómo haces clic en una web y escribe el código por ti.

[00:22] Otra te deja lanzar consultas SQL contra un archivo CSV como si fuera una base de datos, sin servidor, sin instalar nada más. Al final de este vídeo vas a tener cinco herramientas gratuitas que te pueden ahorrar horas esta misma semana.

[00:38] Y vas a descubrir algo que casi nadie nota cuando las instala, que cuatro de estas cinco librerías de Python no son Python. Y eso dice mucho de hacia dónde va todo esto. [música] ¿Qué hace que una librería parezca ilegal? Que convierte un trabajo aburrido de una hora en una línea de código. Las [resoplido] cinco de hoy cumplen tres reglas. Son de código abierto, se instalan con un comando y las puedes usar hoy mismo sin ser un experto. Y la primera viene de alguien que muchos ya conocéis sin saberlo,

[01:09] Typer. La creó Sebastián Ramírez, el colombiano detrás de Fast API. Y de hecho su propia documentación la llama el hermano pequeño de Fast API. La idea es esta, tienes un script de Python con una función normal, le pones tipos a los parámetros como ya harías de todas formas y Typer convierte esa función en una aplicación de terminal de verdad, con argumentos, con mensajes de ayuda generados solos y con autocompletado para Bash, ZSH, Fish y PowerShell. Todo lo que con Arpars eran líneas y líneas

[01:43] de configuración se queda en una función y una llamada a Typer.run. La pega, si tu herramienta crece mucho tendrás que aprender cómo organiza los comandos, pero para scripts que usas a diario es casi trampa. Y si Typer te ahorra escribir la interfaz, la siguiente te ahorra algo bastante más caro, montar una base de datos, DocDB. Imagina [resoplido] que tienes un CSV con un millón de ventas. Lo normal sería cargarlo, limpiarlo, quizás montar un Postgres para poder consultarlo con

[02:13] calma. Con DocDB escribes esto, DocDB.SQL, select from ventas.tsv y ya está. SQL directamente sobre el archivo. Funciona igual con parquet. ¿Tienes un dataframe de Pandas en una variable? Puedes consultarlo por su nombre, [música] como si fuera una tabla. La base de datos vive dentro de tu propio programa de Python, en memoria. [música] No hay servidor que configurar.

[02:42] El problema es que cuando pruebas esto, empiezas a mirar a Pandas con otros ojos. Y ahí es donde entra la tercera, Polars. Hace lo mismo que Pandas, tablas de datos, filtros, agrupaciones. Pero hay una diferencia que lo cambia todo.

[02:59] Pandas, en la mayoría de operaciones, trabaja con un solo núcleo de tu procesador. Polars los usa todos a la vez. Y además tiene un modo lazy. Tú le describes lo que quieres hacer y antes de ejecutar nada, un optimizador reorganiza la consulta para hacer el menor trabajo posible. Incluso puede procesar archivos más grandes que tu memoria RAM, por partes. Es como la diferencia entre ir al supermercado cinco veces, una por cada cosa que se te olvida, o hacer la lista primero y que

[03:28] alguien elija la ruta más corta. La pega, la sintaxis no es la de Pandas. Hay que reaprender un poco. Y aquí viene el primer detalle raro. Polars no está escrito en Python. Está escrito en Rust. Pero aguanta esa idea, porque con la cuarta librería empieza a repetirse.

[03:46] Playwright, de Microsoft. [música] Sirve para automatizar un navegador, abrir páginas, rellenar formularios, hacer clic, comprobar que todo funciona. Hasta aquí, normal. Lo que parece ilegal es esto. [música] Escribes Playwright codegen en la terminal. Se abren dos ventanas.

[04:04] [música] En una navegas como siempre, en la otra Playwright va escribiendo el código de todo lo que haces, cada [música] clic, cada campo que rellenas. Incluso puedes señalar un texto en pantalla y pedirle que compruebe que aparece. Cuando terminas, copias el código y ya tienes un test automático que no has escrito tú. Y el detalle raro otra vez, la versión de Python no hace el trabajo por sí sola. Por dentro habla con un motor escrito en Node.js. Dos de cuatro. Python por fuera, otra cosa por

[04:35] dentro. Y la quinta es la que convierte esto en un patrón {punto} v. Es lo que viste al principio del vídeo. Un solo programa que, según sus creadores, sustituye a pip, pip tools, pip x, poetry, pyenv, twine y virtualenv y que es, también según ellos, entre 10 y 100 veces más rápido que pip. Puedes poner las dependencias dentro del propio script, arriba del todo, y ejecutarlo con uv run. Uv crea un entorno aislado, instala lo que haga falta y lo lanza.

[05:08] ¿Que el proyecto necesita otra versión de Python? uv python install. Y listo. ¿En qué está escrito uv? En rust. Ahora junta las piezas. Polars, rust. DuckDB, C++. Playwright, un motor de Node.js {punto} v. Rust. [música] De las cinco librerías de este vídeo, la única que es Python puro de verdad es typer. [música] Y hay algo más. La empresa que hace uv, Astral, también hace ruff y tai, dos de las herramientas más rápidas del ecosistema.

[05:40] Este año, Open AI anunció que va a comprarla para su equipo de codex. La herramienta con la que vas a instalar Python va a pasar a ser de una empresa de inteligencia artificial. ¿Significa esto que Python se está quedando atrás?

[05:53] Al revés, Python se ha convertido en el idioma con el que das órdenes. Lo que ejecuta esas órdenes, lo pesado y lo rápido, cada vez se escribe en otros lenguajes. Tú escribes una línea en Python y debajo trabaja código en Rust, en C++, o en Node que nunca vas a ver. Y eso es una buena noticia para ti. No necesitas aprender Rust para aprovecharlo. Lo que sí necesitas es saber que existe, porque quien entiende qué hay debajo es quien elige bien las herramientas.

[06:23] [música] Y cuando alguien en tu equipo siga peleándose con pip y con entornos rotos, tú vas a ser el que diga, "Prueba esto." [música] Si solo vas a instalar una de las cinco esta semana, que sea V. Es la que más tiempo te devuelve. Y fíjate en el patrón, porque se repite en todo lo que está pasando en programación ahora mismo. Las herramientas que más rápido crecen no compiten con Python. Se esconden debajo de él. Si alguna de estas librerías te ha servido, suscríbete. Y si no te ha servido

[06:52] ninguna, suscríbete igual. Así al menos uno de los dos sale ganando.
