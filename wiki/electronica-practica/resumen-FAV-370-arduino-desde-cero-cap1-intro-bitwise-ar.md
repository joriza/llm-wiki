# FAV-370 — Arduino desde cero, cap. 1: Introducción Arduino e inicio del curso

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=eBVvD85Ml2c) · canal Bitwise Ar · 2017-02-19 · 05:20 · FAV-370
- **Transcripción**: `raw/electronica-practica/2017-02-19-arduino-desde-cero-cap1-intro-bitwise-ar.md`
- **Dominio**: electronica-practica/

## De qué va

Capítulo de apertura del curso «Arduino desde cero en Español» (Bitwise Ar): qué es la plataforma y tour por la placa.

- **Concepto**: Arduino como «sentidos + cerebro» para interactuar con el mundo físico — sensores (luz, sonido, orientación, temperatura, humedad) como entradas; salidas para activar LEDs, motores DC/paso a paso, servos, pantallas LCD o comunicar con PC/móvil por Bluetooth. Simplicidad, bajo costo y comunidad activa; usado también en educación (programación y robótica).
- **Modelos**: hay varios (optimizados por espacio o por cantidad de E/S); el curso se centra en el **Uno** por ser el más usado y equilibrado en E/S y precio.
- **Tour de la placa**: conector USB (programación + alimentación, apta solo para bajo consumo porque drena de la PC), jack de alimentación externa (transformador DC o pilas), fila inferior Power (tensiones para dispositivos externos) + Analog In (6 entradas analógicas para sensores y componentes pasivos como potenciómetros), salidas digitales arriba (luces, motores, relés; algunas con **PWM** — modulación por ancho de pulso) y el microcontrolador como «cerebro» (procesador + memoria, ejecuta el programa).

## Notas

- ASR: «un cero una pantalla» = un servo, una pantalla; «modelo 1o» = Uno; normalizado solo aquí.
- Regla S4: el bookmark traía `list=` de la playlist del curso, ignorada — procesado solo este video.
- Cruces: mismo canal, curso al que pertenece el cap. 62 de [[resumen-FAV-369-fuente-protoboard-mb102-bitwise-ar]]; PWM relays/motores anticipan el control de potencia de [[resumen-FAV-366-reles-7-errores-diseno-tr3bol]]; la familia Uno/ATmega328P aparece en [[resumen-FAV-364-microcontroladores-industria-mito-tr3bol]]; introducción comparable a la migración Arduino→ESP32 de [[resumen-FAV-359-de-arduino-a-esp32-iotlab]].
