# FAV-350 — El primer juego con Raspberry Pi Pico: pantalla OLED y librerías (El profe García)

- **Fuente original**: `raw/electronica-practica/2021-03-22-pico-juego-oled-space-invaders.md` — https://www.youtube.com/watch?v=SavAmyic_J4 — canal El profe García, 2021-03-22, 08:05, español (subs automáticos). La URL lleva `list=` e `index=` de playlist ajena — procesado como video suelto (regla S4).
- **Dominio**: `electronica-practica/`.

## Qué es

Tutorial en MicroPython sobre Raspberry Pi Pico: instalar la librería de la **pantalla OLED SSD1306 (128×64)** desde el gestor de paquetes de Thonny, cablearla por I2C y correr un juego **Space Invaders** de la comunidad con un potenciómetro como control.

## Puntos clave

- **Instalación de librería**: en Thonny → Herramientas → Gestionar paquetes, buscar «ssd1306» (autor stefan/stephen — el paquete oficial de MicroPython); se instala en el filesystem de la Pico, carpeta `lib/`.
- **Cableado OLED**: VCC a 3.3 V (funciona también con 5 V; ojo con que algunos módulos invierten GND/VCC), SCL (señal de reloj) → GP7, SDA (dato) → GP6 — usa I2C**1** (GP6/GP7); para I2C0 sería GP8/GP9.
- **Código mínimo**: `machine.Pin`/`machine.I2C` + módulo `ssd1306`; crear el display con dimensiones 128×64 y el bus I2C, limpiar pantalla (fill 0), escribir texto con `text("...", x, y, 1)` en columna/fila dadas y **`show()` para desplegar** — sin show nada aparece.
- Error típico mostrado: excepción al correr sin la OLED bien conectada (cable levantado) — revisar el cableado antes de descargar.
- **El juego**: descarga el programa Space Invaders del video original de otro creador (enlace en la descripción), copiar el código completo en Thonny y ajustar el número de bus I2C de 0 a 1 (línea ~18) para su cableado; se añade un **potenciómetro en GP27** (con resistor a tierra y GP18, pull de su esquema) para mover el tanque.

## Relacionado

- Misma serie de favoritos: [[resumen-FAV-348-pico-curso-micropython]] (curso MicroPython) · [[resumen-FAV-349-pico-vs-arduino-nano]] (comparativa Pico/Nano).

- **Consolidación (2026-11-15): este resumen es fuente del concepto [[pantallas-oled]] (también [[i2c]]) y de la entidad [[el-profe-garcia]].
