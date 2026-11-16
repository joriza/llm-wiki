# ¡Así saqué al Hacker que entro a mi Sistema!

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ATycm0kKRh8)
- **Canal**: hdeleon.net
- **Publicado**: 2026-09-12
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 01:27

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Entonces aquí la brecha de seguridad fue que pudo obtener un usuario y una contraseña. Esto pudo haber sido porque robó el usuario y la contraseña. ¿Cómo? De muchas formas. De repente hay personas que bajan muchas cosas de internet, hay personas que que simplemente su contraseña es la misma en todas partes. Entonces esta persona tenía acceso al usuario y la contraseña.

[00:17] Afortunadamente nosotros ya habíamos tenido un mecanismo el cual sirve para votarlo en el instante. Lo más cuando estás utilizando un sistema que tiene front end y back end o cliente servidor es que utilices un JSON web token para la parte de de autorización. Tenemos un header un header que dice cómo va a estar conformado el JSON web token, qué tipo va a ser, qué algoritmo se va a utilizar. Tenemos un payload que esto tú lo puedes leer, está en base 64, solamente la información que necesita el

[00:42] front end. Y tenemos otra tercer parte que es la firma. Si alguien modifica esto de aquí que se puede leer, la firma le detectaría que se ha sido modificado el cuerpo, el payload. Esto tiene un gran problema. Al momento que tú tienes un JSON web token y este es raptado, eh una persona puede seguir utilizándolo hasta que caduque.

[01:02] pudimos hacer un mecanismo en el cual esto pudiera matarse? Hay varias formas y la que más se te ocurre a ti, pues bueno, guardarlo en la base de datos, ¿no? Lo que yo te sugiero o lo que nos ha servido es no guardar el JSON web token completo, sino guardar un identificador único. Este identificador que está aquí es un identificador identificador único. Este mecanismo lo que lo que fuimos a hacer es ir a la base de datos y matar el token, matar la sesión y simplemente ya la siguiente

[01:25] solicitud que hiciera a cualquier end point ya no podía hacerla.
