# Alto Evolucionario

- **Tipo**: página de entidad (canal).
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-15 (consolidación de la ventana Vs + Docencia T4 — umbral ≥2 verificado por conteo real; candidata registrada desde el relevo 2).
- **Fuentes**: [[resumen-FAV-415-deauther-wifi-esp32-alto-evolucionario]] (ESP32 Deauther: PMKID/handshake) · [[resumen-FAV-416-wipwn-deauther-esp8266-alto-evolucionario]] (Wi-PWN ESP8266).
- **Ver también**: [[deauther-wifi-ofensivo]] — sus dos fuentes son el corazón técnico del clúster.

## Identidad

**Alto Evolucionario** — canal en español de seguridad ofensiva casera con placas de desarrollo (tutorial paso a paso, 21-28 min). Marco ético explícito en ambas fuentes: herramienta de prueba sobre redes propias o autorizadas; el deauth como DoS conocido útil para auditar qué dispositivos siguen siendo vulnerables.

## Sello observado en sus fuentes

- **Dos generaciones del mismo ataque** (FAV-416 → FAV-415): primero Wi-PWN sobre ESP8266 (app Android, control básico), luego el salto al ESP32 Deauther (dual-core 240 MHz, PMKID + handshake WPA2, dos rutas de instalación: compilar con ESP-IDF o flashear binarios con Flash Download Tool) — el canal documenta su propia evolución de herramienta («WiPa» → ESP32).
- **Guía de flasheo como contenido principal**: menuconfig, bootloader/particiones/app, método UART y pulsador BOOT — la mitad del video es puesta en marcha, no ataque.

## Notas

- Nombres garbiñados potenciales del ASR en ambas fuentes («DuIT ESP32 Kit» ≈ DJIT/DOIT ESP32 Kit) — normalizados con incertidumbre señalada.
