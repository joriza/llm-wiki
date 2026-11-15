# Cubo LED 3×3×3 muy fácil de hacer (Muy Fácil De Hacer)

**Fuente**: [Cómo Hacer Cubo De LED 3x3x3 (muy fácil de hacer)](https://www.youtube.com/watch?v=rw2tA0LZgwY)
**Canal**: Muy Fácil De Hacer · **Publicado**: 2015-09-12 · **Duración**: 12:55 · **Idioma**: es (subs automáticos)
**Raw**: `raw/electronica-practica/2015-09-12-cubo-led-3x3x3-muy-facil.md` (FAV-402, 2026-11-15)

## Qué cubre

Montaje completo de un cubo LED 3×3×3 (27 LEDs, 3 niveles de 3×3) en dos protoboards con Arduino Uno, orientado a principiantes: estructura física, cableado de columnas y niveles con transistores, y carga del código de efectos.

## Contenido técnico

- **Materiales**: base de madera con 9 agujeros, 27 LEDs, Arduino Uno, 9 resistencias de 150 Ω (columnas), 3 resistencias de 10 kΩ (bases de transistores), 3 transistores **2N2222A** (niveles), 2 protoboards.
- **Construcción física**: los LEDs se insertan con el negativo (pata corta) hacia marcas en la madera; los negativos de cada nivel se doblan y sueldan entre sí; los positivos se doblan y se sueldan verticalmente nivel a nivel (positivo del nivel 1 al 2, y 2 al 3) → cada columna comparte ánodo a través de los tres pisos.
- **Verificación previa**: antes de seguir, se prueba cada nivel con fuente (negativo del nivel a GND, positivo tocando columnas).
- **Cableado**: las 9 columnas llegan a la protoboard vía 9 resistencias de 150 Ω; cada nivel conecta su negativo común al colector de un 2N2222A (emisor a tierra, base vía 10 kΩ). En el Arduino, las columnas van a los pines digitales **2–10** y las bases (niveles) a los pines **11–13**.
- **Software**: el código de efectos se descarga del enlace del video y se carga al Arduino; en el sketch importa una librería «cubo de LED 3x3x3» incluida en el paquete.

## Cruces

- Clúster cubos LED: [[resumen-FAV-398-cubo-led-conexion-pic-profe-garcia|cubo 4×4×4 al PIC]] (FAV-398 — mismo multiplexado columnas×niveles con 2N2222A), FAV-399/400 (8×8×8, SKIP montajes musicales).
- Transistores como conmutadores: [[transistor-bjt]].

- **Consolidación (2026-11-15): fuente del concepto [[cubos-matrices-led]].
