# Resumen: Cómo un lenguaje creado en 10 días ATRAPÓ a toda la humanidad | Reacción

- **Fuente original**: `raw/wl/tramo-7/2026-11-02-como-un-lenguaje-creado-en-10-dias-atrapo-a-toda-la-humanidad-reaccion.md` (WL-87, tramo 7)
- **URL**: https://www.youtube.com/watch?v=Ckac17_43gM
- **Canal**: Dos Dager (reacción en vivo de dos conductores argentinos)
- **Publicado**: 2026-11-02 · **Duración**: 32:07 · **Idioma**: es (subtítulos automáticos, transcripción literal)
- Nota de formato: es un video de REACCIÓN — los conductores ven y comentan un video-essay del canal «Fat Dev» sobre la historia de JavaScript. La sustancia histórica es del video base; el valor agregado propio de la reacción son las lecciones de ingeniería de software que los conductores extraen en voz alta.

## La historia que cuenta el video base (Fat Dev)

- **1994-95, Netscape**: Brendan Eich entra para hacer Scheme en el navegador; los jefes quieren algo parecido a Java («Netscape + Java mata Windows», grita Marc Andreessen). Descartados Perl/Python/Tcl, el encargo real es demostrar que Netscape puede hacer un lenguaje antes de que Sun decida que con Java basta. En **10 días de mayo de 1995** Eich construye la demo: cara de Java por fuera (requisito de marketing), funciones de Scheme y herencia prototípica por dentro. El nombre en clave Mocha chocó con una marca; el nombre JavaScript se pidió prestado por moda (4/12/1995, respaldo de 28 empresas) — sin consultar a James Gosling; Eich repite que no tiene nada que ver con Java.
- **El doble igual**: Eich lo hizo estricto, pero usuarios internos de Netscape (comparar números contra datos de BD que llegan como texto) pidieron coerción automática; el «favor» a los primeros usuarios produjo `==` con sus igualdades absurdas («texto vacío == 0»). Eich lo arregló en JS 1.2, pero en el comité ECMA (1997) el representante de Microsoft lo convenció de retroceder: arreglarlo rompía demasiadas páginas. Roto hasta hoy.
- **Guerra de navegadores**: Microsoft responde con VBScript y clona JavaScript sin el código (un ingeniero abre miles de webs en ambos navegadores y ajusta hasta copiar incluso los fallos). Netscape regala el lenguaje: lo estandariza en ECMA (comité europeo neutral) → **ECMAScript** (1997), nombre que a un miembro de Microsoft le sonó a otra cosa. IE gratis con Windows hunde a Netscape: AOL la compra por 4.200 MUSD (1998) anunciando que seguiría usando Internet Explorer. Del código liberado nace Mozilla como «bote salvavidas» sin empresa a quien atacar (Tom Paquin, luego Mitchell Baker).
- **La redención por el enemigo íntimo**: Douglas Crockford, su mayor despreciador, termina programando en JS un contrato enorme de Cartoon Networks y descubre lo que Eich había querido desde el principio: funciones que se pasan como datos. De la notación de datos de JS saca **JSON** (2001), se compra json.org y lo declara estándar él solo. **Ajax** (2005, Gmail) le da a Eich la segunda oportunidad de evolucionar el lenguaje; dirige el grupo del estándar y empuja **ECMAScript 4** (versión grande «de lenguajes serios»).
- **El fracaso de ES4**: en el comité, Yahoo (donde trabajaba Crockford) y Microsoft se alían contra la 4ª edición («es prácticamente otro lenguaje, no una mejora»). Piezas internas fallan, Adobe se retira, y el 13/8/2008 el propio Eich firma la derrota. Sale en cambio ECMAScript 5 (2009, mejora pequeña) y ese año **Node** saca a JS del navegador — con espanto de los back-end clásicos. Crockford publica *JavaScript: The Good Parts*.
- **Cierre de Eich**: en Mozilla llega a CTO y consejero delegado (2014); una donación política de 2008 sale a la luz, presión de empleados y boicot de OkCupid, y **dimite 10 días después** del nombramiento — simetría irónica con los 10 días del lenguaje («nuestra misión es más grande que… no puedo ser un líder eficaz»). Después funda **Brave** (2015, con Brian Bondy). ECMAScript 6/2015 realiza por fin, en trozos y sin romper nada, lo que ES4 quiso ser. Tesis final: JavaScript domina internet **por** estar roto — «worse is better»: llegó primero y ya nadie (ni él) pudo cambiarlo.

## Lecciones de ingeniería extraídas por la reacción (valor propio de la fuente)

- **El requerimiento siempre cambia y el negocio manda**: Scheme → «has que hacer Java» en 10 días.
- **La trampa del MVP/demo**: si al usuario le gusta mucho la demo, lo peor que puede pasar es que te digan «publícalo, ya está» — la demo de 10 días se volvió el producto 1.0 congelado.
- **Retrocompatibilidad temprana**: con apenas 40 usuarios Eich decidió no romper nada — y esa decisión escala 30 años; lección: fijar desde el día 1 cuándo se rompe y se versiona («había que esperar décadas a ES6 para async/await»).
- **«Nunca escuches al usuario» en diseño de sistemas**: la coerción de `==` nació de complacer a usuarios internos — el usuario no siempre sabe qué está pidiendo.
- Digresión moneda (analogía de los conductores): «el peor dinero siempre vence al mejor» (Gresham) como marco del «peor tecnología vence».

## Notas críticas / ASR a corregir

- ASR sistemático: «Edge» en toda la transcripción = **Eich** (Brendan Eich); «Klaus Wirth» = **Niklaus Wirth**; «V3 Techs» = **W3Techs** (fuente del dato 98,9 % de webs con JS); «Sean Casberg»/«Katzenberg» = el ingeniero de Microsoft que clonó JS (nombre a verificar contra el video base); «Croford/Crawford» = **Douglas Crockford**; «mas script» = ECMAScript; «Fat Dev» = canal del video base (verificar grafía).
- Dato «98,9 % de las webs usan JavaScript (W3Techs)» verosímil pero sin fuente primaria en pantalla.
- Formato reacción: el audio intercala risas, superchats leídos en vivo («Soplapingo», digresiones VB6/VBA de los conductores) y un patrocinio de Proton VPN (excluido de esta síntesis); la crono-historia es fiel al relato canónico pero es divulgación sin citas.
- La anécdota de la llamada de Compaq al comercial de Netscape queda sin contexto por el corte del ASR — no citar como hecho.

## Cruces

- **Dominio destino previsto: `informatica-teoria/`** (clúster historia-computación: WL-64, WL-69, WL-79, WL-80, WL-81 — historia del lenguaje aquí refuerza el patrón «la institución/economía decide la técnica», cf. [[tecnologia-educativa-promesa-vs-institucion]]).
- **[[lenguaje-rust]] / WL-80**: Brendan Eich aparece en las DOS historias — es quien en 2009 le dijo a Graydon Hoare «team of 3-5, full time, go!»; el fundador de Brave/creador de JS patrocinó Rust en Mozilla. Cruce bidireccional en consolidación (misma persona en dos lenguajes opuestos: worse-is-better vs safety-first).
- **WL-46 (Rust vs TypeScript/rewrite)**: `==` y la retrocompatibilidad como caso extremo de «los años de bugs corregidos se pierden en la reescritura» — aquí el costo de romper es medido en webs del mundo entero.
- **WL-81 / [[reglas-cableadas-vs-programadas]]**: contrapunto histórico-análogo: lo que viaja en el estándar/cableado no se puede cambiar sin romper el parque instalado.
- **WL-79 (Logo)**: tercer caso del tema «promesa vs institución»: el diseño técnico (Scheme elegante, ES4 ambicioso) pierde contra la economía (Java de moda, Microsoft, comités).
- Temas-candidatos: **worse-is-better** (primera fuente explícita del concepto en la wiki); **retrocompatibilidad como jaula** (WL-87 + WL-64 compatibilidad-hacia-atrás — deferral pendiente puede cumplir umbral aquí).

## ADVERTENCIA

Video de reacción con diálogo coloquial argentino explícito; la sustancia histórica es del video base (Fat Dev) no verificado contra fuentes primarias. Para citar hechos usar el video base y/o fuentes canónicas (charlas de Crockford en Google/Yahoo, correos de la lista ECMA).
