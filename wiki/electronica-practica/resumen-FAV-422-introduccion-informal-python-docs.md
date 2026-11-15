# FAV-422 — Una introducción informal a Python (documentación oficial)

- **Fuente**: [docs.python.org/es/dev/tutorial/introduction.html](https://docs.python.org/es/dev/tutorial/introduction.html) — documentación oficial de Python (tutorial, cap. 3), versión dev (3.15/3.16). Web leída directo, sin raw.
- **Tipo**: página de documentación tutorial (no video).
- **Nota de dominio**: fuente claramente de INFORMÁTICA — **candidata a dominio informatica** (junto a FAV-413, FAV-419, FAV-420). Residenciada en `electronica-practica/` por defecto de la ventana, sin crear dominio.

## Qué es

Capítulo 3 del tutorial oficial de Python: un paseo interactivo por el intérprete usando Python como calculadora y presentando los tipos fundamentales del lenguaje. Todo se muestra en el REPL con prompts `>>>` y ejemplos ejecutables.

## Contenido clave

### Uso como calculadora (números)
- Operadores aritméticos básicos `+ - * /`, paréntesis para agrupar; la división `/` **siempre** devuelve `float`; `//` es división entera (floor) y `%` el resto.
- Potencias con `**`; enteros `int` vs flotantes `float`; soporte también de `Decimal`, `Fraction` y complejos con sufijo `j` (`3+5j`).
- Asignación con `=` sin eco; variable no definida → `NameError`.
- En modo interactivo, `_` guarda la última expresión impresa (solo lectura por convención).

### Texto (`str`)
- Comillas simples o dobles equivalentes; escape con `\` o alternar comillas; `print()` produce salida legible interpretando `\n`, `\t`.
- Cadenas crudas con `r'...'` (ojo: no pueden terminar en número impar de backslashes).
- Literales multilínea con triple comilla `"""..."""`.
- Concatenación con `+`, repetición con `*`; literales adyacentes se concatenan automáticamente (solo literales, no variables).
- Indexación desde 0, índices negativos desde el final; **slicing** `s[i:j]` con inicio incluido y fin excluido (`s[:i] + s[i:] == s`); índices fuera de rango en slice se recortan sin error.
- **Inmutabilidad**: asignar a una posición de una cadena da `TypeError`; hay que construir una nueva. `len()` para longitud.

### Listas (tipos compuestos)
- Lista = valores separados por coma entre corchetes, admite tipos mezclados.
- Indexable y rebanable como las cadenas; concatenable con `+`.
- A diferencia de `str`, las listas son **mutables**: se puede reasignar un elemento (`cubes[3] = 64`).

### Primeros pasos hacia la programación (cierre del capítulo)
- El capítulo termina introduciendo control de flujo (`if`, `for`, `range()`), definición de funciones con `def`, y el ejemplo clásico de la serie de Fibonacci como primer programa real.

## Cruces

- FAV-423 (pip vs alternativas) y FAV-424 (APIs de Python): fuentes Python vecinas en la cola de la subcarpeta Informatica/Python.
- FAV-419 / FAV-420: ecosistema Python aplicado a IA (LangChain/RAG, proxy de APIs) — Python como lenguaje vehicular de la wiki de IA.

## Umbrales

- Subcarpeta **Informatica/Python** acumula fuentes: con FAV-423/424 procesadas la temática Python alcanza 3 — anotado en Log, sin páginas nuevas.
