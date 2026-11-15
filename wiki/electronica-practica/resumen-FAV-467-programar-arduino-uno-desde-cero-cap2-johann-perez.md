# FAV-467 — Cómo PROGRAMAR Arduino UNO desde CERO, Capítulo #02 (Johann Perez E)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=EEKMPT_YcTI) — Canal **Johann Perez E**, publicado 2021-02-05, 13:16, ES (subtítulos manuales).
- **Raw**: `raw/electronica-practica/2026-11-15-programar-arduino-uno-desde-cero-cap2-johann-perez.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia; `list=` de playlist propia ignorado por S4).

## Tour de la placa UNO

- **Conector USB**: carga programas y alimenta la tarjeta; el código corre en la placa sin necesitar el PC. **Jack de alimentación**: batería de 9 V para proyectos portables.
- **Botón de reset**: reinicia el programa desde el principio.
- **Pines digitales** (0-13): envían/reciben solo unos y ceros (encendido/apagado). **Pines analógicos** (A0-A5): solo lectura, pero capturan valores intermedios de una señal.
- **Alimentación**: 3.3 V y 5 V + dos GND (todo circuito debe cerrar a tierra).
- **Microcontrolador ATmega** (el «chip gigante»): el «Intel/AMD» de la placa — procesa, tiene la RAM y almacena el código.
- **LEDs**: de transferencia (parpadean al subir programas), de encendido, y uno ligado al **pin 13** — se enciende siempre que pase corriente por ese pin.

## Primer programa: parpadeo del LED del pin 13

- Estructura base del IDE: **`void setup()`** (corre una sola vez al inicio) y **`void loop()`** (se repite cíclicamente).
- `pinMode(13, OUTPUT)`: declara el pin como salida (constantes **en mayúsculas** — en minúscula el IDE no las reconoce).
- `digitalWrite(13, HIGH)` / `digitalWrite(13, LOW)`: encender/apagar. Convención **camelCase** para identificadores compuestos.
- Flujo: verificar/compilar → subir (seleccionar puerto, p. ej. «Arduino UNO en COM7») → los LEDs de transferencia parpadean y el código corre en la placa.
- Sin pausas, encendido y apagado se ejecutan miles de veces por segundo y el LED parece apagado: la solución es **`delay(1000)`** (milisegundos) tras cada estado. Bajar a 500/100 ms acelera el parpadeo.

## Ejercicio propuesto

Reducir el delay hasta encontrar el «número mágico» donde el ojo ya no percibe el parpadeo (límite de persistencia visual).

## Valor

Curso introductorio correcto y didáctico: útil como referencia de vocabulario de placa (digital vs analógico, camelCase, setup/loop). Complementa el clúster Arduino del dominio (p. ej. [[resumen-FAV-364-microcontroladores-industria-mito-tr3bol]] como contraste conceptual) y precede a [[resumen-FAV-468-arduino-desde-cero-cap2-primer-programa-ide]] (otro «capítulo 2» de otro curso, superponible — nota de contraste en ese resumen). Canal Johann Perez E: 1 fuente (umbral no alcanzado).

## Notas

- Título dice «Capítulo #02» pero el contenido es el primer programa; CTA del kit de Arduino en la descripción excluido de la síntesis.
