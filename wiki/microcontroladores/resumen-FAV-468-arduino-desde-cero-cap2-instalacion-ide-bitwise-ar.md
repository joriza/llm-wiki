# FAV-468 — Arduino desde cero en Español, Capítulo 2: primer programa e instalación del IDE (Bitwise Ar)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=GUuWgk3dXd0) — Canal **Bitwise Ar**, publicado 2017-02-19, 15:36, ES (subtítulos automáticos).
- **Raw**: `raw/microcontroladores/2026-11-15-arduino-desde-cero-cap2-instalacion-ide-bitwise-ar.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia; `list=` de playlist propia ignorada por S4).

## Instalación del IDE

- Descarga desde **arduino.cc** → menú Software → Download → instalador según SO (Windows/Mac/Linux multiplataforma); página intermedia con opción de donación a la fundación o «Just Download».
- Instalador con opciones por defecto; paso clave: aceptar la instalación del **controlador USB** (sin él el PC no reconoce la placa). Al abrir por primera vez, el firewall de Windows pide permiso de acceso a internet (verificación de actualizaciones de librerías).

## Conexión y verificación de la placa

- Cable USB con extremo cuadrado hacia la placa (tiene posición, no forzar); LED verde **ON** encendido = placa alimentada.
- Menú **Herramientas → Placa**: «Arduino/Genuino Uno» seleccionado = placa reconocida; **Herramientas → Puerto**: COM4/COM5 típicamente (depende de los dispositivos conectados).

## Primer programa: blink del LED integrado (pin 13)

- Esqueleto escrito a mano desde cero (el vídeo pide tipearlo, no copiar/pegar): **`void setup()`** (una sola vez: inicialización) y **`void loop()`** (bucle indefinido).
- `pinMode(13, OUTPUT)` — el LED integrado cuelga internamente del pin 13. `digitalWrite(13, HIGH)` = 1 lógico = 5 V; `digitalWrite(13, LOW)` = 0 V. `delay(1000)` entre estados = parpadeo de 1 s.
- Detalles del editor: **case-sensitive** (las palabras reservadas cambian de color cuando el IDE las reconoce — una «m» minúscula en pinMode las vuelve negras), cierre automático de llaves, punto y coma obligatorio.
- **Comentarios** con `//` (línea gris): buena práctica documental para programas crecientes.
- Flujo completo: **Verificar** (compila, muestra recursos de memoria, sin subir a la placa; pide guardar el proyecto) → **Subir** (flecha contigua; parpadean los LEDs de transferencia y el programa corre por siempre mientras haya alimentación).

## Valor

Capítulo 2 del mismo curso [[resumen-FAV-370-arduino-desde-cero-cap1-intro-bitwise-ar]] (canal Bitwise Ar, que llega así a **4 fuentes**: FAV-369/370/371/468 — umbral ≥2 ya cumplido y canal ya con trayectoria en la wiki). Respecto de [[resumen-FAV-467-programar-arduino-uno-desde-cero-cap2-johann-perez]] (otro «capítulo 2» de otro curso, 2021): mismo programa blink y mismos conceptos setup/loop/pinMode/digitalWrite/delay; aportes diferenciales aquí: instalación del IDE y driver USB, selección de placa/puerto, comentarios y la señal de color del editor como feedback. El curso continúa en [[resumen-FAV-371-arduino-desde-cero-cap54-tft-ili9341-bitwise-ar]].

## Notas

- ASR: «pin Mode»/«digital Wi» = pinMode/digitalWrite; «pin 133» = pin 13; «Genuino» es la marca hermana histórica de Arduino.


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[bitwise-ar]].
