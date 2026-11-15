# Resumen: Python 3 - Receta 1: Crear Variables Independientes para Cada Elemento de una Secuencia

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2019-03-01-python-3-receta-1-crear-variables-independientes-para-cada-elemento-de-una-secue.md` (video en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «dupla»→tupla, «payton»→Python) — https://www.youtube.com/watch?v=LDuT9l7nTBs — Ingeniero John Ortiz Ordóñez, 2019-03-01 (02:37). Primera entrega de la serie «recetas» de Python 3 del canal.

## La técnica: desempaquetado (unpacking)

Asignación múltiple: declarar varias variables a la izquierda del `=` y una secuencia a la derecha; Python asigna cada elemento por posición. Ejemplos del video:

- **Tupla**: `a, b = (1, 3)` — también escrita sin paréntesis.
- **Lista**: `a, b, c, d = ["python", 3, (2, 3), "p"]` — funciona igual con contenido mixto, aunque el video señala que lo habitual es que todos los elementos compartan tipo.

Los nombres de las variables son arbitrarios; la correspondencia es estrictamente por orden. La misma mecánica aplica a cualquier secuencia (listas, tuplas, «cualquier elemento que represente una estructura de datos»).

## Dónde encaja en la wiki

Pieza elemental de sintaxis del lenguaje: es el mismo mecanismo de asignación por desempaquetado que subyace a los valores de retorno múltiple de las funciones de [[resumen-videotutorial-8-taller-practico-funciones-modulos-y-paquetes]] (módulos y funciones del taller). Es la primera fuente de la serie «recetas Python 3» de este canal; las recetas siguientes del tramo deberán cablearse aquí como serie.

---

**Ver también**: [[resumen-videotutorial-8-taller-practico-funciones-modulos-y-paquetes]].
