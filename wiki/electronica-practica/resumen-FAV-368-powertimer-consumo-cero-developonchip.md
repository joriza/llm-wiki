# FAV-368 — Cómo hacer que tus proyectos IoT duren AÑOS: powerTimer (Consumo Cero)

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=sy0iTkA_p64) · canal DevelopOnChip · 2026-04-12 · 07:57 · FAV-368
- **Transcripción**: `raw/electronica-practica/2026-04-12-powertimer-consumo-cero-developonchip.md`
- **Dominio**: electronica-practica/

## De qué va

Módulo open source «powerTimer» para gestionar la energía de un proyecto IoT a batería: en lugar del deep sleep nativo (los periféricos siguen drenando en reposo), corta físicamente la alimentación de todo el sistema y lo despierta por intervalos o eventos.

- **Arquitectura**: latch RS como memoria de estado físico (pulso SET alimenta la carga; el micro, al terminar, envía DONE a RESET y se corta su propia energía); RTC RV-3028 de ultrabajo consumo (45 nA, 1,1–5,5 V) despierta por interrupción y programa por I2C su próxima alarma antes de apagarse; puerta OR (con diodos) combina despertar por RTC, botón manual o eventos de sensores externos.
- **Diseño**: latch con transistores discretos y pasivos (control total de la corriente de fuga, reposo casi nulo, componentes baratos); PCB 24×35 mm de 2 capas priorizando soldadura a mano, vías reforzadas para hasta 1 A, leyendas y QR en la cara posterior. Fabricación: pasta + cama caliente (reflow) y retoques con soldador. Librería propia de Arduino para configurar timer/alarma/DONE en un par de líneas.
- **Medición** (con Power Profiler, resolución de nA): mismo proyecto (ESP32 + sensor + pantalla LVGL, ciclo de 60 s) — deep sleep nativo: 36,7 mA de media en reposo (la batería no aguanta ni un día); powerTimer: 50 nA en reposo → con batería de 1000 mAh y lectura cada hora, ~312 días de autonomía. La parte activa no cambia (~64 mA).
- **Alcance**: ideal para sensores ambientales y estaciones remotas; con despertares asíncronos frecuentes la evaluación cambia. Todo (PCB, firmware, ejemplos) en repositorio público.

## Notas

- Subtítulos manuales (es-ES); ASR de la transcripción: «Kicat»=KiCad, «SP32»=ESP32, «Jeep Slip»=deep sleep, «50 nampos»=50 nA; normalizado solo aquí.
- Cruces: el corte físico de energía complementa el deep sleep/ULP de [[resumen-FAV-362-arquitectura-esp32-bit-micro-lab]]; el latch con transistores discretos conecta con [[transistor-bjt]]; el flujo de diseño y fabricación (KiCad + reflow en cama caliente) enlaza con [[diseno-pcb-herramientas]] y [[fabricacion-casera-pcb]]. El RTC programado por I2C suma otra fuente al umbral ya registrado de I2C.
