# Historia de software corporativa (eje T4)

- **Tipo**: página de concepto.
- **Dominio**: `informatica`.
- **Creada**: 2026-11-15 (consolidación de la ventana Vs + Docencia T4 — eje registrado deferido en los relevos; umbral ≥2 verificado por conteo real).
- **Fuentes nucleares**: [[resumen-FAV-430-historia-git-linus-torvalds-fatdev]] (Git/BitKeeper) · [[resumen-FAV-431-dennis-ritchie-lenguaje-c-fatdev]] (Unix/C/Bell Labs) · [[resumen-FAV-446-cobol-imposible-de-matar-fatdev]] (COBOL/banca) · [[resumen-FAV-452-sql-server-historia-sybase-archivo-del-futuro]] (Sybase/SQL Server) · [[resumen-FAV-453-office-vs-wordperfect-archivo-del-futuro]] (WordPerfect/Office).
- **Cruces**: [[resumen-FAV-454-lotus-123-shelddredd]] (Lotus 1-2-3/IBM) · [[resumen-FAV-461-susan-kare-iconos-mac-archivo-del-futuro]] (Susan Kare/Apple-Microsoft).
- **Ver también**: dominio `historia-informatica/` ([[arquitectura-von-neumann]], [[historia-lenguajes-programacion]], [[vermeer-frontpage]]) — el vecino temático de playlist propia; entidad canal [[archivo-del-futuro]] (5 fuentes: WL-069/079 + 452/453/461) y [[fatdev]] (3 fuentes).

## La tesis del eje

Siete fuentes independientes de tres canales repiten el mismo patrón: **el destino de una tecnología la decide la estructura corporativa y de plataforma que la rodea, no su calidad técnica**.

- **Efecto de plataforma** (FAV-452, FAV-453 — los dos «vencidos con tecnología superviviente»): Sybase tenía el motor y perdió el nombre; WordPerfect tenía el producto líder y perdió la unidad de compra (Office vendió la suite, no el programa). «El producto sobrevivió; el estándar cambió de dueño». El caso Windows 95/Novell separa lo documentado (expedientes judiciales) de la interpretación editorial.
- **El accidente institucional como regalo** (FAV-430, FAV-431): Git nace de la revocación de una licencia propietaria (BitKeeper) — diseño como cicatriz (distribuido, SHA-1); Unix se regala a universidades porque a AT&T le prohibían vender software — y de ahí C como infraestructura invisible de todo el stack moderno.
- **La supervivencia del sistema veterano** (FAV-446): COBOL es intocable por aritmética decimal exacta, fiabilidad probada y coste de migración demostrado en fracasos públicos (TSB: 330 M£; Commonwealth Bank: 580 → 1.100 M$; IRS desde 2009). ASE (Sybase) comparte ese perfil de nicho transaccional protegido por costes de migración.
- **La era de las suites y la killer app** (FAV-454, FAV-461): Lotus 1-2-3 como primera killer app (escrita en ensamblador, velocidad sobre MS-DOS) terminada en la compra de IBM; Susan Kare diseñando el lenguaje visual del Mac y de Windows 3 — la capa donde los usuarios reales tocaron la historia.

## El método documental

Los episodios de [[archivo-del-futuro]] corrigen la memoria pública con cronologías y expedientes; fatdev usa el relato narrativo con marco de clickbait señalado en los resúmenes (el contenido justifica a medias el título). Criterio transversal de la wiki: distinguir memoria pública (el nombre), propiedad corporativa y continuidad técnica.

## Notas

- FAV-454 y FAV-461 entran como cruces (1 fuente cada canal ShellDredd/Archivo del Futuro-otro-tema, no alcanzan umbral propio).
- FAV-452 puentea con [[bases-de-datos]] (la mitad técnica de la historia).

## Actualización 2026-11-17 (consolidación T6, tramo 98)

WL-605 ([[resumen-WL605-microsoft-lotus-excel-mac-un-junior-mas]] — en `wl/`): la crónica 1979-2014 de la guerra de hojas de cálculo complementa el episodio FAV-454 (Lotus 1-2-3) con la contraparte completa — Multiplan (portabilidad) vs. 1-2-3 (ensamblador, una máquina), el giro de Excel a la Macintosh como banco de pruebas de Windows (Klunder, «recalcular o morir»), Jazz, Excel 2.0 como caballo de Troya de Windows y el bug del 29-2-1900 heredado de Lotus que Excel arrastra 40 años. Mismo patrón «la plataforma decide» que FAV-453 (Office vs. WordPerfect): quien llega primero y bien al estándar ganador gana el paquete. Cruce regional: WL-608 ([[resumen-WL608-czerweny-pc-argentina-fabricas-desaparecidas]] — en `wl/`) cuenta la versión argentina de la misma década (Czerweny/CZ, Drean, Talent/MSX) donde el entorno de incentivos (Decreto 652/86 premió a San Luis) dejó a todos fuera — «la guerra acabó sin ganador». Par recomendado para lectura conjunta: el estándar global (WL-605) vs. la ventana perdida local (WL-608).

## Actualización 2026-11-20 (consolidación T17, tramo 101)

WL-656 ([[resumen-WL656-cobol-codigo-importante-imperios-obsoletos]], informatica-teoria/) aporta la variante extrema del patrón «la estructura decide el destino»: el COBOL (~800.000 M de líneas, ~3 billones USD/día) no sobrevive por decisión técnica sino por **amnesia corporativa** — la lógica de negocios acumulada 50 años solo existe dentro del fuente, sin documentación; reemplazarlo exige rescatar conocimiento que nadie más tiene. Casos con cifras: Commonwealth Bank (única migración nuclear «exitosa»: doble ejecución en paralelo, 1.000-1.500 M AUD vs. 580 presupuestados — efecto disuasivo para toda la banca), IRS (Individual Master File de ~1960 sobrevivió a fracasos de 4.000 M USD), TSB (migración en fin de semana: 330 M£ de compensaciones), Mizuho (>20 años, >80.000 ingenieros) y California (300 M USD incinerados y vuelta al mainframe original). Cifras de 2.ª mano sin fuente en pantalla — señaladas. Complementa FAV-453/454 (quién gana el estándar) con su contracara: quién **no puede** abandonar el estándar.
