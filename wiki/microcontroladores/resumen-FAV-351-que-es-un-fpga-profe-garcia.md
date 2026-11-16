# FAV-351 — ¿Qué es un FPGA? ¿Es el final de Arduino? (El profe García)

- **Fuente original**: `raw/microcontroladores/2018-08-15-que-es-un-fpga-profe-garcia.md` — https://www.youtube.com/watch?v=RYAk5bZtj4U — canal El profe García, 2018-08-15, 25:27, español (subs automáticos; `list=` de playlist ajena ignorado por regla S4).
- **Dominio**: `electronica-practica/`.

## Qué es

Explicación didáctica de las FPGA (arreglos de puertas lógicas programables): en lugar de programarse secuencialmente como un microcontrolador, se **configura** el cableado interno (bloques lógicos, flip-flops y matrices de switches) mediante un **bitstream**, generada desde una descripción en lenguaje HDL (Verilog). No es programación secuencial: es descripción de hardware.

## Ventajas frente a un microcontrolador

- **Paralelismo real**: cientos de circuitos funcionando simultáneamente (monitoreo de sensores en paralelo: automotriz, aeroespacial).
- **Velocidad**: trabajo por encima de 100 MHz; un Arduino a 16 MHz no se acerca.
- **Hardware configurable**: dentro de una FPGA puede configurarse un microcontrolador o microprocesador (incluso varios), y «actualizar hardware como si fuera software». La configuración del procesador del Apollo 11 está liberada y puede cargarse en una FPGA.

## Desventajas

- Herramientas de configuración históricamente cerradas por fabricante; costo elevado (Arduino <10 USD vs FPGA >30-50 USD).
- Curva de pensamiento distinta (HDL no es programar en Python).

## El ecossistema open source

- **Clifford Wolf** («icestorm»): tras ~3 años de ingeniería inversa con analizador lógico, liberó la cadena de síntesis (Yosys + IceStorm) para la Lattice iCE40.
- Sobre esa base, **Jesús Arroyo** creó **Icestudio** (diseño HDL con bloques visuales, vía plataforma Apio) y **Juan González** (Obi Juan) la placa **Alhambra**, 100 % compatible con Arduino (usa sus shields).
- Arduino respondió con el **Vidor 4000** (FPGA Intel/Microsemi Cyclone 10, 48-200 MHz, HDMI, todos los pines PWM) — sigue costoso (~49 €).
- Veredicto: no es el final de Arduino — precios y comunidad lo mantienen; FPGA y microcontroladores son complementarios.

## Cruces

- Contexto de hardware educativo y clúster de microcontroladores del dominio; complementa las comparativas de placas ([[resumen-FAV-349-pico-vs-arduino-nano]]) y la serie ESP32 del dominio.

- **Consolidación (2026-11-15): fuente de la entidad [[el-profe-garcia]].
