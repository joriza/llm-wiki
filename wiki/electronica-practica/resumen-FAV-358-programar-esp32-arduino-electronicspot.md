# FAV-358 — Programar ESP32 con Arduino | Instalar Configurar ESP32 en Arduino

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=BQBFJ8qc3z4) · canal ElectronicSpot · 2023-10-12 · 07:43 · FAV-358
- **Transcripción**: `raw/electronica-practica/2023-10-12-programar-esp32-arduino-electronicspot.md`
- **Dominio**: electronica-practica/

## De qué va

Guía completa de puesta en marcha de una placa de desarrollo **ESP32 de 38 pines** desde Windows hasta cargar el primer programa en el IDE de Arduino:

- **Drivers CP2102**: Windows detecta el chip USB-serie CP2102 de la placa (convierte USB a serial) sin controlador (signo de admiración amarillo en el Administrador de dispositivos); instalación manual del driver Silicon Labs descargado (enlace tipo Pololu), para Windows/Mac/Linux, y asignación automática de puerto (COM4).
- **Paquete de placas ESP32**: en Arduino IDE, agregar la URL oficial de Espressif en Archivo → Preferencias → URLs adicionales de gestor de placas (separada por comas de otras), instalar desde el Gestor de placas y seleccionar la variante "ESP32 WROOM Module" en Herramientas → Placa y el puerto. Con esto aparecen ejemplos específicos (GPIO, WiFi, Bluetooth).
- **Primer programa — Blink**: ejemplo básico modificado para parpadear un LED externo en GPIO5 (ánodo al pin, cátodo a GND, sin resistencia mencionada — buen candidato a discusión).
- **Botón BOOT**: a diferencia de Arduino estándar, si la subida falla en "Conectando…" hay que mantener presionado el botón BOOT (modo de arranque que acepta programación) hasta que empiece la escritura de flash.

## Notas

- ASR con errores reconocibles: "expressive" = Espressif, "uasp" = USB, "celicon labs" = Silicon Labs; normalizado solo aquí.
- Cruces: ecosistema Arduino+ESP32 — [[resumen-FAV-357-nodemcu-esp8266-arduino-beeggle]] (misma mecánica de paquete de placas para ESP8266), [[resumen-FAV-359-de-arduino-a-esp32-iotlab]] (mismo tema de arranque con ESP32), [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia]].
