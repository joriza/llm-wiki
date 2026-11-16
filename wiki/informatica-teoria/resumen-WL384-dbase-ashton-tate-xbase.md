# WL-384 — dBASE: el padre de FoxPro y Clipper que quiso ser dueño de su idioma

- **Fuente original**: `raw/informatica-teoria/2026-09-14-dbase-el-padre-de-foxpro-y-clipper-que-quiso-ser-dueno-de-su-idioma.md`
- **Canal**: Archivo del Futuro
- **Publicado**: 2026-09-14 · **Duración**: 26:12
- **Video**: [`WKeVHGRUf9s`](https://www.youtube.com/watch?v=WKeVHGRUf9s) · WL-384 (índice 72 del cache, 4.584 entradas)

## Qué trata

Historia de la tecnología (26 min) sobre dBASE y Ashton-Tate, contada como fábula sobre ecosistemas y control:

- **Origen**: Wayne Ratliff (contratista de Martin Marietta en el JPL de la NASA, proyecto Viking) quería ganar la quiniela de fútbol americano procesando estadísticas; encontró el sistema JPLDIS (Thompson/Hatfield, dominio público) y escribió su versión para PC: «Vulcan» (por el planeta de Spock). Vendía poco solo.
- **Marketing fundacional**: George Tate y Hal Lashley (venta de software por correo) compraron los derechos de comercialización; el publicista Hal Pawluk renombró Vulcan → «dBASE II» (nunca hubo versión comercial I — el «II» daba sensación de producto maduro) e inventó el apellido «Ashton» (sonaba mejor; el loro Ashton fue posterior). dBASE II a ~700 USD con disco sellado de devolución en 30 días y manual reescrito.
- **Auge**: con la IBM PC (1982) dBASE se vuelve «la razón» de comprar una PC junto a Lotus 1-2-3 y WordStar; el punto de la pantalla vacía y comandos en casi-inglés (`USE`, `LIST`, `LOCATE`, `BROWSE`) enseñó a programar a toda una generación; ejército de consultores que cobraban sistemas a medida mientras Ashton-Tate cobraba licencia por cliente; ~70 % del mercado de BD para microcomputadoras a mediados de los 80; 121,6 M USD (FY1986) → ~318 M (1987), +1.700 empleados, a la altura de Microsoft y Lotus. Muerte de George Tate (infarto, 1984, 40 años); manda Ed Esber (ex-VisiCalc): diversificación de catálogo (Framework, MultiMate) sin integración real.
- **Los hijos**: el formato DBF abierto y documentado + el lenguaje común permiten a Nantucket (Clipper, compilador, 1985) y Fox Software de Dave Fulton (FoxBASE/FoxPro, Ohio) vender más rápido lo mismo sin pagar licencias → el mercado se llama **Xbase**. Esber amenaza con demandar clones en conferencia; los desarrolladores leen la amenaza y adoptan los clones como seguro.
- **Caída**: Ratliff se va (~1987); dBASE IV sale apurado en octubre 1988 con errores graves (reconocidos por Esber; fix recién julio 1990); noviembre 1988 Ashton-Tate demanda a Fox y SCO. La compatibilidad Xbase convierte la salida en cambio de proveedor sin cambiar de idioma: 63 % de mercado (1988) → <50 % (1990), despidos y pérdidas. Fusiones rechazadas (Lotus, Microsoft) por el directorio. Esber deja la presidencia (abril 1990).
- **El fallo**: 11-12-1990, juez Terry Hatter (Los Ángeles) invalida los derechos de autor de dBASE por **conducta inequitativa** — Ashton-Tate ocultó a sabiendas que dBASE derivaba de JPLDIS (domino público); aunque el juez revisó su decisión en abril 1991, el daño comercial estaba hecho.
- **Epílogo**: Borland compra Ashton-Tate (julio 1991, 439 M USD en acciones); el DOJ condiciona: Borland renuncia a demandar por comandos/menús/lenguaje/estructura de archivos → el idioma Xbase queda libre de amenaza legal «por firma, sin que nadie ganara un juicio». Microsoft compra Fox (1992, ~175 M; FoxPro pasa a Microsoft) y Computer Associates compra Nantucket (Clipper). Access (nov 1992, dentro de Office) desplaza al mundo Xbase a nicho (Borland, con ~85 % del mercado PC sumando Paradox+dBASE la víspera: «No estamos preocupados»).
- **Cierre**: lección — «confundió liderazgo con propiedad»: un producto que se vuelve lenguaje se gobierna como territorio o se cuida como comunidad. Supervivientes: dBASE LLC aún vende versiones modernas; herederos open source de Clipper (Harbour); y el formato DBF vive dentro de los **Shapefiles** de los SIG municipales. Ratliff retirado, navegando a vela.

## Señales de triage

- Divulgación histórica factual bien estructurada; cifras (facturación, precios, % mercado, fechas de fallos y compras) citadas de 2.ª mano sin enlaces — coherentemente presentadas («según las estimaciones/crónicas»), verificación externa no posible desde el video (señalado).
- ASR distorsiona nombres técnicos de forma persistente (ver ASR); el contenido es verificable contra la historia documentada de Ashton-Tate/dBASE.
- Sin patrocinio; cierre estándar de canal.

## Cruces y consolidación (deferida — L12)

- Dominio destino: `informatica-teoria/` (historia del software/bases de datos; mismo eje que WL-313 COBOL, WL-356 MySQL→Oracle, WL-200/117).
- Entidad **[[archivo-del-futuro]]** +1 fuente (líder del cluster historia-tecnología WL). Cruces: [[bases-de-datos]] (WL-280/285-287/352/356), [[historia-de-la-tecnologia]], tema «ecosistema vs propiedad» (Xbase ↔ estándares abiertos; paralelismo con navegadores/plataformas).
- Nota ASR clave para la consolidación: «Devase/Debase/Dybase»→dBASE, «Esber»→Ed Esber, «Radliff/Rliff»→Wayne Ratliff, «Harvard»→Harbour (compilador Clipper), «Luk Chun»→(según video) desarrollador citado.

## ASR (normalizado solo aquí)

dBASE (ASR: Debace/Devase/Debase/Dybase/DBE/Debe), Wayne Ratliff (Ratliff/Rliff/Radliff), Ed Esber, JPLDIS (JPL dis/JP Dies), Vulcan→Balcan/Balkan, Hal Lashley, Hal Pawluk (Pauluk/Pauluke), WordStar (Warstar), Lotus 1-2-3, VisiCalc (Visicalk), Nantucket (Nantcket), FoxBASE/FoxPro, SCO (Santa Cruz Operation), Borland (Philippe Kahn — ASR «Philip Kh»), MultiMate, Terry Hatter Jr. (juez), Harbour (ASR «Harvard»), Shapefiles/DBF, dBASE LLC, InfoWorld (Infoor).
