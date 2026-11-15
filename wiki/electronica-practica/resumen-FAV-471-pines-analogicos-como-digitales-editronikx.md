# FAV-471 — Curso de Arduino desde cero, Capítulo 12: pines analógicos como digitales (Editronikx)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ESoZxL9RTUA) — Canal **Editronikx** (ingeniero Edison Viveros), publicado 2014-11-22, 07:32, ES (subtítulos automáticos).
- **Raw**: `raw/electronica-practica/2026-11-15-pines-analogicos-como-digitales-editronikx.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia; `list=` de playlist propia ignorado por S4).

## La idea: ganar pines sin comprar otra placa

Cuando un proyecto necesita más salidas digitales de las que ofrece la placa (UNO/Leonardo: 0–13, menos 0 y 1 si se usa el serie), las alternativas son multiplexar, comprar un Mega o — tema de este capítulo — **configurar los pines analógicos como digitales**. A0–A5 equivalen internamente a los pines 14–19 (A0=14 … A5=19): el UNO los reconoce sin problema escritos como `14`…`19`, pero en el **Leonardo** esa numeración a veces falla, así que lo portable es llamarlos **A0, A1, …, A5** directamente en el código.

## Advertencia de mezcla

Usar el mismo pin como analógico en una parte del sketch y como digital en otra (p. ej. A0 como entrada analógica y A1–A5 como digitales a la vez) resultó **muy inestable** en la práctica del autor: mejor dedicar los pines a un solo uso dentro del programa.

## Demostración práctica

- Sketch de parpadeo con `pinMode` de los pines 13, A0 y A5 como `OUTPUT`, un `while(true)` que alterna HIGH/LOW entre ellos con `delay(300)`: blink de tres LEDs en secuencia.
- Montaje: 3 LEDs con resistencias de 300 Ω conectados a 13, A0 y A5; carga al IDE sobre un **Arduino Leonardo** (placa/puerto seleccionados) y verificación del parpadeo.
- Los mismos pines también sirven como **entrada digital** (lectura de un estado 0/1), no solo como salida.

## Valor

Tutorial corto y pragmático que resuelve un problema recurrente (falta de pines) sin hardware extra. Encaja en el clúster Arduino del dominio: complementa el tour de pines de [[resumen-FAV-467-programar-arduino-uno-desde-cero-cap2-johann-perez]] (que presenta digitales vs analógicos) y continúa el patrón de cursos por capítulos ([[resumen-FAV-468-arduino-desde-cero-cap2-instalacion-ide-bitwise-ar]], [[resumen-FAV-370-arduino-desde-cero-cap1-intro-bitwise-ar]]). Canal Editronikx: 1 fuente (umbral no alcanzado).

## Notas

- Subtítulos automáticos de 2014 con ASR mediocre («uino», «acer», «meja»); normalizado solo aquí.
- Ver también: [[resumen-FAV-470-sensor-distancia-hc-sr04-edgar-pons]], [[resumen-FAV-473-cargar-programa-arduino-ldmicro-xloader-marco-cruz]].
