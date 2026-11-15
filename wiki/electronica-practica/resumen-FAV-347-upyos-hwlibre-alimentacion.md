# FAV-347 — upyOS en microcontroladores: qué es, cómo funciona y cómo alimentarlo sin cortes (Hardware Libre)

- **Fuente original**: fuente web no-YouTube (sin raw) — https://www.hwlibre.com/upyos-en-microcontroladores-que-es-como-funciona-y-como-alimentarlo-sin-cortes/ — Isaac, Hardware Libre.
- **Dominio**: `electronica-practica/`.

## Qué es upyOS (según el artículo)

Capa ligera tipo «sistema operativo» **sobre MicroPython**: un runtime estructurado que añade servicios de sistema (tareas cooperativas, timers, eventos, drivers de periféricos, arranque ordenado de servicios en boot, logs con niveles, reconexión de red) para que las aplicaciones IoT sean mantenibles y reutilizables entre placas (ESP32, STM32, RP2040). Se diferencia de un RTOS clásico (FreeRTOS) en que favorece la simplicidad y la programación en Python, con planificación cooperativa en lugar de apropiativa — suficiente para telemetría y automatización ligera, donde el tiempo real duro rara vez es necesario.

Módulos típicos: planificador de micro-tareas, gestión de dispositivos (I2C/SPI/UART, GPIO, PWM), red (WiFi, sockets, MQTT con reconexión automática y credenciales persistentes), almacenamiento (LittleFS/FAT, configuración al arranque) y servicios de boot con diagnóstico mínimo (p. ej., parpadeo de LED ante fallo).

## La otra mitad del artículo: alimentación ininterrumpida

El título confunde upyOS con UPS/SAI — el artículo lo reconoce y aprovecha para incluir una guía de **alimentación ininterrumpida** para placas como ESP32, STM32 o Arduino: de nada sirve un buen runtime si el sistema se apaga ante un corte.

- **Tipos de SAI/UPS**: off-line (conmutación al corte), línea interactiva (regulación de tensión con AVR) y on-line (doble conversión, para cargas sensibles o críticas); elegir según criticidad.
- **Receta práctica**: respaldo con **batería 18650 + módulo de carga** (con protección) bien dimensionado para mantener el dispositivo vivo ante microcortes.
- Consejo general: combinar la robustez del software (upyOS) con un respaldo eléctrico adecuado.

## Valoración

Artículo de divulgación en español, más útil como introducción conceptual que como documentación técnica (describe upyOS de forma genérica; para detalles concretos, el repo: [[resumen-FAV-346-upyos-github]]).

## Relacionado

- [[resumen-FAV-346-upyos-github]] (repo oficial, características reales).
- El eje alimentación empalma con el clúster de fuentes conmutadas del dominio: [[fuente-conmutada-led]].
