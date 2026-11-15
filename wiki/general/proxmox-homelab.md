# Proxmox homelab

- **Tipo**: página de concepto.
- **Dominio**: `general` (infraestructura de laboratorio casero; candidato a dominio propio si entra más material).
- **Creada**: 2026-11-15 (consolidación diferida de la ventana z-tmp de favoritos; clúster de 4 fuentes).
- **Fuentes**: [[resumen-FAV-331-proxmoxve-community-scripts]] (el repo: 700+ scripts de instalación de un comando) · [[resumen-FAV-329-proxmox-post-pve-install]] (el script post-instalación: repos, fuentes, nag, update) · [[resumen-FAV-332-proxmox-vmware-instalacion]] (instalación virtualizada con virtualización anidada) · [[resumen-FAV-330-contenedores-lxc-proxmox]] (los 12 LXC imprescindibles vía Helper Scripts).
- **Ver también**: [[bateria-de-arena]] (dominio `casa-calefaccion` — otro pilar del homelab DIY). **Dominio `self-hosting/`** (consolidación 2026-11-15): las apps que Helper Scripts instala con un comando son las mismas piezas del dominio — véanse [[self-hosting]] (hub), [[docker-homelab]], [[pi-hole]], [[casaos]] y [[virtualizationhowto]] (canal del ecosistema Proxmox).

## El concepto

**Proxmox VE como base del homelab barato**: hipervisor libre que corre VMs y contenedores LXC en mini-PCs de segunda mano, con la **Community Scripts** como capa de ergonomía (instalar Vaultwarden, Pi-hole, Immich, Uptime Kuma o Nginx Proxy Manager con un comando en vez de recetas manuales).

El flujo canónico que documentan las cuatro fuentes, en orden:

1. **Instalar** — bare metal o virtualizado (FAV-332: ISO oficial, ≥4 GB RAM, red en puente, VT-x/EPT anidado obligatorio si va dentro de VMware; acceso por `:8006`).
2. **Ajustar** — post-install (FAV-329): repos enterprise → no-subscription/test, fuentes Debian, quitar nag, update + reboot.
3. **Cargar** — Helper Scripts (FAV-331/330): LXC por catálogo; el top práctico: Vaultwarden (contraseñas), Pi-hole (DNS), Uptime Kuma (monitoreo), NPM + Cloudflared (acceso y túneles), Immich (fotos), Beszel, Guacamole.

**Cruce de dominios**: el mismo patrón «hardware barato + software libre + scripts comunitarios» que el corpus documenta en casa-calefaccion (energía/calefacción DIY) — el homelab es su vertiente informática.
