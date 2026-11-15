# Resumen: Lenguaje escalera en Arduino con LDmicro y XLoader (Fernando Torres Ortiz)

- **Fuente**: `raw/electromecanica/2026-11-15-ldmicro-xloader-arduino.md` ([YouTube](https://www.youtube.com/watch?v=5bnanIe51QE), FAV-546, carpeta Electromecanica)
- **Canal**: Fernando Torres Ortiz
- **Publicado**: 2018-10-15 · **Duración**: 06:27 · **Recopilado**: 2026-11-15

## Qué cubre

Flujo completo **LDmicro → hex → XLoader → Arduino** — el «cómo se sube» que complementa la teoría de [[resumen-FAV-545-primeros-pasos-ldmicro]] y el caso especial bootloader de [[resumen-FAV-544-ldmicro-arduino-nano-bootloader]].

## Ideas clave

- **Dos herramientas**: **LDmicro** (editor ladder + compilador a hex, descarga directa) y **XLoader** (grabador del hex al Arduino, requiere descomprimir).
- **Flujo LDmicro**: seleccionar el micro según el Arduino (Arduino 1 aquí) → insertar contactos (tecla `c`, NA/NC/negado) y bobinas → **renombrar y asignar pines reales** (ej. entradas pines 2 y 5, salida pin 13) → **simular en tiempo real** (Ctrl+M, doble clic en entradas para cambiar estados) → **compilar a archivo .hex** (verificar la extensión o no funcionará).
- **Flujo XLoader**: elegir el archivo hex, el modelo de Arduino y el puerto COM → «Upload» con el Arduino conectado por USB (si no, error de puerto abierto).
- Ejemplo completo: dos entradas en serie (AND) con una negada, salida a bobina — verificado en simulación antes de compilar.

## Cruces

- **Umbral LDmicro/ladder** — tercera fuente del subclúster (FAV-544 bootloader, 545 teoría, 546 flujo de carga) junto al clúster PLC industrial (FAV-490..497) → concepto **PLC industrial vs ladder-hobby** candidato firme para consolidación.
- Bases: [[resumen-FAV-490-conceptos-basicos-plc]] (I/O y ciclo de escaneo que LDmicro implementa en el ATmega).

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[plc-relays-a-ladder]].
