# FAV-470 — Sensor de distancia HC-SR04, curso Arduino desde cero cap. 15 (Edgar Pons)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Oq2r66TLxZs) — Canal **Edgar Pons**, publicado 2021-05-23, 18:45, ES (subtítulos automáticos).
- **Raw**: `raw/microcontroladores/2026-11-15-sensor-distancia-hc-sr04-edgar-pons.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia; `list=` de playlist propia ignorada por S4).

## Cómo funciona el HC-SR04

- Emisor + receptor de **ultrasonido**: el sensor emite 8 pulsos a **40 kHz**; al rebotar en un objeto, el tiempo de ida y vuelta + la velocidad del sonido dan la distancia. Más lejos → tarda más en rebotar.
- **Datasheet** (el «manual de instrucciones» del componente): alimentación 5 V (conectable directo al Arduino), frecuencia 40 kHz, **resolución 0,3 cm** (3 mm), ángulo de 15°, y el dato operativo clave: el pin **TRIG se activa con un pulso de 10 µs** (en el vídeo verbalizado como «10 milisegundos»; el estándar del HC-SR04 es 10 µs).
- **Advertencia práctica del autor**: los HC-SR04 son delicados y hay unidades defectuosas — compró tres modelos idénticos hasta que uno funcionó; si el tuyo no responde al código correcto, prueba otra unidad antes de culpar al código.

## El programa, sin librerías

- Existen librerías que resuelven todo, pero el capítulo las evita a propósito para entender el funcionamiento interno.
- **Pines**: TRIG → pin 9 (salida), ECHO → pin 8 (entrada); GND y VCC a 0/5 V. Son señales digitales (pulsos, unos y ceros) — no requieren pines PWM.
- **Variables**: `int trigger = 9; int eco = 8;` y `float` para tiempo y distancia (distancias fraccionarias, no enteros); declaración conjunta sin inicializar (`float tiempo, distancia;`).
- **`setup()`**: `Serial.begin(9600)` para ver datos en el monitor serie; `pinMode(trigger, OUTPUT)` y `pinMode(eco, INPUT)`.
- **Activación del sensor** en `loop()`: `digitalWrite(trigger, LOW)`, espera corta, `digitalWrite(trigger, HIGH)` 10 µs, `digitalWrite(trigger, LOW)` — exactamente el pulso que pide el datasheet.
- **Medición**: `pulseIn(eco, HIGH)` — espera un pulso y **mide su duración** (µs de ida y vuelta), guardado en la variable float.
- **Conversión a centímetros**: dividir el tiempo por 2 (solo interesa la ida) y dividir por **29,15** — la velocidad del sonido (343 m/s) expresada en cm/µs. Resultado: distancia en cm en el monitor serie.
- **Depuración vista en directo**: sin `delay` el monitor imprime un 0 intercalado (el bucle corre más rápido que el sensor) → `delay(100)` lo arregla; error de compilación por «falta un punto y coma» resuelto en pantalla.

## Aplicación: LED por proximidad

- `pinMode(led, OUTPUT)` con el **pin 13** (ya lleva resistencia integrada): `if (distancia < 10)` enciende el LED, si no lo apaga. Demostrado con LED externo: al acercar la mano el LED se enciende por debajo de 10 cm; bajar el delay a 10 ms hace la respuesta más rápida.
- Diagnóstico de sensores muertos: si el valor del monitor **no cambia** al mover la mano (con pines y código correctos), la unidad está defectuosa.

## Ejercicio propuesto

Montar **5 LEDs** en protoboard + el sensor: cuánto más cerca el objeto, más LEDs encendidos (medidor de distancia por escalones); opcionalmente representar la distancia gráficamente en el monitor serie con caracteres. Solución en la web del autor (no ver la solución antes de intentarlo).

## Valor

Tutorial bien construido: datasheet como método, matemática de la medición transparente (tiempo/2 ÷ 29,15) y diagnóstico de hardware honesto. Complementa el clúster Arduino del dominio; cruza con [[resumen-FAV-371-arduino-desde-cero-cap54-tft-ili9341-bitwise-ar]] (otro capítulo avanzado de curso largo) y con la línea de sensores de la wiki. Canal Edgar Pons: 1 fuente (umbral no alcanzado).

## Notas

- ASR: «hc que se r 04» = HC-SR04; «otros sonidos» = ultrasonidos; «40 gigahercios» = 40 kHz; «pulso de 10 milisegundos» — el estándar del HC-SR04 es 10 µs (discrepancia del guion señalada); «vfc» = VCC. CTA de redes excluido.
