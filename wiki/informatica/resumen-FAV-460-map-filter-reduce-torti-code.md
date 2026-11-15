# FAV-460 — map, filter y reduce: el fin de los bucles for

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Jj0OWJe5Ixw) — Canal **Torti Code** («Torti»), publicado 2026-07-30, 14:07, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-map-filter-reduce-torti-code.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).
- Nota: 8.ª fuente del canal Torti Code (umbral ya registrado, entidad deferida). Introducción a los 4 pilares de la programación funcional aplicada.

## Los 4 pilares (se sostienen entre sí)

- **Funciones puras** (la receta del panqueque: mismos ingredientes → mismo plato, sin meter la mano en el refrigerador): dos reglas — mismo resultado para la misma entrada y no tocar nada de afuera. Los **efectos secundarios** son donde se esconden los bugs raros: «funciona en mi máquina pero no en producción» casi siempre tiene una función impura leyendo o cambiando algo por debajo. Ventajas: testeables en una línea (sin BD falsa ni reloj simulado) y legibles de arriba a abajo.
- **Inmutabilidad** (documento firmado: no tachar el original, fotocopiar y editar la copia): mata de raíz el **bug de estado compartido**, de los más difíciles de cazar porque el culpable está lejos de donde explota. Java `records` (campos final; ojo: la inmutabilidad es **superficial** — protege la referencia, no lo que cuelga de ella); Elixir ni siquiera tiene mutación. Cambio de chip: no preguntar «cómo lo modifico» sino «cómo construyo la versión nueva». Las estructuras persistentes comparten por debajo lo que no cambió.
- **Funciones de orden superior** (robot de cocina con ranura de accesorios): pasar comportamiento como dato — recibir una función o fabricar una. Lo que hace que map/filter/reduce existan; conecta con currying (deferido).
- **Map, filter, reduce** (línea de montaje: transformar → colar → juntar): map aplica la misma transformación a cada elemento; filter cuela por condición; reduce acumula con valor inicial hacia un único resultado. **Tropiezo clásico**: reduce sin valor inicial toma el primer elemento y revienta con lista vacía — «pásale siempre un valor inicial».

## Dónde viven

- **Python**: `map`/`filter` devuelven iterador perezoso (envolver en `list`), `reduce` vive en `functools`; `itertools`/`functools` en la stdlib.
- **Java**: streams perezosos — nada corre hasta la operación terminal (`reduce`/`collect`), una sola pasada.
- **Elixir**: operador pipe — la tubería se lee como una oración.
- **Ecosistema JS**: Lodash y Ramda (Ramda nunca toca tus datos); Immer (escribes como si mutaras un borrador, produce objeto nuevo) e immutable.js; RxJS para flujos de eventos en el tiempo.
- **En producción ya**: React exige estado nuevo (muta y la referencia no cambia → la pantalla no se actualiza); Redux exige reducers puros (por eso se puede viajar en el tiempo entre estados); **Apache Spark reparte map/filter/reduce entre cientos de máquinas — la pureza y la inmutabilidad hacen posible el paralelismo masivo**.

## Cruces

- Canal **Torti Code**: 8.ª fuente — [[resumen-FAV-439-8-estructuras-de-datos-torti-code]] (las estructuras que estos tríos recorren), [[resumen-FAV-433-big-o-vida-real-torti-code]], [[resumen-FAV-440-solid-en-5-minutos-torti-code]] / [[resumen-FAV-459-sabes-solid-te-faltan-4-principios-torti-code]] (OO vs funcional: dos caminos de orden), [[resumen-FAV-441-programar-10x-mas-rapido-torti-code]], [[resumen-FAV-458-ordenar-un-millon-de-datos-torti-code]].
- **Inmutabilidad/estado compartido** conecta con el argumento anti-bug-fantasma del canal y con el big data: Spark hace en clúster lo que el sorting de [[resumen-FAV-458-ordenar-un-millon-de-datos-torti-code]] hace sobre un arreglo.


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[torti-code]] (14 fuentes).
