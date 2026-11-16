# Resumen: 28. ¿Qué es Pandas? — Introducción a Pandas en Python

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2020-04-23-28-que-es-pandas-introduccion-a-pandas-en-python-curso-de-python-3-desde-cero-la.md` (video en español; transcripción por subtítulos automáticos ya bastante limpia; garbiñeos menores normalizados solo aquí: «p d»→pd) — https://www.youtube.com/watch?v=Mm1L4Bde6_w — La Cartilla, 2020-04-23 (07:45). Tutorial 28 del curso «Python 3 desde cero»; el primero de tres dedicados a pandas (este casi enteramente teórico).

## Qué es pandas

Librería «rápida y muy potente» para **manipulación, análisis y visualización de datos tabulares**, construida sobre NumPy (núcleo en C/C++, de ahí su velocidad) y Matplotlib (gráficos). Lanzada en 2012; líder en tráfico de preguntas de StackOverflow entre los paquetes Python (por encima de Django, Flask, NumPy y Matplotlib), crecimiento que el canal atribuye al auge del machine learning y la analítica de datos. Tesis del canal: para trabajar con análisis de datos en Python, pandas «no es una opción».

## El DataFrame frente a la matriz NumPy

El objeto fundamental es el **DataFrame**: arreglo tabular de dos dimensiones (filas y columnas, tipos mixtos), equivalente conceptual a una tabla SQL o una hoja de Excel con tablas dinámicas. La diferencia frente a una matriz 2D de NumPy no está en la forma sino en las **propiedades de indexación** de filas y columnas, que permiten operaciones de alto nivel: agrupamiento por categoría, joins/uniones entre tablas, filtros por atributos.

## Las seis capacidades que enumera el tutorial

1. Carga/importación desde múltiples formatos (Excel, texto plano, JSON, bases de datos relacionales).
2. Transformaciones de forma (pivoteos, transposiciones).
3. Transformaciones de datos (conversión de tipos, strings→datetime, strings→enteros, manipulación de caracteres).
4. Cálculo de medidas derivadas (nuevas columnas/filas a partir de operaciones sobre otras).
5. Análisis y visualización directa sobre el DataFrame (barras, tortas, histogramas, dispersión, correlación) vía integración con Matplotlib.
6. Escritura de resultados hacia esas mismas fuentes.

Hacer todo esto con bucles y funciones propias sería «extenso, traumático e ineficiente» — el argumento es de apalancamiento sobre infraestructura ya optimizada. Instalación: incluida en Anaconda; si no, `pip install pandas` (con `==versión` si hace falta). Convención global: `import pandas as pd`.

## Dónde encaja en la wiki

Es la pieza teórica que fundamenta el ejercicio aplicado de [[resumen-podras-contra-este-ejercicio-avanzado-de-python]] (limpieza y agregación sobre el CSV de StackOverflow con read_csv/dropna/groupby): misma herramienta, niveles introductorio vs práctico. En el dominio convive con las alternativas modernas: [[duckdb]] hace consultas SQL directas sobre esos mismos formatos y [[polars]] reimplementa el modelo DataFrame con ejecución más rápida — el «por qué pandas» de esta fuente es exactamente el problema que esas dos atacan. Su posición en el ecosistema Python queda recogida en [[mapa-del-ecosistema-python]].

---

**Ver también**: [[resumen-podras-contra-este-ejercicio-avanzado-de-python]] · [[duckdb]] · [[polars]].


## Ver también

- [[bases-de-datos]]
- [[bases-de-datos-especializadas]]
- [[mapa-del-ecosistema-python]]
