# FAV-457 — 35 años de Linux: 35 curiosidades

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=0l0yP227KRc) — Canal **La Chica de Sistemas** (Alexia), publicado 2026-09-04, 22:35, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-35-anos-linux-la-chica-de-sistemas.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).
- Nota: formato listicle de 35 curiosidades por los 35 años del kernel (agosto 1991 → 2026). 2.ª fuente del canal en la wiki → entidad candidata (umbral ≥2 cumplido, deferida al Log).

## Origen (1991)

- Anuncio en Usenet `comp.os.minix` (25-08-1991, 21 años): «hobby, no va a ser nada ni grande ni serio como GNU»; código 0.01 el 17-09; 1.00 recién en 1994. La 0.01 tenía 10.239 líneas (C + Assembly); hoy el kernel supera las 40 millones.
- **No se iba a llamar Linux**: el nombre original era *Freax* (free + freak + x); el administrador del FTP de la universidad de Helsinki, Ari Lemke, lo colgó en `/pub/os/linux` y el mundo ya lo conocía así.
- **Motor accidental**: mientras usaba Minix como andamio, una metida de pata con un driver de discos lo decidió a escribir su propio driver — y su propio SO. Hardware: un 386 con 4 MB de RAM, para exprimir la paginación que Minix desaprovechaba.

## Hitos y decisiones

- **Frente a GNU**: el Hurd se demoraba y Linux llenó el hueco — la ironía del mensaje fundacional («nada como GNU»).
- **Debate Tanenbaum (1992)**: monolítico vs microkernel, el cruce de arquitectura más famoso de la historia; el pragmatismo de Linus (rendimiento en hardware real) ganó, aunque hoy conviven híbridos (XNU de macOS).
- **Licencia**: la 0.01 tenía licencia casera sin valor legal (prohibido hasta cobrar diskettes); la adopción de GPL v2 (0.12, dic 1992) fue el catalizador que permitió a empresas invertir en el código.
- **Git (2005)**: al retirarse las licencias gratuitas de BitKeeper, Linus escribió en dos semanas un VCS distribuido sobre DAG — hoy estándar de facto de la industria (ver [[resumen-FAV-430-historia-git-linus-torvalds-fatdev]] para la versión extendida).
- **Desarrollo hoy**: ciclos de 9–10 semanas con merge window de 2 semanas + 7–8 RC; todo por listas de correo en texto plano (el código no se envía por PR); tronco firmado con GPG de Linus; >80% de los parches viene de ingenieros pagados (Intel, Red Hat, Google, Huawei, Meta, Amazon). Greg Kroah-Hartman mantiene las ramas stable/LTS.
- **Rust**: desde 6.1 (2022) el kernel admite C, Assembly y Rust (drivers con seguridad de memoria); la puerta a C++ quedó cerrada.

## Cultura y anécdotas

- **Tux** aparece en 1996, diseñado por Larry Ewing con una versión temprana de GIMP; pingüino regordete por el mordisco de un pingüino en el zoológico de Camberra (1993): «acaba de comerse un arenque».
- **Debian**: Ian Murdock + Deborah (DebIan); versiones con nombres de Toy Story desde Bruce Perens (ex-Pixar); la inestable es Sid, el niño que rompía juguetes. Primera distro: MCC Interim (Manchester, feb 1992).
- **GNU/Linux y «Lignux»**: fricción de Stallman/FSF con Debian; Linus pragmático — cada distro bautiza como quiera, el kernel es solo Linux. Respuesta clásica sobre pronunciación: «en Finlandia mi nombre es Linus, en Estados Unidos me dicen Linus, pero el kernel siempre se llama Linux».
- **Versión 3.0**: salto desde 2.6.39 sin motivo arquitectónico — Linus harto de números infinitos, aprovechó el 20.º aniversario. Y no hay versionado semántico: la regla es «nunca rompas el user space».
- **Intento de secuestro de marca** en los 90: anulado por demanda federal; la marca vive en la Linux Foundation.

## Presencia y legado

- Android corre un kernel Linux modificado (ACK): el SO con mayor base de usuarios final del planeta; 100% del TOP500 de supercomputadoras desde nov 2017; ISS e Ingenuity en Marte.
- **Paradoja del escritorio**: 4–5% de cuota.
- **Ley de Linus** (Eric Raymond, *La Catedral y el Bazar*, 1997): «dados suficientes ojos, todos los errores son superficiales» — encontrar el bug es lo difícil; aplicar el parche es trivial.
- Nacido «Just for Fun»: sin plan de negocios ni capital de riesgo — curiosidad técnica que terminó en la mayor obra de ingeniería colectiva de la historia.

## Cruces

- Canal **La Chica de Sistemas**: 2.ª fuente — [[resumen-FAV-449-janet-jackson-rhythm-nation-hdd]]. Entidad candidata deferida.
- **Historia de Linux/Git/Torvalds**: complementa directo [[resumen-FAV-430-historia-git-linus-torvalds-fatdev]] (la creación de Git desde el lado fatdev) — eje historia-software-corporativa (ahora 6 fuentes con FAV-431/446/452/453).
- Debate monolítico vs microkernel ↔ [[resumen-FAV-448-monolito-vs-microservicios-thedebugduck]] (la misma tensión modular/monolítica reaparece en arquitectura de aplicaciones).
