# WL-155 · Los 7 lenguajes de programación MÁS RAROS

- **Fuente original**: `raw/informatica-teoria/2026-10-25-los-7-lenguajes-de-programacion-mas-raros.md`
- **Video**: [ZlfY3tF3qBY](https://www.youtube.com/watch?v=ZlfY3tF3qBY)
- **Canal**: LinuxChad · Publicado 2026-10-25 · Duración 16:00
- **Dominio previsto** (consolidación diferida): informatica-teoria (historia/cultura de la programación — lenguajes esotéricos)

## Qué trata

Recorrido divulgativo por siete lenguajes de programación esotéricos, con sus historias de origen y anécdotas verificables, ordenados de "raro pero legible" a "invisible".

## Los siete lenguajes

1. **Chef** (David Morgan-Mar): los programas son recetas de cocina — ingredientes como variables, cuencos como pilas, líquidos se imprimen como letras y secos como números, los bucles se escriben con verbos ("remueve hasta que esté removido") y las raciones indican cuánto imprimir. El Hola Mundo oficial es un suflé (cantidades = ASCII). Existe un programa que es receta comestible de verdad: el Hello World Cake de Mike Worth (2013), horneado y comido ("se puede depurar con una cuchara").
2. **Rockstar** (Dylan Beatty, 2018, desde un tuit de Paul Stovel): nació como broma contra los anuncios de empleo que pedían "rockstar developer"; los programas son letras de baladas de los 80 y los números se codifican por longitud de palabras ("Fire is ice" → Fire = 3; una frase de tono triste esconde π). Funcional, con ejecutables desde 2024.
3. **LOLCODE** (2007) y **ArnoldC**: lenguajes meme (gatos con HAI/KTHXBYE — implementado por un ingeniero de Microsoft en un vuelo a España; frases de Schwarzenegger, con "I'll be back" como return). Antecedente: **INTERCAL** (Princeton, 1972, de madrugada tras los exámenes).
4. **Shakespeare** (Karl Hasselström y Jon Åslund, KTH Estocolmo, 2001): cada personaje real de Shakespeare es una variable, actos/escenas son saltos, los números se expresan como insultos/piropos (sustantivo bonito = +1, feo = −1, cada adjetivo multiplica por 2 — "cobarde mentiroso estúpido…" = −64). Anécdota: David Touretzky (galería de versiones de DeCSS) les propuso escribir DeCSS en Shakespeare para probar que una obra de teatro merece libertad de expresión — nunca lo hicieron ("muy larga y muy aburrida").
5. **Lingua::Romana::Perligata** (Damian Conway, Monash, 2000): Perl en latín — el caso gramatical sustituye al orden (acusativo = dato leído, dativo = destino, plural = lista; números romanos, cero = nullum, stderr = "el oráculo"). Primer programa: criba de Eratóstenes ("los romanos tomaron la cultura griega, así que empezamos con un algoritmo griego").
6. **Wenyan** (Lingdong Huang, Carnegie Mellon, 2019): programación en chino clásico, hecho "en vez de estudiar" en semana de exámenes; 20.000+ estrellas en GitHub y un récord Guinness.
7. **Piet** (Morgan-Mar, por Mondrian): el código es una imagen — la instrucción no es el color sino el **cambio** de color entre manchas; cada mancha vale su área. El programa de π de Richard Mit.cpu es literalmente un círculo que mide su propia área (más decimales = dibujarlo más grande). Un visitante de galería ejecutó por accidente un cuadro abstracto (bucle infinito legítimo): "el primer programa pintado sin querer".
8. (Bonus) **Whitespace** (Edwin Brady y Chris Morris, 1 de abril de 2003): solo entiende espacio, tabulador y salto de línea; números en binario con espacios/tabs; cualquier texto visible es comentario (el Hola Mundo solo muestra "say hello"). 400.000 visitas de Slashdot el día del lanzamiento; Brady (hoy director de Idris en St. Andrews) insiste en que la fecha fue casualidad. "El lenguaje ideal para espías".
9. **Folders** (Daniel Temkin, 2015): el programa es una estructura de **carpetas vacías anidadas** — sin nombres, sin archivos; cada instrucción y cada bit se codifica por la jerarquía (Hola Mundo = 209 carpetas). Broma sobre Windows ("las carpetas pesan 0 bytes → almacenamiento infinito"): en NTFS cada carpeta tiene entrada en la MFT y en ext4 ocupa 4 KB; además git ignora carpetas vacías (un programa Folders desaparece al subirlo a GitHub salvo trampas con .gitkeep).

## Marco conceptual

- Por qué funcionan: **Turing completitud** — basta con almacenar datos, operarlos, condicionales y bucles; "todo lo demás son fuegos artificiales". Epigrama de Alan Perlis: "cuidado con la ciénaga de Turing, donde todo es posible, pero nada interesante es fácil".
- Los propios autores se ríen: Brady duda de la utilidad práctica de Whitespace; Beatty: programar en Rockstar "es como construir el Tower Bridge con cerillas… tan útil como una llave inglesa de cartón".
- Mención final: **Malbolge** (por el círculo del infierno de Dante), diseñado para ser casi imposible — su primer Hola Mundo requirió un algoritmo de búsqueda en Lisp.

## Notas de triage

- Divulgación de cultura/historia de la programación, con anécdotas citadas (blogs de los autores, Slashdot, galerías); apto como fuente ligera de introducción al fenómeno esotérico. El propio video es el primer contacto del repositorio con el tema (sin cruces aún).
- ASR normalizado solo aquí; nombres con errores de reconocimiento en el raw ("Paul Stovel" = Paul Stovell, "Richard Mital" = el autor del programa π en Piet, "Bity" = Beatty, "ex4" = ext4).
