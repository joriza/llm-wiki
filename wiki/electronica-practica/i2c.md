# I2C (bus de dos hilos para periféricos)

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-15 (consolidación diferida de la ventana IOT Gral — umbral ≥2 alcanzado con 5 fuentes nucleares + cruces).
- **Fuentes nucleares**: [[resumen-FAV-386-protocolo-i2c-maestro-esclavos-profe-garcia]] (El profe García — **monográfica del protocolo**) · [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla]] · [[resumen-FAV-383-oled-vs-lcd-profe-garcia]] · [[resumen-FAV-385-pinout-arduino-nano-pcbasic]] (pines A4/A5) · [[resumen-FAV-391-oled-i2c-vs-spi-marios-ideas]] (direcciones, velocidades). Cruce aplicado: [[resumen-FAV-396-pantallas-oled-arduino-librerias-demmake]] (I2C scanner); uso extendido: [[resumen-FAV-354-sensores-4-20ma-esp32-tr3bol]] (ADS1115/TCA9548A), [[resumen-FAV-363-pinout-esp32-s3-bit-micro-lab]].
- **Ver también**: [[pantallas-oled]] (la aplicación dominante del bus en la wiki).

## El concepto

**I²C (Inter-Integrated Circuit)** es el bus serie de dos hilos — SCL (reloj) + SDA (dato) — que el dominio usa para conectar OLED, RTC y ADC externos al micro con un maestro que direcciona varios esclavos.

Lo documentado por las fuentes:

1. **Topología maestro/esclavos** (FAV-386): el maestro inicia toda comunicación; cada esclavo tiene **dirección de 7 bits** (OLED típica 0x3C/0x3D, RTC DS3231 0x68) — sin CS físico: la selección es por dirección, y los no direccionados quedan en alta impedancia (FAV-391).
2. **Pines por placa**: Uno/Nano → A4 (SDA) / A5 (SCL); Mega → 20/21; ESP32-C3 SuperMini → GPIO8/GPIO9; Pico → GP6/GP7 o GP8/GP9 (dos buses configurables).
3. **Velocidades**: estándar 100 kHz, fast 400 kHz (algunas pantallas 1 MHz) — frente a los 4-10 MHz de SPI, con overhead adicional de start/dirección/ACK/stop por el mismo cable (FAV-391).
4. **Código**: librería `Wire` en Arduino (sin declarar pines; pasar dirección al driver); `machine.I2C` en MicroPython (el bus se elige por número).
5. **Diagnóstico**: si un dispositivo no responde, lo primero es verificar la dirección (0x3C vs 0x3D) y pasar un **I2C scanner** (FAV-396); el orden/serigrafiado de VCC/GND/SDA/SCL varía entre módulos (FAV-382/383).
6. **Expansión**: multiplexor TCA9548A y ADC externo ADS1115 para saltar las limitaciones del ADC interno del ESP32 (FAV-354).
7. **Cuándo no**: para refrescos rápidos de pantalla completa o muchos dispositivos rápidos, SPI gana (FAV-391).

## Notas

- El bus aparece transversalmente también en [[ia-en-mcu]] (la OLED de FAV-410) y en el clúster de [[pantallas-oled]], su aplicación dominante.
