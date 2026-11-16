# Matriz LED sin controlador con Arduino (deMMake)

**Fuente**: [👾 Matriz LED Sin Controlador - Arduino - Conexion y Codigo](https://www.youtube.com/watch?v=_vqPmitnlxA)
**Canal**: deMMake · **Publicado**: 2019-02-20 · **Duración**: 19:59 · **Idioma**: es (subs automáticos)
**Raw**: `raw/electronica-practica/2019-02-20-matriz-led-sin-controlador-arduino-demmake.md` (FAV-397, 2026-11-15)

## Qué cubre

Manejo de una matriz LED 8×8 **sin controlador** (sin MAX7219 ni similar), conectada directamente a 16 pines del Arduino: multiplexado por filas y columnas con software puro, dibujo de caracteres con matrices de bits y animación por frames.

## Contenido técnico

- **Conexión**: 16 pines (8 filas + 8 columnas) del Arduino Uno — incluye los analógicos A2-A5, que en el código son 16-19. El pin 1 de la matriz se identifica con el datasheet del fabricante. El orden físico del cableado es irrelevante: la correspondencia fila/columna↔pin se declara en el `setup` mediante dos vectores (`fila[]`, `columna[]`).
- **Funcionamiento interno**: cada LED se enciende polarizando su fila y su columna (la polaridad alta/baja depende del modelo de matriz — ánodo/cátodo común). **Problema fantasma**: al polarizar dos filas y dos columnas se encienden los 4 LEDs de las intersecciones (la matriz no distingue dirección) → solución: **multiplexado**, encender las filas alternadamente con un pequeño delay (~2 ms por fila); la persistencia visual hace ver la imagen completa.
- **Software paso a paso**:
  1. `digitalWrite` de todas las columnas al nivel "apagado" (alto en su matriz, porque los diodos no conducen con ese nivel).
  2. Un LED = fila en nivel activo + columna en nivel activo-bajo (LOW enciende en su modelo).
  3. Caracteres como **vector de bits** (0/1 por columna) y luego como **matriz 8×8** (`caracter[8][8]`) recorrida con doble `for` (i filas, j columnas — pide indexar desde 0).
  4. Al terminar cada fila: apagarla y esperar el delay antes de pasar a la siguiente.
  5. Refactor a una función `dibujar(char, matriz)` para reutilizar.
- **Animación**: frames como matrices sucesivas (demo con **Space Invader**, 2 frames) y un contador de tiempo en el loop con variable `velocidadAnimacion` (~20 ciclos por frame) para alternar frames; reset del contador al terminar la secuencia. El autor reconoce que es una forma "tosca pero rápida" de animar.

## Cruces

- Mismo canal: [[resumen-FAV-396-pantallas-oled-arduino-librerias-demmake|Pantallas OLED librerías/ejemplos]] (FAV-396).
- Matrices LED con controlador/WS2812: [[resumen-FAV-393-controlador-led-ws2812-universal-esp32-c3-marios-ideas|controlador WS2812 universal]] (FAV-393), [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia|pantalla 16×16 WS2812B]] (FAV-375).
- Cubos LED (misma técnica de multiplexado por filas/capas): [[resumen-FAV-398-cubo-led-conexion-pic-profe-garcia|cubo LED al PIC paso a paso]] (FAV-398), [[resumen-FAV-399-big-led-cube-8x8x8|big 8x8x8 cube]] (FAV-399), [[resumen-FAV-400-led-cube-8x8x8-at-home|8x8x8 cube at home]] (FAV-400).

- **Consolidación (2026-11-15): fuente principal de [[cubos-matrices-led]] y de la entidad [[demmake]].
