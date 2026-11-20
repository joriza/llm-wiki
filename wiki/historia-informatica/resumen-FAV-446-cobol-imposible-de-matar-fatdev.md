# FAV-446 — Por qué es IMPOSIBLE matar a COBOL (fatdev)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=IMnwlfGqeCU) — Canal **fatdev**, publicado 2026-07-08, 18:49, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-por-que-es-imposible-matar-cobol-fatdev.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## COBOL: odiado e inmortal por el mismo motivo

Relato histórico del estilo habitual de fatdev (como [[resumen-FAV-430-historia-git-linus-torvalds-fatdev]] y [[resumen-FAV-431-dennis-ritchie-lenguaje-c-fatdev]]):

1. **Grace Hopper, el origen (1952-1959)**: matemática de Yale rechazada por la Marina por edad/peso/«más útil dando clases»; entra en la reserva en 1943 y programa el Mark I en Harvard. Inventó el compilador (A-1, 1952) con la idea herética de que la máquina entienda inglés; su Flow-Matic es el ancestro directo del COBOL que el comité Codasyl estandariza en 1959. Anécdota del primer «bug» real (la polilla del relé, guardada en el Smithsonian).
2. **La filosofía que lo condenó**: legibilidad sobre elegancia — código que un contable puede leer. La élite académica lo despreció como «lenguaje de paleto»; Dijkstra (1975) escribió que «el uso de COBOL atrofia la mente; enseñarlo debería considerarse un delito». La universidad lo enterró.
3. **60 años de asesinos fallidos**: PL/I (IBM, años 60), los 4GL (años 80), Java (años 90 — los bancos modernizaron solo la capa de presentación; el motor del dinero siguió en COBOL), y el desfile de «migración total» de nube/IA. Ninguno bajó al lenguaje del trono del dinero.
4. **Por qué es intocable**: (a) montaña de miles de millones de líneas sin documentación, en manos de una generación que se jubila; (b) aritmética decimal exacta al céntimo — los lenguajes modernos redondean y ese redondeo, multiplicado por billones de operaciones, evapora dinero; (c) fiabilidad — binarios con 40 años de uptime. Casos: el IRS de EE. UU. lleva desde 2009 intentando reemplazar su sistema COBOL/Assembly (promesa: 2030); Commonwealth Bank de Australia: 580 M$ presupuestados → 1.100 M$; TSB (Reino Unido, 2018): migración en un fin de semana → 2 M de clientes bloqueados, 330 M£ de pérdidas, dimisión del director.
5. **La crisis de relevos**: la mayoría de programadores COBOL supera los 55 años; Nueva Jersey en pandemia (2020) pidió programadores de COBOL por TV con el paro disparado un 1600%.
6. **La tesis final**: COBOL sobrevivió *por* su simplicidad, no a pesar de ella — Hopper lo diseñó para seguir funcionando cuando quien lo escribió ya no esté. Hopper: contraalmirante, Medalla Presidencial de la Libertad (2016, póstuma). Dijkstra murió (2002); su veredicto no.

## Valor

Historia motivacional sobre deuda técnica y el coste real de reescribir sistemas críticos; complemento natural del clúster de historia de fatdev.

## Cruces

- Canal **fatdev**: 3.ª fuente (FAV-430 Git, FAV-431 Ritchie/C) — misma serie narrativa histórica; entidad candidata ya registrada para consolidación.
- **WL-656** ([[resumen-WL656-cobol-codigo-importante-imperios-obsoletos]], informatica-teoria/ — consolidación T17, 2026-11-20): par directo de la misma historia desde la divulgación larga (mismos casos CBA/TSB/IRS/Nueva Jersey, cifras de 2.ª mano sin fuente — señalado); añade Mizuho/Minerva, California, Southwest, los conversores automáticos (decimal exacto vs. coma flotante) y la IA generativa chocando con la intención perdida; [[historia-software-corporativa]] recoge la lectura organizacional (amnesia corporativa: la lógica de negocios solo existe dentro del código).
- Clúster **historia-informatica**: Hopper/COBOL cruza con Unix/C (FAV-431) y FORTRAN (el dominio historia-informatica); concepto `historia-informatica` → umbral ya cumplido, deferido.
- Contraste con [[resumen-FAV-437-tantos-lenguajes-de-programacion-gilada]] (por qué hay tantos lenguajes) y [[resumen-FAV-439-8-estructuras-de-datos-torti-code]] como panorama de fundamento.


## Consolidación (2026-11-15)

- Eje y canal consolidados: [[historia-software-corporativa]] · entidad [[fatdev]].
