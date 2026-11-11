# Historia de los lenguajes de programación

- **Tipo**: página de concepto.
- **Dominio**: `historia-informatica/`.
- **Actualizado**: 2026-11-11 (consolidación del lote historia-informatica).
- **Fuentes**: 2 resúmenes ([[resumen-todos-los-lenguajes-de-programacion-explicados-en-20-minutos-segunda-parte-cognix]] — recorrido por ~12 lenguajes; [[resumen-fortran-marco-a-una-generacion-linuxchad]] — FORTRAN en detalle); el ensamblador del Apolo cruza con [[resumen-el-codigo-del-apolo-11-es-open-source-neurika]].

## El arco: del número al lenguaje humano

**Assembly (1947, Kathleen Booth, Birkbeck College)**: mnemónicos (`add`, `move`) que un Assembler traduce a binario — control total, pero cada procesador tiene su propio Assembly (el del Apolo, por ejemplo; Booth murió en 2022 a los 100 años). **FORTRAN (1957, [[john-backus]], IBM)**: el primer lenguaje de alto nivel de uso generalizado, para científicos; su compilador era más eficiente que el código a mano (Mariner 1: un punto por coma — Fortran ignora espacios — costó 50 millones; sigue vivo en supercomputación, Fortran 90/2003/2018). **COBOL (1959)**: lenguaje común de negocio nacido en el Pentágono, con **Grace Hopper** (Flow-Matic) y decimales exactos; la lápida que Howard Bromberg le hizo grabar acaba en un museo — y COBOL sigue en banca y gobierno. **BASIC (1964, Kemeny y Kurtz, Dartmouth)**: la programación para cualquiera; primera experiencia de una generación y primer producto vendido por Bill Gates. **Pascal (1970, Niklaus Wirth)**: enseñar a programar *bien* — programación estructurada, anti-GOTO.

## Especialización y eras

**SQL (años 70, Chamberlin y Boyce, IBM)**: declarativo — decir *qué*, no *cómo*; 50 años después, todos los sistemas importantes corren sobre él. **Perl (1987, Larry Wall, lingüista)**: flexible y caótico, hecho para texto desordenado — la «cinta aislante del internet» (Craigslist, Amazon, IMDb, Booking), caída ante Python por su «write once, read never». **Lua (1993, PUC Rio)**: diseñado para **incrustarse** (WoW, Angry Birds, Roblox/Luau); curiosidad del nombre: *Lua* = Luna, en oposición a su inspirador SOL. **Ruby (1995, Yukihiro Matsumoto)**: la felicidad del programador como objetivo; **Ruby on Rails (2004)** lo convierte en lenguaje del boom de startups (Twitter, Airbnb, GitHub, Shopify). **Swift (2014, Chris Lattner, Apple)**: Objective-C sin la carga de C — optionals, convivencia con el legado, open source en 2015. **Kotlin (2011/2017, JetBrains)**: «Java sin el dolor», respaldado por Google para Android; mismo truco de Swift (interoperar con lo viejo) y guiño de nombre (isla, como Java).

## Patrones transversales

- **El compilador como apuesta**: el escepticismo inicial («nunca será tan rápido como a mano») se repitió con FORTRAN y se desmintió — la fuente Cognix lo compara con lo que la IA genera hoy.
- **La interoperabilidad decide la adopción**: Swift/ObjC y Kotlin/Java coexisten; nadie quema décadas de trabajo.
- **La longevidad es selectiva**: FORTRAN, COBOL y SQL siguen 50-70 años después, cada uno dueño de su nicho (cálculo numérico, banca, datos).

## Véase también

- [[john-backus]] — biografía del creador de FORTRAN.
- [[margaret-hamilton]] — el Apolo y su código en ensamblador.
- [[memoria-dos-xms-ems]] — el contexto de hardware de la era Assembly.
