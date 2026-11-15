# FAV-473 — Cargar un programa en Arduino con LDmicro y Xloader (marco cruz)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=VcrODftwUFc) — Canal **marco cruz**, publicado 2018-10-15, 03:32, ES (subtítulos automáticos).
- **Raw**: `raw/electronica-practica/2026-11-15-cargar-programa-arduino-ldmicro-xloader-marco-cruz.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia).

## Flujo LDmicro → Xloader (programación sin código)

- **LDmicro** (lenguaje ladder para microcontroladores): en Configuración se selecciona la placa destino — aquí un **Arduino Mega 2560**. El programa se construye con **instrucciones** en lugar de código: un contacto (entrada digital) y un pin de salida.
- Cada elemento se **renombra** para que compile («encendido» la entrada, «foco» la salida) y con doble clic se asignan los pines físicos: entrada al pin 4, salida al pin 5.
- **Compilar** desde el menú archivo genera un archivo (p. ej. `foco.hex`) que se guarda en una carpeta.
- **Xloader**: herramienta de carga independiente del IDE de Arduino — se selecciona el archivo .hex, se elige el **device** (Mega 2560) y el puerto, y se carga. Con el hex en la placa, el programa funciona directamente.

## Valor

Muestra una vía **gráfica y sin C++** para programar Arduino (ladder + cargador de hex), útil como contraste con el flujo estándar IDE del clúster Arduino ([[resumen-FAV-467-programar-arduino-uno-desde-cero-cap2-johann-perez]], [[resumen-FAV-468-arduino-desde-cero-cap2-instalacion-ide-bitwise-ar]]) y afin al enfoque de herramientas alternativas del dominio. Canal marco cruz: 1 fuente (umbral no alcanzado).

## Notas

- Video breve de pantalla con narración pausada; ASR con errores («pad negra 2560» = Mega 2560, «there y» = dirección de carpeta) — normalizado solo aquí.
