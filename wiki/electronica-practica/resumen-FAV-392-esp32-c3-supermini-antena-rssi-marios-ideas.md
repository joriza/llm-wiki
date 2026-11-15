# ESP32-C3 SuperMini: modificación de antena y pruebas RSSI (follow-up)

**Fuente**: [ESP32-C3 Super Mini Follow-Up: Antenna Mods, RSSI Tests & Viewer Insights](https://www.youtube.com/watch?v=Vnm7jtjf0T4)
**Canal**: Mario's Ideas · **Publicado**: 2026-01-23 · **Duración**: 15:08 · **Idioma**: en (subs automáticos)
**Raw**: `raw/electronica-practica/2026-01-23-esp32-c3-supermini-antena-rssi-marios-ideas.md` (FAV-392, 2026-11-15)

## Qué cubre

Segunda parte del video de tips del ESP32-C3 SuperMini del mismo canal: revisa los 5 tips originales con aportes de los comentarios y profundiza en el problema de Wi-Fi: defecto de diseño de la antena (pegada al cristal), medición con **RSSI** y fixes de hardware (antenas improvisadas soldadas).

## Contenido técnico

- **GPIO extra del USB-C**: hack útil solo en protoboard, no para proyectos finales.
- **Delay en Serial (setup)**: 25 ms no basta; hacen falta **≥300 ms** para inicializar el monitor serial. `if (Serial)` no sirve en esta placa (es periférico USB nativo tipo Leonardo/Micro, no aplica aquí): `Serial.begin()` retorna inmediato. El autor defiende usar `millis()` en el loop y `delay()` solo en setup (una vez).
- **LED que parpadea con I2C**: el LED comparte GPIO8 con el bus I2C; la solución es mover el I2C a otros pines (ESP32 permite reasignar) o desoldar el LED SMD.
- **Carga por UART**: secuencia correcta de botones confirmada por los comentarios: mantener BOOT → pulsar y soltar RESET → soltar BOOT (modo programación); tras flashear, RESET para salir. UART necesita velocidad de subida reducida.
- **RSSI**: indica la potencia de la señal recibida en dBm (más cerca de 0 = mejor): −30 excelente, ~−60 fiable, −80 débil, −90 o menos muy pobre/inestable. Código: librería WiFi + `WiFi.RSSI()` en el loop cada 1 s; versión con OLED por I2C para medir sin laptop.
- **Diagnóstico**: incluso con el fix software (bajar potencia de transmisión), el módulo conecta mal o falla a 4-5 m del router, con resultados inconsistentes entre unidades. Causa (aportes de los comentarios): **defecto de diseño — la antena cerámica está demasiado cerca del cristal**, con interferencia al conectar.
- **Fix de hardware**: soldar hilo a la **antenna feed pad** (el otro extremo de la antena solo está fijado con soldadura). Probó: clip de acero recto vs en bobina (forma de muelle), y hilo de cobre. Resultado: la **bobina de cobre** mejoró drásticamente y estable incluso a 17 m con obstáculos; el acero siguió inestable; sin antena, sin conexión.
- **Conclusión**: en su proyecto la antena modificada choca con un condensador cercano → prefiere cambiar a otro módulo SuperMini con la antena bien diseñada (mismo pinout).

## Cruces

- Misma placa y banco de pruebas que [[resumen-FAV-360-esp32-c3-supermini-arduino-ide-surflaweb|ESP32-C3 Super Mini]] (FAV-360) y [[resumen-FAV-391-oled-i2c-vs-spi-marios-ideas|OLED I²C vs SPI]] (FAV-391, mismo canal Mario's Ideas y usa OLED I2C para medir).
- OLED por I2C como instrumento conecta con el clúster OLED ([[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla|FAV-382]], [[resumen-FAV-386-protocolo-i2c-maestro-esclavos-profe-garcia|FAV-386]]).
- La recomendación de usar `millis()` en vez de `delay()` anticapa el tema de [[resumen-FAV-394-millis-multitarea-arduinolover|millis() multitarea]] (FAV-394).
