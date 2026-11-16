# WL-341 · Vim: la imitación gratuita que le ganó al original

- **Fuente**: [`raw/general/2026-09-21-vim-la-imitacion-gratuita-que-le-gano-al-original.md`](../../raw/general/2026-09-21-vim-la-imitacion-gratuita-que-le-gano-al-original.md) — vídeo de YouTube `kMn9gZFeuS0`
- **Canal**: Archivo del Futuro
- **Publicado**: 2026-09-21 · **Duración**: 25:22
- **Tipo**: divulgación histórica de la tecnología (software)
- **Dominio destino sugerido**: general (historia de la tecnología) o informatica-teoria

## Tesis

Vi/Vim es el caso inverso del catálogo del canal: el original (vi, Bill Joy, 1977) quedó legalmente encerrado durante más de dos décadas y una reescritura limpia hecha por un empleado de una fábrica de fotocopiadoras (Vim, Bram Moolenaar, 1991) lo desplazó definitivamente. La forma «hostil» del editor no es diseño sino cicatriz de limitaciones físicas (teletipo, modem 300 baudios, pantalla cara), y sobrevivió a la limitación, al candado legal y a su propio autor.

## Puntos clave

- **Origen de la forma** [00:45]: Ed de Ken Thompson (1969) era un editor de líneas para teletipo — se editaba «a ciegas». Con las terminales de mediados de los 70, George Coulouris (Queen Mary College, 1976) adapta Ed a pantalla (em, «editor for mortales»); Bill Joy y Chuck Haley lo llevan a Berkeley y derivan en ex, cuyo modo visual completo (octubre 1977) es vi. Las letras-órdenes y la salida oscura (`:q`) responden a líneas de 30 caracteres/segundo y al coste de cada carácter pintado: «la forma quedó, el motivo desapareció».
- **Guerra vi vs Emacs desmitificada** [07:59]: no fue religión sino dos facturas — Emacs nació en el MIT con enlaces rápidos a la central; vi se diseñó para gastar lo mínimo por modem telefónico doméstico. Las bromas (San IGNUcius de Stallman; «editor de la bestia» = VI como 666) institucionalizaron el chiste.
- **Candado legal** [09:44]: vi descendía de código de los laboratorios Bell → requería licencia comercial de fuente Unix durante 20+ años: la herramienta más difundida era imposible de mejorar legalmente. Reescrituras limpias en paralelo: Elvis (Steve Kirkendall, 1990), vile, Stevie. Ironía: el propio Berkeley tuvo que encargar nvi (Keith Bostic), editor de fábrica en BSD, para purgar su propio sistema.
- **Vim** [12:17]: Bram Moolenaar (Venlo, Países Bajos, 1988) completa Stevie para su Amiga vía disquetes Fish; publica en 1991 como «Vi IMitation» — el nombre declaraba ser una copia — y luego «Vi IMproved». Distribución desde 1995 como *charityware*: gratis, con sugerencia de donación al centro infantil de Kiccucile/Kibaale (Uganda), donde Moolenaar fue voluntario un año (1994-95); donaciones ~90.000 EUR en el año de su muerte. Google lo empleó en Zúrich (2006-2021) manteniendo Vim; su cuenta acumula 16.500+ contribuciones (incluye parches de otros que él cargaba — matiz señalado).
- **Desenlace** [16:21]: la liberación del vi original (enero 2002, licencia libre) llegó tarde — la copia ya ganó: Linux trae Vim de fábrica y muchas distros mapean `vi`→vim. Lección incómoda: tener el derecho no sirve si llegas tarde a la costumbre.
- **Sucesión** [20:14]: Neovim (Tiago de Arruda, 2014, tras un cambio profundo rechazado) se vuelve la favorita de la nueva generación. Muerte de Moolenaar (3 de agosto de 2023, 62 años) expone el bus factor: era único propietario de la organización en GitHub, dominios y redirecciones de correo a su casilla personal; el proyecto quedó semanas «cerrado con llave». Christian Brabant (co-mantenedor desde antes) toma el relevo, la familia da accesos y se arma un equipo de 7-8 personas; Brabant rechaza explícitamente el modelo de «dictador benevolente» que acababa de fallar.
- **Vigencia** [21:58]: ~24 % de uso en la encuesta Stack Overflow 2025 (49.000+ respuestas) + 14 % de Neovim; el modo vi como «idioma» de verbos y complementos explica los modos vi embebidos en editores modernos. Matiz preciso: el estándar POSIX no obliga a incluir vi en todos los casos — solo en sistemas que declaran soportar el paquete de utilidades de usuario.

## Evaluación

- Divulgación histórica bien documentada del canal Archivo del Futuro (+1 tras WL-328/335), con cronología verificable y matices técnicos correctos (POSIX, charityware, bus factor). Cifras de encuesta y donaciones citadas de 2.ª mano, señaladas.
- ASR garbiñeado fuerte en nombres: Coluris→Coulouris, Bustick→Bostic, Mulenar/Mulen→Moolenaar, Stalman→Stallman, Benlo→Venlo, Racay→(distrito de Rakai), EMAX→Emacs, BIM/Vim indistinto, Surich→Zúrich — normalizados solo en el resumen.
- Sin patrocinio; cierre estándar del canal (like/suscripción) excluido.

## Cruces

- Cluster historia de la tecnología: WL-328 (Archivo del Futuro, historia de software), WL-335 (Maxtor), WL-339 (Token Ring vs Ethernet — tesis hermanada: la adopción y el coste deciden por encima de la calidad), WL-313/200/117/323.
- Bus factor y sostenibilidad de software libre: cruce natural con la sostenibilidad de proyectos open source discutidos en fuentes de ia-uso-practico.
- [[historia-de-la-tecnologia]] — Archivo del Futuro +1 (entidad a actualizar en consolidación).
