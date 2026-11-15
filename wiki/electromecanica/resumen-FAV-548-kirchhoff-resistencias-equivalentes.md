# Resumen: Leyes de Kirchhoff y resistencias equivalentes (El Traductor de Ingeniería)

- **Fuente**: `raw/electromecanica/2026-11-15-kirchhoff-resistencias-equivalentes.md` ([YouTube](https://www.youtube.com/watch?v=btrxWydp4ag), FAV-548, carpeta Electromecanica)
- **Canal**: El Traductor de Ingeniería
- **Publicado**: 2025-07-27 · **Duración**: 34:46 · **Recopilado**: 2026-11-15

## Qué cubre

Clase 2 de un curso de teoría de circuitos: **deducción (no memorización)** de las leyes de Kirchhoff y de las resistencias equivalentes serie/paralelo, con ejemplo numérico completo y la solución al clásico problema de las corrientes negativas. Único tema de teoría pura de la carpeta (complemento de [[resumen-FAV-547]]).

## Ideas clave

- **Método del canal**: derivar cada fórmula desde la ley de Ohm en lugar de memorizarla — «alejarse de la mediocridad de memorizar».
- **Kirchhoff de corrientes (nodos)**: la corriente que llega a un nodo **se divide** (no «dobla») — suma de las que entran = suma de las que salen. De ahí, sustituyendo cada I_i por UF/R_i y sacando factor común, se **deduce la resistencia equivalente en paralelo**: el circuito con N resistores produce la misma corriente que uno solo de valor 1/(Σ1/R_i). «Equivalente» = produce el mismo efecto (misma corriente).
- **Kirchhoff de tensiones (lazos)**: recorrer un camino cerrado sumando tensiones da 0 (analogía de Bariloche: campo conservativo, «todo lo que sube baja»); convención práctica: anotar **el primer signo** con el que se encuentra cada elemento al recorrer. Serie = división de tensión; sustituyendo U_i = I·R_i queda la **R equivalente serie = suma**.
- **Cuándo hay serie/paralelo de verdad**: serie = **comparten la misma corriente** (un solo camino, sin derivaciones en el medio); paralelo = **conectados extremo con extremo, misma tensión**. Ejemplo trampa: en un circuito mixto solo R5-R6 estaban en serie aunque «parecía» que había seis.
- **Nivel pro**: tensión entre dos puntos sin camino físico cerrado (el multímetro cierra el lazo — 10 MΩ); cálculo de todas las corrientes de un circuito mixto (10 V, R_eq 40 Ω → I1 0,25 A, I2 2 A, I 2,25 A) y la regla de oro de los signos: **si marcaste la flecha al revés, respetala hasta el final** — un signo negativo solo significa que la corriente va al revés de lo dibujado; cambiar la marca a mitad de camino vuelve todo inconsistente.

## Cruces

- **Umbral Kirchhoff: única fuente procesada del subtema** (FAV-547 NO-SUBS) — teoría base que unifica la carpeta: reactancia de [[resumen-FAV-504-fuente-capacitiva-sin-transformador]], divisor del TL494 de [[resumen-FAV-505-cargador-baterias-fuente-pc]], regla serie/paralelo de [[resumen-FAV-529-serie-o-paralelo-paneles-solares]], caída de tensión de [[resumen-FAV-498-factor-de-potencia]].
- Canal El Traductor de Ingeniería: 1ª fuente (curso de 6 clases) → candidato a entidad si reaparece.

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[serie-componentes-basicos]], [[energias-renovables]].
