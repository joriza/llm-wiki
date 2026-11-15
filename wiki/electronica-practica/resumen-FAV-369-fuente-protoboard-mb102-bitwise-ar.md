# FAV-369 — Fuente de protoboard Arduino y electrónica MB102 (Arduino desde cero, cap. 62)

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=tznNsm4ep8k) · canal Bitwise Ar · 2020-10-17 · 10:23 · FAV-369
- **Transcripción**: `raw/electronica-practica/2020-10-17-fuente-protoboard-mb102-bitwise-ar.md`
- **Dominio**: electronica-practica/

## De qué va

Análisis del módulo fuente MB102 para protoboard (cap. 62 del curso «Arduino desde cero» de Bitwise Ar): componentes, esquemático y formas de uso.

- **Componentes**: jack de alimentación (mismo que el Arduino Uno, entrada no regulada 6,5–12 V de fuente de pared o baterías), interruptor, diodo de protección de polaridad inversa, LED de encendido, puerto USB y dos reguladores lineales — 5 V y 3,3 V, hasta 700 mA cada uno (el PCB actúa de disipador: los 700 mA solo por períodos cortos; en la práctica no pasar de ~500 mA).
- **Rieles independientes**: jumpers amarillos por riel de protoboard — posición 5 V, OFF (riel inhibido) o 3,3 V; configuración usual: un riel a 5 V y otro a 3,3 V para proyectos con dispositivos de ambos niveles (ej. el nRF24L01+ del cap. 51). 8 pines macho dan 5 V y 3,3 V siempre presentes (independientes de los jumpers) para cargas con conector Dupont; fila inferior de 4 pines de referencia (2×GND, 2×3,3 V, 2×5 V).
- **Puerto USB**: como salida entrega los 5 V regulados (alimentación de un Arduino Nano u otros dispositivos fuera de la protoboard); como entrada solo acepta 5 V regulados (salta el regulador de 5 V) — nunca tensión superior, y nunca a la vez que el jack.
- **Uso recomendado**: verificar con multímetro la tensión de cada riel antes de conectar el proyecto; reutilizar fuentes de pared viejas dentro del rango 6,5–12 V (~1 A basta).

## Notas

- ASR: «700.000 jumper / mil jumper» = 700 mA / mA, «33 volts» = 3,3 V, «proto guard» = protoboard, «sounders» = jumpers; normalizado solo aquí.
- Cruces: los reguladores lineales y su disipación complementan las fuentes conmutadas de [[resumen-FAV-008-foco-led-fuente-conmutada-jwb1981-electrotube]], [[resumen-FAV-009-foco-led-fuente-conmutada-bp2861-electrotube]] y [[resumen-FAV-316-fuente-conmutada-oscilando]]; alimentación de un Arduino suma contexto al curso de Arduino ([[resumen-FAV-364-microcontroladores-industria-mito-tr3bol]] discute Uno/Nano como misma familia ATmega328P). Curso del mismo canal: el cap. 1 (FAV-370, fila siguiente de la cola).


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[bitwise-ar]].
