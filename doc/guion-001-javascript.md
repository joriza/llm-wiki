# Guion 001 — «El lenguaje que se hizo en 10 días (y domina Internet por estar roto)»

- **Serie:** Cómo funcionan las cosas
- **Fuentes wiki:** [[historia-de-la-tecnologia]], WL-087 (resumen de informatica-teoria), cruces [[lenguaje-rust]] (WL-80), WL-46, WL-81
- **Duración objetivo:** 10–12 min
- **Riesgos de verificación (antes de grabar):**
  1. «10 días de mayo de 1995» — anécdota canónica pero confirmar contra charlas de Eich/Crockford (la wiki marca la fuente como divulgación sin citas; el nombre del ingeniero de Microsoft que clonó JS quedó ilegible por ASR).
  2. «98,9 % de webs usan JS (W3Techs)» — citar la fuente en pantalla.
  3. La anécdota de la llamada de Compaq NO se usa (contexto ilegible en la fuente).

## 1. Gancho (0:00–0:30)

> «El lenguaje que hoy corre en el 98 % de las páginas web del mundo lo escribió un tipo solo, en diez días, para una demo que nadie creyó importante. Y lo peor: nunca lo terminaron. Nunca lo van a terminar. Y por eso gana.»

Plan B de gancho: mostrar `'' == 0` en una consola (true) y preguntar «¿por qué el lenguaje más usado del mundo no sabe comparar dos cosas?».

## 2. La historia / el mecanismo (0:30–4:00)

- **1995, Netscape**: Brendan Eich entra contratado para meter Scheme en el navegador. La dirección quiere «algo parecido a Java» porque sueñan con «Netscape + Java mata Windows».
- **La demo de 10 días**: cara de Java por fuera (marketing), funciones de Scheme y herencia prototípica por dentro (lo que Eich quería).
- **El nombre**: Mocha chocó con una marca; «JavaScript» se pidió prestado por moda, sin hablar con James Gosling. Eich lo repite hasta hoy: no tiene nada que ver con Java.
- **El `==` roto por un favor**: comparar números contra datos que llegaban como texto → coerción automática → igualdades absurdas. Eich lo arregló en JS 1.2; en ECMA 1997 Microsoft lo hizo retroceder: arreglarlo rompía demasiadas páginas. Roto hasta hoy.

## 3. Evidencia / demo (4:00–7:00)

En consola, en vivo (la demo es gratis y de paso muestra que el canal escribe código de verdad):

- `'' == 0` → true; `null == undefined` → true; `'' == '0'` → false. La tríada que duele.
- `===` como la salida de emergencia que Eich quiso siempre.
- Un contador de popularidad: «según W3Techs, ~98 % de las webs usan JavaScript» (mostrar fuente en pantalla).

## 4. Errores comunes / mitos (7:00–9:30)

- **Mito 1: «JavaScript es Java para la web»** — no; parecen hermanos por decisión de marketing.
- **Mito 2: «JS triunfó por ser bueno»** — peor es better: llegó primero, se estandarizó en ECMA y ya nadie pudo cambiarlo. La redención vino por los enemigos: Crockford (su mayor despreciador) descubre las funciones-como-datos y saca JSON (2001); Node (2009) lo saca del navegador; ES6/2015 realiza por fin, en trozos, lo que la derrotada ES4 quiso ser.
- **Mito 3 (la lección de ingeniería): «escuchá siempre al usuario»** — el `==` nació de complacer a usuarios internos. A veces el usuario no sabe qué está pidiendo.
- **La ironía final**: Eich dimite de Mozilla 10 días después de asumir como CEO (2014) — la misma cifra con la que nació su lenguaje. (Cuidado con el tono: hecho público y documentado, tratarlo con sobriedad.)

## 5. Cierre (9:30–11:00)

Síntesis: «La retrocompatibilidad es una jaula: se decide en un mes y se paga durante décadas.» Puente multi-tema: la misma persona, Brendan Eich, lanzó Rust en Mozilla — la filosofía exactamente opuesta (safety-first vs worse-is-better). Ese es otro video: [[lenguaje-rust]], serie «Cómo funcionan las cosas» / informática.

> Frase-síntesis: «Lo que viaja en el estándar ya no se puede cambiar sin romper el mundo.»

## Capítulos (borrador)

- 0:00 El lenguaje de 10 días
- 0:30 Netscape quería Java
- 4:00 El doble igual roto (demo)
- 7:00 Peor es better
- 9:30 La jaula de la retrocompatibilidad

## Momentos destacados (para Shorts)

1. [gancho] `'' == 0` → true: «el lenguaje más usado no sabe comparar».
2. [sección 2] «JavaScript se llama así por marketing, sin consultar a Java».
3. [sección 4] La dimisión de Eich: 10 días como CEO, 10 días de lenguaje.

## Descripción (borrador)

La historia de JavaScript: 10 días, una demo que se volvió producto, un `==` roto por un favor y la estandarización que lo congeló para siempre. Basado en el compendio de la wiki (WL-087) con verificación contra fuentes canónicas: charlas de Crockford, lista ECMA, W3Techs. Próximo video: la otra cara de Brendan Eich — Rust.

**Nota de producción:** la wiki advierte que WL-087 es una fuente de reacción (divulgación sin citas). Los tres riesgos de verificación de arriba son obligatorios antes de grabar; de no confirmarse un dato, bajarlo del guion o decirlo con la reserva («según se cuenta…»).
