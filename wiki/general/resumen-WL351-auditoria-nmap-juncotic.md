# WL-351 — ¿Qué hay conectado en tu red? Auditoría práctica con Nmap

- **Fuente original**: `raw/general/2026-09-18-que-hay-conectado-en-tu-red-auditoria-practica-con-nmap.md` ([vídeo](https://www.youtube.com/watch?v=oGZQnexwp44))
- **Canal**: JuncoTIC (Diego)
- **Publicado**: 2026-09-18 · **Duración**: 27:12 · **Ingesta**: 2026-11-16 (tramo 54)
- **Tipo**: tutorial técnico (1.ª mano, demo en vivo)
- **Dominios destino propuestos (consolidación aplazada)**: general (seguridad/herramientas) o informatica-teoria

## Idea central

Auditoría práctica de una red local desde Linux con Nmap: descubrir qué equipos están activos, qué puertos tienen abiertos, qué aplicaciones y versiones atienden cada puerto y, en algunos casos, qué sistema operativo corre — con el objetivo doble de descartar intrusos y cerrar puertos innecesarios (cada puerto sin usar es una puerta potencial a una vulnerabilidad futura).

## Puntos clave

- **Cartografía previa** [01:10]: `ip a` (IP/segmento/broadcast), `ip r` (puerta de enlace) → segmento `192.168.100.0/24`.
- **Descubrimiento de hosts** [02:29]: `nmap -sn <segmento>` (sin escaneo de puertos) → 5 hosts; con `sudo` añade MAC y fabricante (Huawei = router, Hikvision = DVR de cámaras, Quanta = notebook Lenovo) — el fabricante de la tarjeta resuelve la identidad de equipos desconocidos.
- **Escaneo de puertos** [04:50]: SYN scan a los 65535 puertos del DVR → 80/443 (interfaz web), 554 RTSP (streaming de cámaras), 8000 (Hik-Connect), 7681 y 9010/9020 desconocidos (comunicación interna Hikvision); los estándares pueden estar reutilizados por el fabricante — no asumir el servicio por el número de puerto.
- **Detección de versiones** [06:34]: `-sV` — en el notebook Linux identifica OpenSSH 10.4p1 en Debian, verificado después con `dpkg -l | grep openssh`; explica el error «bad request» cuando Nmap prueba HTTP contra RTSP.
- **Comportamientos reveladores** [14:44]: `TCP wrapped` = handshake TCP completo que el servidor cierra de inmediato (comportamiento defensivo común); abierto vs filtered (firewall descarta sin responder); `-O` de SO por huellas (TTL de ping, firmas) con match inexacto y opción de reportar la firma a nmap.org.
- **Casos** [11:12]: el teléfono (vía Wi-Fi) con todos los puertos cerrados y detección de hardware wireless — patrón típico de smartphone/IoT; el router con 21/22/23/53/80 abiertos y varios filtered de fábrica; verificación de su resolver DNS por UDP 53 y zona inversa.
- **Anti-detección** [21:07]: timing templates `-T0..-T5` — más rápido = más detectable por IDS; doble uso legítimo: probar si el detector de intrusos propio funciona.
- **Recomendaciones de cierre** [22:18]: inventariar y banear equipos desconocidos; cerrar todo puerto innecesario en LAN empresarial/datacenter.
- Aviso explícito al inicio: solo en redes propias o con autorización — fines educativos.

## Evaluación

- Tutorial de 1.ª mano con demo real sobre su propia red (DVR Hikvision, router ISP Huawei, notebook, teléfono); explicaciones correctas de TCP/IP (handshake, TTL, filtered vs closed); la versión por defecto de puertos de Nmap («primeros 1000 o algo así») la deja él mismo sin confirmar — señalado honestamente.
- Sin patrocinio; cierre promocional del canal excluido.
- ASR garbiñeado: «IPA»→`ip a`, «NP1S0»→interfaz (enp1s0), «Salford» no aplica, «Snap» (puerto 22000)→Syncthing probable pero sin confirmar, no normalizado a nombre específico — normalizado solo donde seguro.

## Cruces

- Seguridad de red local afín a la pila self-hosting de WL-343 (Docker/Caddy/VPS: superficies expuestas) y a los montajes locales en capas de WL-147; auditoría de puertos como contraparte operativa de [[bases-de-datos]] no aplica — cruces naturales con temas infra (WL-334 FaaS/cloud); JuncoTIC 1.ª fuente (texto plano). Tema de tramo: tramo heterogéneo de demos y herramientas (Jev, Sheets, Gemini, YouMind, Nmap).
