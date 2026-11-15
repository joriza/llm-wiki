# Resumen: Python Intermedio/Avanzado — Python Data Model, Dunder Methods

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-07-07-python-intermedio-avanzado-python-data-model-dunder-methods.md` (video en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «país donde gramos/python de gran modo»→Python Data Model, «don del metz/länder mets»→dunder methods, «rubén python de luciano ramala»→*Fluent Python* de Luciano Ramalho, «french gates/frames state»→FrenchDeck, «ley»→len, «r perrault/stro»→`__repr__`/`__str__`, «spai/fichero»→slicing) — https://www.youtube.com/watch?v=Ui5P5OzSwqw — Lazy Loading, 2021-07-07 (16:29). Primer video de la serie «Python Intermedio/Avanzado» del canal; recorre el capítulo 1 de *Fluent Python* (Luciano Ramalho), que el autor presenta como «el mejor libro sobre Python» para temas que los cursos no cubren.

## El Data Model como interfaz con el intérprete

El **Python Data Model** es el conjunto de protocolos que permite que los objetos propios se comuniquen con el lenguaje y aprovechen sus funcionalidades. Analogía del canal: Python funciona como un *framework* — uno no llama al intérprete, sino que escribe métodos que **el intérprete llama**. Esos métodos son los *dunder methods* (de «double under», por los dobles guiones bajos `__nombre__`; en PHP y Ruby se les llama «métodos mágicos`). Cubren iteración, colecciones, acceso a atributos, sobrecarga de operadores, invocación, representación/formateo y context managers. Regla de uso: no llamarlos explícitamente en el código (salvo metaprogramación); el caso más común de llamada explícita sigue siendo `len()` → `__len__`.

## Ejemplos sobre FrenchDeck (baraja española del libro)

- `__len__(self)` → devuelve el tamaño; habilita `len(deck)`.
- `__getitem__(self, pos)` → acceso por índice (`deck[-1]` da el as de corazones) y, automáticamente, **slicing** sin escribir código extra — implementar el protocolo da gratis las features del lenguaje.
- Reutilización de funciones estándar sobre el objeto propio: `random.choice(deck)` funciona sin crear una función propia.
- `__add__` y `__mul__` en una clase `Vector` (suma/multiplicación de componentes x/y): **sobrecarga de operadores**, destacada como concepto muy importante.

## Representación y veracidad

- `__repr__` vs `__str__`: ambos dan una representación en string; `repr` es interna/enfocada a desarrollo (terminal, debugging) y `str` al usuario final. Si solo se implementa uno, elegir `__repr__` — `str` cae por defecto en él. Convención: `NombreClase(atributo=...)`.
- `__bool__`: controla la veracidad del objeto en contextos booleanos. Orden de consulta del intérprete: `__bool__` primero; si no existe, `__len__` (≠0 es verdadero); si no existe ninguno, todo objeto definido por usuario es verdadero.

## Dónde encaja en la wiki

Serie «Python Intermedio/Avanzado» del canal (este video es la entrega 1; la siguiente anunciada es estructuras de datos). Es el plano de lenguaje que explica por qué funcionan las interfaces de las herramientas del dominio (iterables de PyMongo en [[resumen-mongodb-crash-course-with-python-2022]], cursores de la fuente 1); complementa la sintaxis elemental de [[resumen-python-3-receta-1-crear-variables-independientes]] (mismo bloque de lenguaje base del tramo).

---

**Ver también**: [[resumen-mongodb-crash-course-with-python-2022]] · [[resumen-python-3-receta-1-crear-variables-independientes]].
