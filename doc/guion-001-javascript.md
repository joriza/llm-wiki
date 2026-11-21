# Guion 001 (versión completa ~9 min) — «El lenguaje que se hizo en 10 días (y domina Internet por estar roto)»

- **Serie:** Cómo funcionan las cosas
- **Fuentes wiki:** [[historia-de-la-tecnologia]], WL-087, cruces [[lenguaje-rust]] (WL-80), WL-46, WL-81
- **Duración objetivo:** 8–10 min (~1.400 palabras)
- **Estado:** expandido desde la versión de 2:20. Los datos verificados (✅) ya tienen fuente primaria; los marcados ⚠️ vienen de WL-087 (divulgación sin citas) y se verifican contra el paper «JavaScript: The First 20 Years» antes de grabar.

## 1. Gancho (0:00–0:45) — ~110 palabras

> El lenguaje que hoy corre en casi el noventa y nueve por ciento de las páginas web del mundo lo escribió un tipo solo, en diez días, para una demo que nadie creyó importante.
>
> Y lo peor: nunca lo terminaron. Nunca lo van a terminar. Y por eso gana.
>
> Este lenguaje tiene absurdos que ningún diseñador pondría hoy: igualdades que comparan el texto vacío con el cero y dicen que son lo mismo. Y sin embargo, cada vez que cargás una página, ese lenguaje está ahí, treinta años después, ejecutándose en tu máquina.
>
> Esto es El Taller Curioso. Hoy: cómo un parche de diez días se volvió el cimiento de Internet — y por qué nadie, ni su propio creador, pudo arreglarlo después.

## 2. 1995: Netscape quería Java (0:45–2:15) — ~200 palabras

> Contexto: 1995. El navegador dominante es Netscape Navigator, y la web está despegando. Pero hay un problema: las páginas son estáticas. Sin formularios que validen, sin botones que hagan nada. La web necesita un lenguaje de scripting.
>
> A Netscape entra justamente ese año Brendan Eich, un ingeniero que venía de Silicon Graphics. El plan era claro: él iba a incorporar **Scheme** al navegador — un lenguaje académico, minimalista, con funciones que se tratan como datos. Elegante.
>
> Pero la dirección tenía otro sueño. Marc Andreessen, cofundador de Netscape, venía gritando una fórmula: «Netscape más Java mata Windows». La idea: si las aplicaciones corren en el navegador, el sistema operativo deja de importar. Y para eso, el navegador tenía que hablar un lenguaje que se viera como Java.
>
> A Eich lo pusieron entre dos mandatos: por afuera, algo parecido a Java para contentar al marketing y a Sun, que negociaba el acuerdo para meter Java dentro de Netscape. Por adentro, él quería su Scheme. Consideraron Perl, Python, Tcl — y las descartaron por distintas razones. La decisión final: escribir algo nuevo, rápido, en casa.
>
> Quedate con esa tensión, porque es la primera lección del video: **el diseño técnico perdió contra la economía desde el día uno**. Y no fue la última vez.

## 3. La demo de 10 días (2:15–3:45) — ~230 palabras

> En mayo de 1995 —esto está confirmado por el propio Eich— el prototipo del motor tomó **diez días**. Diez días de mayo para lo que hoy sostiene casi toda la web.
>
> ¿Qué se puede hacer en diez días? Hacer trampa inteligente. Por afuera, el lenguaje tenía cara de Java: sintaxis con llaves, parecido a C, para que ningún gerente se asustara. Por adentro, era otra cosa: funciones de primera clase sacadas de Scheme — funciones que se pasan como datos, se guardan en variables, se devuelven de otras funciones — y **herencia prototípica** en vez de clases.
>
> Ese doble diseño — cara de Java, motor de Scheme — es la mejor y la peor decisión de la historia del lenguaje. La mejor, porque las funciones como datos son hoy la joya de JavaScript: sin eso no hay callbacks, no hay promesas, no hay el modelo async/await que usás todos los días. La peor, porque esa cara de Java confundió a todo el mundo durante décadas.
>
> Y el nombre, bueno… el nombre fue puro marketing. El prototipo se llamaba Mocha, después LiveScript. Y en diciembre de 1995 Netscape lo renombró **JavaScript** para surfear la moda de Java — sin consultar a James Gosling, el creador de Java. Eich lo repite hasta el cansancio: JavaScript no tiene nada que ver con Java. Son dos lenguajes que se parecen lo que un piano y un pianista.
>
> Demo en pantalla: la sintaxis con llaves que heredó de la cara de Java, y una función que se asigna a una variable — el Scheme que esconde adentro.

## 4. El doble igual roto (3:45–5:45) — ~280 palabras

> Ahora, el crimen. El doble igual.
>
> La historia es de manual. Los primeros usuarios internos de Netscape validaban formularios: comparaban lo que escribía el usuario contra números que llegaban de la base de datos… como texto. Y comparar texto contra número con igualdad estricta fallaba siempre. Les pidieron un favor: que el lenguaje convierta solo, que haga coerción automática.
>
> Eich cedió. Y así nació el doble igual más famoso de la programación: el que decide que el texto vacío es igual a cero.
>
> Demo en vivo (consola):
> — `'' == 0` → `true`. El texto vacío es cero.
> — `null == undefined` → `true`.
> — `'' == '0'` → `false`. Pero el texto vacío NO es igual al texto cero. Y con triple igual, nada de eso es verdad.
>
> La parte importante viene ahora. Eich sabía que era un error. Lo arregló en JavaScript 1.2, unos años después. Pero en 1997 el lenguaje entró al comité ECMA para estandarizarse — Netscape lo regaló al comité neutral para que Microsoft no lo controlara. Y en ese comité, según cuenta la historia, la presión fue: arreglar el doble igual rompía demasiadas páginas que ya dependían del comportamiento roto. Se retrocedió.
>
> Y esa es la jaula: con apenas unos meses de vida, el lenguaje ya tenía más usuarios del lado del error que del lado del arreglo. Cada año que pasaba, el error acumulaba más páginas protegidas.
>
> Así funciona toda la retrocompatibilidad: **no se decide una vez, se decide todos los días — y siempre gana el parque instalado**. El triple igual nació como la salida de emergencia para los que querían comparar de verdad. TypeScript, treinta años después, existe en gran parte para blindarte del doble igual — un lenguaje construido encima, para protegerte de una decisión de 1995.

## 5. La guerra de navegadores (5:45–7:15) — ~230 palabras

> Enterate que JavaScript funcionaba, y Microsoft se movió. En 1996 Internet Explorer 3 salió con VBScript — la respuesta propietaria — y con su propia versión de JavaScript. Pero Microsoft no podía copiar el código (era propiedad de Netscape), así que hizo ingeniería inversa de comportamiento: un equipo probó miles de páginas en ambos navegadores y ajustó su implementación hasta que se comportara igual — incluyendo, se dice, los errores.
>
> Piensen en eso: copiar los bugs a propósito, porque las páginas estaban construidas para los bugs.
>
> Netscape, acorralada, hizo la movida más contraintuitiva: **regaló el lenguaje**. Lo entregó al comité europeo ECMA para que fuera un estándar neutral. El nombre oficial quedó ECMAScript — sí, ese nombre raro de la documentación que todos ignoramos.
>
> ¿Y cómo terminó la guerra? IE venía gratis dentro de Windows; Netscape cobraba por su navegador. No era una pelea parejo. Netscape cayó, y en 1998 AOL la compró. Pero antes, Netscape liberó el código del navegador — y de ese rescate nació Mozilla. El navegador que hoy conocés como Firefox es el descendiente directo del perdedor de la guerra que inventó JavaScript.
>
> Tercer patrón del video: **la tecnología no gana por ser buena, gana por estar en el lugar correcto con la distribución correcta**. IE ganó la guerra y perdió la historia: su clon de JavaScript se estandarizó bajo las mismas reglas que el original, y el estándar neutral que Netscape regaló es el que sobrevivió.

## 6. La redención: JSON, Node y ES6 (7:15–8:30) — ~200 palabras

> Los 2000s fueron la edad oscura: el lenguaje congelado, el comité trabado. Y acá aparece el giro más irónico. Douglas Crockford, probablemente el crítico más feroz de JavaScript, aceptó un contrato grande que solo se podía hacer en JavaScript — y en el proceso descubrió lo que Eich había querido desde el principio: las funciones como datos. Del mismo lenguaje sacó limpio un subconjunto de notación de datos y lo llamó **JSON**. Hoy JSON es el formato estándar de intercambio de datos de toda la industria — nacido de despreciar el lenguaje y quedarse con lo rescatable.
>
> 2005: Ajax y Gmail demuestran que la web puede ser una aplicación. 2009: **Node** lleva JavaScript al servidor — y los back-end clásicos lo miraron con espanto. Y el estándar, después del fracaso de la gran reforma ES4 (la versión ambiciosa que Microsoft y Yahoo tumbaron en 2008), avanzó en trozos: ECMAScript 5 en 2009, y **ES6/2015**, que por fin incorporó clases, módulos y async/await — lo que ES4 quiso ser, realizado sin romper nada.
>
> Mejorar sin romper, en trozos, con décadas de paciencia. Ese es el único camino que la jaula permite.

## 7. Cierre: la jaula y la otra cara de Eich (8:30–9:30) — ~180 palabras

> Resumamos los tres patrones, porque sirven para cualquier tecnología, no solo JavaScript:
>
> Uno: el diseño técnico pierde contra la economía. Scheme perdió contra «parecido a Java».
>
> Dos: los errores se vuelven estándar por acumulación. El doble igual se arregló una vez y el mundo lo impidió — con 40 usuarios se arregla gratis, con 40 millones se arregla nunca.
>
> Tres: ganar no es ser bueno; es estar en el lugar correcto. Worse is better.
>
> Y el epílogo que me gusta contar: la misma persona que hizo JavaScript a los apurones, Brendan Eich, después impulsó en Mozilla un lenguaje con la filosofía exactamente opuesta: **Rust** — lento de diseñar, cuidadoso, con seguridad de memoria, sin permitir los atajos que él mismo tuvo que tomar en 1995. La misma cabeza, dos filosofías opuestas: worse-is-better contra safety-first.
>
> Eso es otra historia, y la vamos a contar acá, en El Taller Curioso. Suscribite si querés acompañarla.

## Capítulos (para la descripción)

- 0:00 El lenguaje de 10 días
- 0:45 Netscape quería Java
- 2:15 La demo de mayo de 1995
- 3:45 El doble igual roto (demo en consola)
- 5:45 La guerra de navegadores
- 7:15 La redención: JSON, Node, ES6
- 8:30 Tres patrones + Rust

## Momentos destacados (para Shorts)

1. Gancho completo (0:00–0:45).
2. Demo `'' == 0` (4:20 aprox.).
3. «Copiar los bugs a propósito» (6:00 aprox.).
4. La dimisión de Eich (si se agrega al cierre o a la descripción): 10-11 días como CEO en 2014 — verificado.

## Datos verificados / por verificar

- ✅ 10 días de mayo de 1995 — brendaneich.com (2011) + paper Wirfs-Brock & Eich.
- ✅ 98,9 % webs con JS — W3Techs (nov. 2026).
- ✅ Dimisión Eich: 24/3 → 3/4/2014 (10-11 días) — Mozilla Press + The Verge.
- ⚠️ Antes de grabar, contrastar con el paper canónico (Wirfs-Brock & Eich, "JavaScript: The First 20 Years", HOPL 2020): detalles del nombre Mocha/LiveScript/JavaScript (dic. 1995), clonación por comportamiento de Microsoft (nombre del ingeniero ilegible en WL-087 por ASR), rol de Yahoo en la caída de ES4, compra por AOL (4.200 MUSD, 1998).
- NO usar: anécdota de la llamada de Compaq (contexto ilegible en la fuente).

## Nota de producción

- Narración de referencia ya generada con voz sintética (Elena, es-AR) en `canal-test/guion001/` para la versión corta; regenerar por sección con la voz definitiva (clon F5-TTS o grabación propia desde celular) cuando esté disponible.
- Demos de consola: sección 4 obligatoria en pantalla; secciones 3 y 6 con B-roll de editor/terminal.
