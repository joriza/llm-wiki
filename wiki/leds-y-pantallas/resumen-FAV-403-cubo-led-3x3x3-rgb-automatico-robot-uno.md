# CUBO LED 3×3×3 con LEDs RGB automáticos (Robot UNO)

**Fuente**: [CUBO LED 3x3x3 muy facil de hacer || Leds RGB automáticos || [Explicado paso a paso]](https://www.youtube.com/watch?v=tItvqXAkzBk)
**Canal**: Robot UNO · **Publicado**: 2021-02-04 · **Duración**: 12:31 · **Idioma**: es (subs automáticos)
**Raw**: `raw/leds-y-pantallas/2021-02-04-cubo-led-3x3x3-rgb-automatico-robot-uno.md` (FAV-403, 2026-11-15)

*Nota*: el bookmark traía una playlist ajena (`list=`), ignorada según S4.

## Qué cubre

Montaje de un cubo LED 3×3×3 **sin microcontrolador**: usa LEDs RGB de color de cambio automático (circuito integrado interno) que solo necesitan alimentación, de modo que el cubo funciona conectado directamente a 9-12 V.

## Contenido técnico

- **LEDs RGB automáticos**: llevan un CI interno que cicla colores al alimentarlos con + y − (dos patas, frente a las 4 patas de un RGB clásico). Hay variantes de flash rápido y lento. Al arrancar, los LEDs van sincronizados y la fase se desincroniza con el tiempo → efecto multicolor aparentemente aleatorio.
- **Materiales**: 27 LEDs RGB automáticos (vendidos en bolsas de 25), 9 resistencias de **100 Ω**, plantilla de madera con 9 agujeros separados 2,5 cm, soldador, alambre, jack DC hembra en la base.
- **Construcción**: por capas — primero se sueldan los 9 negativos de cada capa entre sí (acortando antes la pata negativa de todos para evitar errores); luego se apilan las 3 capas y se sueldan los positivos en columnas con alambre. Resultado: 3 negativos (capas) unidos a un solo común + 9 salidas positivas.
- **Prueba de LEDs antes de soldar**: paso destacado — verificar cada LED del bol antes de soldarlo para no tener que re-soldar un defectuoso.
- **Base**: 10 agujeros para bajar las salidas; cada positivo pasa por una resistencia de 100 Ω hasta un positivo común; el negativo común va directo al jack. Alimentación con pila de 9 V o fuente de 9-12 V.

## Cruces

- Clúster cubos LED: [[resumen-FAV-402-cubo-led-3x3x3-muy-facil|cubo 3×3×3 con Arduino]] (FAV-402 — misma estructura columnas×capas, pero con multiplexado activo), [[resumen-FAV-398-cubo-led-conexion-pic-profe-garcia|cubo 4×4×4 al PIC]] (FAV-398).
- LED RGB controlado: cruce con [[resumen-FAV-393-controlador-led-ws2812-universal-esp32-c3-marios-ideas|WS2812]] (FAV-393 — LED direccionable con CI interno, análogo moderno de estos RGB automáticos).

- **Consolidación (2026-11-15): fuente del concepto [[cubos-matrices-led]].
