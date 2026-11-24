# WL-751 — Todas las aplicaciones que corro en mi SERVERS (Pelado Nerd)

- **Fuente original**: `raw/wl/tramo-106/2022-10-18-todas-las-aplicaciones-que-corro-en-mi-servers.md` ([YouTube](https://www.youtube.com/watch?v=tSS6U4Dsgo4))
- **Canal**: Pelado Nerd (7.ª fuente — [[pelado-nerd]]; la más antigua de la wiki, oct. 2022)
- **Publicado**: 2022-10-18 · **Duración**: 16:10 · **Idioma**: es-AR (ASR, garbiñeos normalizados aquí: "doctor compost" = Docker Compose; "darkness" = DuckDNS; "pythole/payhol" = Pi-hole; "tautuli" = Tautulli; "zamba" = Samba; "neta toc" = Netatalk; "flex get" = FlexGet)
- **Tramo**: 106 (relevo 2) · **Ingesta**: 2026-11-24
- **Nota**: video patrocinado por Platzi (Black Friday) — excluido de esta síntesis.

## Qué trata

Inventario completo (2022) de sus dos servidores caseros — Raspberry Pi 4 y Pi 3 — con el porqué de cada servicio. **Documento histórico clave del canal**: es el stack Flexget/YAML que el mismo autor migra al stack *arr en WL-750 (2026) — el antes y el después del mismo homelab, 4 años de distancia.

## Raspberry Pi 4 (el servidor principal)

- **Plex** (imagen de linuxserver — "jay moulin" del ASR es otra garbiñeo) con detalles de operador real: `/tmp` de transcode montado en disco (escribir la SD la rompe y es lenta), `/etc/localtime` para la zona horaria, y **modo host** para que el Chromecast no intente transcodificar por creerlo fuera de la LAN. Lecciones de las SD: ~500 días sin reiniciar (con UPS tras un corte) — todo en Docker Compose para poder re-levantar en una SD nueva sin drama.
- **DuckDNS**: DDNS que actualiza su subdominio cada 5 minutos.
- **Pi-hole**: DNS de casa para bloquear ads en TODOS los dispositivos (invitados incluidos); config en disco USB externo para portabilidad; cap `NET_ADMIN` para el DHCP.
- **Tautulli**: panel de estadísticas de Plex (quién mira qué, para la familia compartida).
- **Samba**: compartir archivos en LAN (los guarda en disco USB).
- **Transmission + FlexGet**: descarga automatizada — el corazón del video. Regla cada 30 min contra listas de series con filtros (no x265 por compatibilidad de TV, 720p, re-check de "proper" a las 12 h) y regla de borrado `remove` solo tras **compartir >100 %** (semilla completa antes de borrar). Script propio que ordena `series/nombre/temporada/` y **re-encodea EAC3→AC3 con ffmpeg** (el Chromecast no traga EAC3) usando `cp` en vez de `mv` para no cortar la compartición.
- **Netatalk**: Time Machine de macOS por WiFi sobre la Pi (en vez del aparato de Apple).
- **Home Assistant** (mención "primicia mundial", en fase temprana): domótica como **consolidador** — reglas cruzadas entre servicios (aire acondicionado según clima+hora, apagar luces cuando el teléfono se enchufa de madrugada = señal de dormir) en vez de 5 apps separadas.

## Raspberry Pi 3 (el servidor de redundancia)

- **Segundo Pi-hole**: redundancia DNS explícita y argumentada — "si se cae la Pi 4 me quedo sin DNS y en mi casa eso significa que no anda internet; yo lo puedo arreglar, mi familia no". Sin cluster: configuración igualada a mano.
- **CUPS**: impresora no-WiFi ("me ahorré 30 pesos") compartida en red para toda la casa (AirPrint parcial — iPhone no detecta, pendiente).
- Redundancia física también: Pi 4 por cable junto al router, Pi 3 por WiFi en otra habitación.

## Cruces

- **Par histórico con WL-750** ([[resumen-WL750-jellyfin-radarr-sonarr-pelado-nerd]]): 2022 = Plex + FlexGet (config YAML, scripts propios de re-encode); 2026 = Jellyfin + stack *arr ("dejar los archivos de configuración y pasar a base de datos"). Es exactamente el cambio de paradigma que WL-750 nombra, visto desde el lado viejo. Junto con WL-743 ([[resumen-WL743-servidor-multimedia-stack-arr-jonatan-castro]]), la wiki tiene el antes, el después y una réplica independiente.
- [[pi-hole]]: la redundancia de dos Pi-hole y el argumento familiar (los demás no pueden arreglarlo) es una lección operativa que la página no registraba.
- [[docker-homelab]] y [[self-hosting]] (dominio): Compose como estrategia de recuperación de SD; [[decision-home-server]] (Raspberry vs. NAS como presupuesto de entrada).
- Canal: [[pelado-nerd]] — 7.ª fuente; aquí en modo inventario-guía (2022), pre-sello de demo en vivo.
