# FAV-330 — Contenedores LXC imprescindibles en Proxmox

- **Origen**: «NECESITAS estos contenedores LXC en Proxmox» — Barmine Tech — `https://www.youtube.com/watch?v=oyhDFjplC18` (17:04, inglés, subtítulos automáticos; transcripción en `raw/general/raw-oyhDFjplC18.md`)
- **Fecha de ingesta**: 2026-11-15
- **Dominio**: `general/` (herramientas homelab; cruza con informatica-teoria/ y el clúster Proxmox)

## Qué es

Recorrido del canal **Barmine Tech** (guía para principiantes de Proxmox) por los contenedores **LXC** que considera imprescindibles en cualquier homelab. Casi todos se instalan con una sola línea desde los **Proxmox Helper Scripts** (proyecto comunitario, ver [[resumen-FAV-331-proxmoxve-community-scripts]]; el post-install previo se cubre en [[resumen-FAV-329-proxmox-post-pve-install]]). Su homelab corre sobre un mini-PC HP EliteDesk 800 G4.

## Los contenedores recomendados

### Almacenamiento y credenciales

- **Vaultwarden** [02:30] — bifurcación ligera de Bitwarden: gestor de contraseñas autoalojado (contraseñas, notas seguras, tarjetas). Apps móviles y extensiones de navegador con memoria local para no perder acceso fuera de casa; requiere HTTPS (de ahí el NPM abajo).

### Red

- **Pi-hole** [03:52] — DNS sinkhole: bloquea publicidad, sitios maliciosos y contenido filtrable. Él corre **dos instancias** porque su router acepta varios DNS (redundancia).
- **MySpeed** [04:32] — monitor de velocidad de internet con histórico y UI: detecta throttling del ISP y sirve de línea base para diagnosticar («¿la red lenta es nuestra o del proveedor?»). Lo usa incluso en el trabajo.
- **Uptime Kuma** [05:36] — monitor de disponibilidad ligero: pings a servidores/hardware, chequeo de puertos, dashboard con gráficas y alertas a Discord cuando algo cae. Imprescindible cuando acumulas servicios.
- **Nginx Proxy Manager (NPM)** [07:06] — proxy inverso con UI: aplica certificados SSL de Let's Encrypt a servicios internos que exigen HTTPS (Vaultwarden), eliminando los avisos de seguridad.
- **Cloudflared** [12:36] — túnel de salida de Cloudflare: expone servicios del homelab de forma segura sin abrir puertos; pensado para tráfico web (puertos 80/443), ideal para compartir Overseerr o Immich con amigos.

### Portal y multimedia

- **Homepage** [08:06] — dashboard de portada configurable por YAML: útil pero tedioso (le tomó ~4 horas); alternativa más simple: **Homer**.
- **Tautulli** [09:27] — estadísticas de un servidor Plex: quién mira qué, duración, rendimiento del servidor.
- **Overseerr** (aún en Docker para él) [10:27] — sistema de peticiones para usuarios de Plex: corta el ida y vuelta de «¿puedes poner tal película?» con notificaciones por Discord.

### Fotos y monitoreo de hardware

- **Immich** [11:25] — nube de fotos autoalojada (alternativa a iCloud/Google Photos/Amazon Photos), con app móvil y respaldo automático; recién incorporado a los Helper Scripts (desde mayo).
- **Beszel** [13:38] — monitoreo de hardware (uso, temperaturas en máquinas físicas) con agentes en VMs, contenedores y máquinas Linux/Windows; UI moderna. Ojo: se escribe «Beszel», no «Bessel».

### Administración remota

- **Apache Guacamole** [14:33] — gestor remoto accesible por navegador: centraliza SSH, VNC y Escritorio Remoto; evita recordar IPs/puertos o mantener 25 sesiones en PuTTY.

## Ideas transversales

1. Todo se despliega con los **Helper Scripts** (instalación de un comando), no a mano — por eso el post-install de [[resumen-FAV-329-proxmox-post-pve-install]] es el paso previo natural.
2. Patrones de red recurrentes: sinkhole (Pi-hole) + monitoreo (MySpeed, Uptime Kuma, Beszel) + proxy inverso con SSL (NPM) + túnel de salida (Cloudflared).
3. LXC vs Docker: el autor corre casi todo como LXC, con excepciones puntuales que todavía mantiene en Docker (Overseerr antes de migrar).
