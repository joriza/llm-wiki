# Decisión: armar un home server (2026-11-24)

- **Tipo**: página de decisión (consulta archivada).
- **Dominio**: `self-hosting/`.
- **Origen**: consulta del usuario «Necesito información para armar un home server. Por ahora no tengo nada definido, luego le pasaré detalles para afinar el análisis» (2026-11-24). Compilada **únicamente desde la wiki** (modo consulta; sin leer `raw/` ni fuentes externas).
- **Estado**: **abierta** — faltan los datos del usuario para cerrar la recomendación (ver «Pendientes»).

## Marco de decisión (consolidado del corpus)

### Eje 1 — Hardware: reciclar vs. mini-PC, dimensionado por caso de uso

| Caso de uso | Exigencia | Hardware sugerido por las fuentes |
|---|---|---|
| VPN, gestor de claves, web ligera, Pi-hole | Baja | Raspberry Pi 4/5, mini-PC N100 |
| Fotos/archivos (Immich, Nextcloud) | Media | Mini-PC x86 de 8.ª gen+, 4–8 GB RAM, SSD para apps + HDD para datos |
| Multimedia con transcode (Jellyfin/Plex) | Alta | CPU con códecs modernos (Quick Sync), RAM folgada |

- Fuentes: [[resumen-home-servers-en-2025-pocho-labs]] (dimensionamiento y taxonomía), [[resumen-so-you-want-to-start-self-hosting-proxmox-tailscale]] (mini PC x86 sobre Raspberry si va a crecer), [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]] (OptiPlex reciclado).
- **Límite honesto**: consumo 24/7. Torre vieja ≈ 70-90 €/año vs. mini PC 8.ª gen a 10-15 W ([[resumen-WL617-servidor-casa-cancelado-pepotech]]). «Raspberry sí, laptop no» ([[resumen-servidor-casero-todo-en-uno-felipe-m]]).

### Eje 2 — Sistema operativo: gradiente por dificultad

**Fácil** (CasaOS/Cosmos/Umbrel) → **Intermedio** (Unraid, pago 49+ USD, discos de distinto tamaño + paridad) → **Avanzado** (TrueNAS/OMV como NAS puro; Proxmox como hipervisor LXC/VM para labs robustos).

Consenso del corpus: **empezar por lo simple y subir solo cuando el problema real lo exija** ([[self-hosting]], [[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]]). Proxmox solo si se quieren servicios aislados: [[proxmox-homelab]], guías FAV-329..332.

### Eje 3 — Despliegue: Docker como capa universal

Un contenedor por servicio; compose auditable o app store; volúmenes en el host. Sin Kubernetes para homelab chico ([[docker-homelab]]). Advertencias: conflictos de puertos (instalar de a una), catálogos desactualizados.

### Eje 4 — Red y acceso remoto

- Pi-hole como bloqueo de red ([[pi-hole]]).
- **Tailscale o Cloudflare Tunnel** para acceso remoto sin puertos abiertos (resuelve CGNAT); UFW como complemento.
- IP fija por reserva DHCP en el router.

### Eje 5 — Qué self-hostear y qué no

- Sí: Immich, Nextcloud, Jellyfin/Plex, Bitwarden (evaluando disponibilidad), VPN propia, Pi-hole.
- No (consenso contra-voz): email, DNS público, lo que deba sobrevivir cortes sin administración ([[resumen-things-i-stopped-self-hosting-virtualizationhowto]]).
- Criterio transversal: *«el lab debe trabajar para ti, no al revés»*; veredicto WL-617: **«ahorro = no, soberanía = sí»**.
- **RAID ≠ backup**: regla 3-2-1 obligatoria (WL-617, [[resumen-WL734-nube-en-casa-nas-scpc]]).

## Pendientes para cerrar la recomendación

1. Casos de uso principales (multimedia / fotos / archivos / web / IA local).
2. Hardware disponible para reciclar (o presupuesto) y su generación.
3. Confort con Linux/Docker vs. preferencia por panel gráfico.
4. Acceso remoto: solo LAN o desde afuera; CGNAT del ISP.

Con esos datos, esta página se actualiza con la recomendación concreta (equipo + SO + primer lote de servicios) y pasa a estado **cerrada**.

## Cruces

[[self-hosting]] (hub), [[docker-homelab]], [[pi-hole]], [[casaos]], [[proxmox-homelab]], [[resumen-WL617-servidor-casa-cancelado-pepotech]], [[resumen-WL734-nube-en-casa-nas-scpc]].
