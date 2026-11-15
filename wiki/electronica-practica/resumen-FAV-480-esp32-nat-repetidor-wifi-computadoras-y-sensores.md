# FAV-480 — ESP32 como NAT y repetidor WiFi (Computadoras y Sensores)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=1vbkmLB4Tr8) — Canal **Computadoras y Sensores** (Carlos), publicado 2024-08-17, 15:17, ES (subtítulos automáticos).
- **Raw**: `raw/electronica-practica/2026-11-15-esp32-nat-repetidor-wifi-alcance.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia).

## Qué construye

Un **router/extensor NAT** con ESP32: traducción de direcciones de red (enmascaramiento de IP) que asigna direcciones privadas tras una única IP de salida. Sirve para **extender el alcance** del router del proveedor o para **aislar dispositivos** (capa extra de seguridad — el NAT es la base conceptual de una VPN). Mismo tema que [[resumen-FAV-474-repetidor-wifi-esp32-extensor-alcance-computadoras-y-sensores]] (mismo canal), aquí con otro firmware y guía dual Linux/Windows.

## Firmware y modelos

- Firmware de terceros muy documentado en GitHub, disponible solo para **ESP32-C3, C6, S2 y Solo** (sin S3 ni ESP8266). La guía flashea un **ESP32-C3** (RISC-V — el canal ya tocó la arquitectura en su cap. 62 con el C3).

## Instalación (dos vías)

- **Linux**: `esptool write_flash 0x0 <firmware>.bin` (detección automática del modelo; flasheo ~17 s).
- **Windows**: binarios del GitHub + **Flash Download Tool 3.9.7** de Espressif: chip ESP32-C3, modo develop, **erase** previo de la flash, firmware en posición **0x0**, SPI 40 MHz / DIO, velocidad de subida hasta 921.600 baudios. Driver CP210x (Silicon Labs) si el puerto COM no aparece.

## Configuración y verificación

- Tras flashear, el ESP32 queda como **AP abierto**: conexión desde móvil o PC y entrada a la IP fija de configuración (**192.168.42.1** según el ASR; posiblemente 192.168.4.x — la página es `login.htm`): crear contraseña del AP (mín. 8 caracteres, Apply, reinicio), conectar el cliente al WiFi origen desde la propia página de configuración, y listo.
- **Test de velocidad**: ~14,6 Mbps desde móvil (Linux Mint) y hasta ~17,15 Mbps desde Windows — el cuello de botella es el propio ESP32, no la conexión.

## Valor

Segunda toma del canal sobre el tema, complementaria a FAV-474: otro firmware (con erase previo y puesta a punto distinta) y comparativa de flasheo Linux vs Windows dentro del clúster ESP32-WiFi del dominio. Canal Computadoras y Sensores: 2 fuentes (FAV-474/480) → entidad candidata para consolidación diferida (umbral ≥2 cumplido, deferida).


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[computadoras-y-sensores]].
