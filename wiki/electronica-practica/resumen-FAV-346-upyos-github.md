# FAV-346 — rbenrax/upyOS: Sistema operativo flash modular tipo POSIX para microcontroladores (GitHub)

- **Fuente original**: fuente web no-YouTube (sin raw) — https://github.com/rbenrax/upyOS — repo oficial de upyOS (rbenrax).
- **Dominio**: `electronica-practica/`.

## Qué es

upyOS es un **sistema operativo flash modular para microcontroladores, basado en MicroPython**, que ofrece un **entorno tipo POSIX**: en lugar de grabar un programa monolítico, la placa queda con una base común de shell, ficheros y servicios sobre la que se montan programas modulares reutilizables. Prioriza flexibilidad y facilidad de uso por sobre rendimiento (adecuado para principiantes, prototipado rápido, educación y IoT/domótica).

## Características principales

- **Estructura Unix-like**: directorios `/bin`, `/etc`, `/lib`, `/libx`, `/opt`, `/tmp`, `/www`; arranque en `/etc/init.sh` y apagado en `/etc/end.sh` (editables para acelerar el boot o añadir servicios).
- **60+ comandos incorporados**: ls, cd, cp, mv, grep, ps, kill, wifi, gpio, etc. Configuración por placa en archivos `.board`.
- **Procesos y hilos**: ejecución en segundo plano (`&`), asyncio, control con `ps`/`kill`/`killall`/`hold`/`resume`/`wait`.
- **Shell con scripting**: condicionales `if`, bucles con etiquetas y `goto`, redirección (`>`, `>>`), variables de entorno (`export`/`echo`/`unset`), ejecución directa de código Python desde la shell.
- **Red**: gestión WiFi completa, servidores Telnet (`utelnetd`), FTP (`uftpd`) e HTTP (`uhttpd` — interfaz web «upyOS Desktop»), NTP, **actualización OTA desde GitHub** (`upgrade`), autenticación de usuario (contraseñas ahora cifradas — usar `setauth` tras actualizar), y soporte de módem **ESP-AT por UART** para MCUs sin WiFi (RP2040).
- **Hardware**: ESP32 (incl. C3 y S3), RP2040, ESP8266 (optimizado para poca RAM), NodeMCU.

## Instalación

Requiere MicroPython ya cargado en la placa (y `esptool` + `micropython-mpremote` en el PC): clonar el repo y copiar con `mpremote fs cp` los directorios del sistema más `main.py`; el modo recuperación cubre fallos de arranque. Desarrollo remoto por FTP+Telnet compatible con VS Code, Geany, Thonny e incluso apps Android (Termux, Serial WiFi Terminal).

## Relacionado

- Artículo de divulgación en español sobre el mismo sistema y su alimentación ininterrumpida: [[resumen-FAV-347-upyos-hwlibre-alimentacion]].
- MicroPython también es el eje del curso de Raspberry Pi Pico: [[resumen-FAV-348-pico-curso-micropython]].
