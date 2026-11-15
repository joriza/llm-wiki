# FAV-433 — Big O explicado con ejemplos de la vida real (Torti Code)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=EhS3Q5XvyBY) — Canal **Torti Code**, publicado 2026-07-16, 17:48, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-big-o-vida-real-torti-code.md`
- **Dominio**: `informatica/` (subcarpeta Informatica/Transversal).

## Qué mide realmente el Big O

No mide segundos: mide **cómo crece el costo del algoritmo cuando crece la entrada** (la N: usuarios, filas, elementos). Ignora constantes y detalles — se queda con la forma de la curva. Por eso el código «funciona en tu laptop y explota en producción»: con pocos datos todas las curvas están pegadas; la diferencia aparece justo donde vive producción.

## Las cinco complejidades con analogía

| Complejidad | Analogía | Firma | En código |
|---|---|---|---|
| O(1) constante | abrir directo el cajón etiquetado | la N no cambia nada | acceso por índice, hash map / diccionario |
| O(log n) logarítmica | partir la guía telefónica a la mitad | ×1000 datos = ~10 pasos extra | búsqueda binaria, árboles balanceados (requiere datos ordenados) |
| O(n) lineal | tocar timbre en cada casa | duplicar N duplica el trabajo | el bucle de toda la vida |
| O(n²) cuadrática | todos saludan a todos en la fiesta | duplicar N cuadruplica el trabajo | **bucle dentro de bucle** — el «asesino silencioso»; suele esquivarse con diccionario/set (acceso O(1)) |
| O(2ⁿ) exponencial | probar cada combinación del candado | cada elemento multiplica el universo | fuerza bruta, Fibonacci con recursión ingenua (arreglable con memorización) |

Meta resumida en la gráfica de curvas: **quedarse abajo** (constante/log/lineal); cuadrática revisar; exponencial casi siempre señal de replantear el problema.

## Aterrizaje en el mundo real

- **Índices de BD**: un escaneo completo de tabla es O(n); un índice es un árbol ordenado (O(log n)) — de 10 millones de filas a ~20 saltos: la diferencia entre una consulta de 3 minutos y una de 3 ms.
- **Autocompletado/búsqueda instantánea**: imposible si fuera lineal sobre todo el catálogo en cada tecla.
- **Seguridad de contraseñas**: el lado bueno de lo exponencial — la fuerza bruta se vuelve inviable (12 caracteres bien elegidos = siglos).

## Trampas finales

1. Cuadrático simple puede ganarle a un lineal con muchos bucles para N pequeñas — no optimizar lo que no crece.
2. Caso promedio vs peor caso (hash O(1) en promedio, degradable con colisiones).
3. Big O también es **memoria**: el intercambio tiempo↔espacio es media batalla.
4. Regla de oro: Big O para entender la forma, **medición real** para decidir dónde optimizar.

## Cruces

- Canal **Torti Code**: 2.ª fuente en la wiki (concurrencia vs paralelismo, FAV en informatica-teoria) → entidad candidata para consolidación.
- Clúster **estructuras de datos/algoritmos**: el mismo canal cierra el video derivando a su video de 8 estructuras de datos; cruza con el resumen de Codist (25+ algoritmos) y estructuras de datos en informatica-teoria.


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[torti-code]] (14 fuentes).
