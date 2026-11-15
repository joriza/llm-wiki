# FAV-458 — Ordenar 1 millón de datos: 1 segundo o 10 minutos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=TTIA7LlI3rk) — Canal **Torti Code** («Torti»), publicado 2026-08-07, 17:05, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-ordenar-un-millon-de-datos-torti-code.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).
- Nota: 6.ª fuente del canal Torti Code en la wiki (umbral ya registrado, entidad deferida).

## Idea rectora: Big O aplicado

La diferencia entre 1 segundo y 10 minutos sobre el mismo arreglo y la misma máquina no está en el hardware sino en **cómo crece el costo**: cuadrático (n²: 1.000.000 → un billón de operaciones) vs n·log n (≈20 millones). Remite a [[resumen-FAV-433-big-o-vida-real-torti-code]], el video hermano del canal.

## Los 4 algoritmos

- **Bubble sort** (columna de burbujas): comparar vecinos e intercambiar, pasada tras pasada; el mayor «burbujea» al final. Cuadrático en promedio/peor; **mejor caso lineal** con el marcador de intercambios (lista ya ordenada → una pasada). Sin memoria extra. En producción, nadie; es la base mental.
- **Insertion sort** (mano de cartas): dos zonas, ordenada a la izquierda; cada carta nueva se desliza hacia atrás. Cuadrático si llega revuelta, **lineal si llega casi ordenada** — virtud que lo mantiene vivo dentro de los sorts grandes: los trozos de 30–40 elementos se ordenan con insertion porque en tamaños chicos la sencillez gana.
- **Merge sort** (dividir y vencer): partir a la mitad hasta elementos sueltos y fusionar mazos ordenados (siempre la carta de arriba de alguno). log n niveles × trabajo lineal = **n·log n en los tres casos, siempre predecible**. Paga en memoria extra (O(n)) y es **estable**.
- **Quick sort** (pivote): repartir menores/mayores alrededor de un pivote que queda clavado en su posición final. El más veloz en promedio y en el mismo arreglo (sin memoria extra); **talón de Aquiles**: pivote mal elegido + lista ya ordenada → degenera a cuadrático. Solución: pivote aleatorio o mediana de tres.

## Estabilidad y sorts reales

- **Estable** = empates conservan el orden previo → lo que hace natural ordenar por varias columnas (explorador de archivos, sorts de objetos). Merge sí; quick (tal cual) no.
- **Error 1 de junior**: implementar tu propio sort en producción (casi siempre un bubble disfrazado que funciona con 10 datos y cae con 10.000).
- **Error 2**: olvidar la degeneración de quicksort. **Error 3**: ignorar estabilidad al ordenar por dos criterios. **Error 4 (sutil)**: medir mal — con listas chicas el cuadrático puede ganar por menor sobrecarga; por eso los sorts reales son **híbridos** (n·log n arriba, insertion abajo).
- **Lo que usan los lenguajes**: Python **Timsort** (híbrido merge+insertion que aprovecha corridas ya ordenadas; desde 3.11 variante Powersort), V8/JavaScript Timsort con estabilidad obligatoria desde 2019, Java double-pivot quicksort para números primitivos y Timsort para objetos, C++ std::sort introsort (quick que vigila el peor caso y cambia de estrategia).
- **Moraleja**: en el trabajo no escribís ninguno — aprendiste los cuatro para entender qué pasa debajo de `sort()`, de `ORDER BY` (el motor elige estrategia según filas y memoria) y por qué se rompe un orden por dos columnas.

## Cruces

- Canal **Torti Code**: 6.ª fuente — [[resumen-FAV-433-big-o-vida-real-torti-code]] (Big O, directo), [[resumen-FAV-439-8-estructuras-de-datos-torti-code]], [[resumen-FAV-440-solid-en-5-minutos-torti-code]], [[resumen-FAV-441-programar-10x-mas-rapido-torti-code]] (+ informatica-teoria). Entidad deferida.
- **Rendimiento por elección de estructura/algoritmo** ↔ [[resumen-FAV-449-janet-jackson-rhythm-nation-hdd]] no aplica; el contraste natural es con el 1 s vs 10 min del propio título y con las estructuras de datos del canal (la diferencia entre 3 s y 3 ms es la estructura, no el lenguaje).
