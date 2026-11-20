# WL-708 — Debian: el sistema que corre YouTube, la ISS y el CERN

**Fuente**: [Vídeo](https://www.youtube.com/watch?v=AP8xOL1eubQ) · Canal: La Chica de Sistemas · 2026-04-21 · 32:04 · Raw: `raw/informatica/2026-04-21-el-sistema-que-usa-youtube-para-que-veas-este-video.md`

## De qué trata

Historia de Debian contada como proyecto humano y filosófico más que técnico: desde SLS (1993, primera distro) y Slackware hasta por qué Debian sobrevivió 30+ años y se volvió la base más clonada del software libre, con testimonios de tres developers (Marga, Gunar Wolf, Leonardo Martínez) y anuncio del DebConf 2026 en Santa Fe, Argentina.

## Contenido

- **Origen**: Ian Murdock, estudiante de Purdue, publica Debian el 16/8/1993 (nombre: De+Ian, por su novia Deborah) y el manifiesto de 1994: el problema de Linux era filosófico, no técnico — distros comerciales o de una sola persona no escalaban; Debian sería desarrollado abiertamente, con decisiones democráticas de comunidad, sin control mayoritario de empresa ni individuo.
- **El «mayor hack»**: parafraseando a Raymond (el logro de Torvalds fue el modelo de desarrollo, no el kernel), el logro de Murdock fue el modelo de desarrollo de Debian, imitado por la mayoría de los proyectos posteriores.
- **apt y el infierno de dependencias**: el sistema .deb y APT (resolución automática de dependencias, repositorios centralizados, estado consistente) se considera el primer «App Store» del mundo; Fedora nació (Warren Togami, 2002) precisamente como «el Debian de Red Hat» para traer repositorios comunitarios al mundo RPM.
- **Contrato social (1997) y DFSG**: 100 % libre, componentes privativos separados y etiquetados, bugs atendidos públicamente, usuarios por encima del proyecto; las DFSG inspiraron la Open Source Definition de la industria.
- **Versiones**: nombres de Toy Story desde Buzz (1.1/1.2, 1996-97) porque Bruce Perens trabajaba en Pixar; Sid = inestable (el niño que rompe juguetes). Woody (2002) introdujo criptografía y KDE solo cuando hubo certeza legal — Debian no incorpora nada sin certeza jurídica y filosófica. Jessie (2013, Debian 8) centralizó apt/apt-get en `apt` y trajo systemd → fork Devuan, ejemplo de la libertad de bifurcar.
- **Tres ramas**: Sid (rolling), testing, stable — la filosofía: no lo último, previsibilidad («la Toyota Hilux de Linux»: lenta en la pista, nunca te deja a pata); conservadorismo deliberado, no pereza de mantenedores.
- **Confianza crítica**: NASA migró las laptops de la ISS de Windows XP a Debian en 2013 (control total, sin dependencia de terceros, eligiendo un release atrás por estabilidad); CERN, NYSE, y la infraestructura de entrega de video de Google (todo lo que ves en YouTube pasa por Debian modificado). Toda la tesis del título.
- **Murdock humano**: entregó el proyecto a la comunidad; Linux Foundation, Sun (OpenIndiana), Docker; falleció a los 42 — el video pide hablar de salud mental. Entrevistados: 20+ años cada uno en Debian, Debian Women, y el DebConf (Santa Fe, UNL, 13-25 de julio 2026; anterior en Argentina 2008).

## Valoración

Videoensayo sólido y con voces primarias (entrevistas reales a developers de Debian con 20-30 años de antigüedad, incluida la primera developer argentina): historia correcta (SLS→Slackware/Debian/Red Hat, Perens/Pixar, Fedora/Togami, Devuan/systemd), errores menores de ASR («Devian», «Rebian», «Linux Torvals», «Sisten D»). La tesis central —la estabilidad como decisión deliberada que habilita usos críticos— está bien argumentada. 2.ª fuente del canal en la wiki.

## Conexiones

- [[historia-software-corporativa]] y el ecosistema Linux de la wiki (WL-654 Linux ligero, [[el-bit-informado]]): Debian como caso de gobernanza comunitaria que gana por consistencia, no por marketing.
- [[delegacion-cognitiva-ia]] tangencial: la premisa «confianza en infraestructura invisible» (nadie sabe que usa Debian) — el mismo patrón de lo que la wiki llama «tecnología que trabaja en silencio».
- DebConf 2026 Santa Fe: evento local relevante para el archivo de entidades si vuelve a aparecer.
