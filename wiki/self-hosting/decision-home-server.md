# Decisión: armar un home server (2026-11-24)

- **Tipo**: página de decisión (consulta archivada).
- **Dominio**: `self-hosting/`.
- **Origen**: consulta del usuario «Necesito información para armar un home server. Por ahora no tengo nada definido, luego le pasaré detalles para afinar el análisis» (2026-11-24). Compilada **únicamente desde la wiki** (modo consulta; sin leer `raw/` ni fuentes externas).
- **Estado**: **CERRADA 2026-11-24** — recomendación concreta emitida contra la especificación técnica del usuario (ver «Recomendación cerrada»).

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

## Recomendación cerrada (2026-11-24, contra la especificación del usuario)

**Spec recibida**: Dell Latitude E7470 (16 GB RAM, SSD 240 GB), 100 Mbps simétricos, **CGNAT** (sin port forwarding); requiere DNS filtrado local+externo (≤10 usuarios), archivos remotos + share público LAN + share privado oculto, multimedia transparente, automatización de torrents/series/subtítulos ES-LatAm, y despliegue agnóstico de apps web públicas (Python/Next.js/React/Go/Rust).

| Req | Recomendación | Base en la wiki |
|---|---|---|
| Base | Ubuntu Server LTS + **Docker Compose** (sin Proxmox: 1 equipo, sin RAM para sobrar; agnóstico por contenedor) | [[docker-homelab]], [[resumen-so-you-want-to-start-self-hosting-proxmox-tailscale]] |
| Panel | **CasaOS** primero, Portainer al crecer (progresión Enreta) | [[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]] |
| 3.1 DNS local | **Pi-hole** como DNS de la LAN | [[pi-hole]] (×3 guías) |
| 3.1 DNS externo (≤10) | Pi-hole vía **Tailscale** (tailnet privada de 10 nodos, DNS de la tailnet → Pi-hole) — sin puertos, sin IP pública | Tailscale en [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]] y [[resumen-so-you-want-to-start-self-hosting-proxmox-tailscale]] |
| 3.2 Archivos remotos | **Nextcloud** (clientes móvil/escritorio, usuarios autenticados) | Enreta — «el sustituto de Dropbox» |
| 3.2 Share público LAN | **Samba** anónimo (read-only recomendado); share privado como segundo share Samba no anunciado + ACL por usuario (oculto ≠ seguro solo por ocultamiento) | WL-734 (compartir archivos) — **ACL fina es laguna parcial de la wiki** |
| 3.3 Multimedia | **Jellyfin** (sin licencia, primera elección del corpus; servidor transparente para clientes LAN) | WL-617 (prefiere Jellyfin sobre Plex), [[resumen-WL734-nube-en-casa-nas-scpc]] (primer contenedor) |
| 3.4 Torrents/series/subs | **LAGUNA DE LA WIKI**: el corpus no cubre el stack de automatización de descargas (gestor torrent, monitoreo de series, subtítulos automáticos). No se recomienda por conocimiento externo (modo consulta): se propone ingesta de fuentes sobre ese stack antes de fijar componentes | — |
| 3.5 Apps web | Contenedor por app + **reverse proxy** (Nginx Proxy Manager o Traefik según comfort) expuesto por **Cloudflare Tunnel** (solo lectura, sin IP pública; el túnel resuelve el CGNAT) | NPM en catálogo 15; Traefik/Compose en Delalande/Dokploy ([[resumen-desplegar-apps-con-dokploy-nextgen]]) |
| CGNAT (todo lo externo) | **Tailscale** para privado (archivos, DNS de tailnet) + **Cloudflare Tunnel** para público (apps web). Sin port forwarding en ningún caso | Ambos cubiertos en el dominio |
| 240 GB SSD | SO+apps en el SSD; contenido multimedia en almacenamiento secundario (HDD externo o futura NAS — WL-734: precio/TB manda; «una NAS de 2.000 € para usarla como disco de red es un disco de red de 2.000 €»). Backups 3-2-1 obligatorios | WL-734, WL-617 |

**Advertencias del corpus aplicables**:
1. **Es una laptop**: «Raspberry sí, laptop no» (Felipe M.) — consumo 24/7 de una laptop vieja vs. mini PC eficiente; medir antes de decidir (WL-617 midió 70-90 €/año para una torre). La tapa cerrada y la batería son consideraciones prácticas fuera del corpus (verificar en las fuentes de ingesta propuestas).
2. Transcode multimedia: dimensionar por códecs (Pocho Labs) — con 100 Mbps y clientes LAN el transcoding pesado es improbable, pero verificar códecs del hardware.
3. Instalar servicios de a uno (conflictos de puertos) y documentar todo (WL-617).
4. Ahorro = no, soberanía = sí (WL-617) — el caso «10 usuarios DNS externos + apps públicas» es de los que mejor justifican el server.

**Lagunas de la wiki declaradas** (ingesta propuesta antes de implementar): stack de automatización de torrents/series/subtítulos (req 3.4), ACL fina de Samba, operación de laptop como servidor 24/7, comparativa Cloudflare Tunnel vs. alternativas para apps públicas.

## Pendientes originales (resueltas con la spec)

1. ~~Casos de uso~~ → DNS filtrado local/externo, archivos (público+privado), multimedia, torrents automatizados, apps web públicas.
2. ~~Hardware~~ → Dell Latitude E7470, 16 GB, SSD 240 GB (dedicado).
3. ~~Confort~~ → agnóstico/contenedores solicitado explícitamente.
4. ~~Acceso remoto~~ → CGNAT confirmado → Tailscale (privado) + Cloudflare Tunnel (público).

Con esos datos, esta página se actualiza con la recomendación concreta (equipo + SO + primer lote de servicios) y pasa a estado **cerrada**.

## Cruces

[[self-hosting]] (hub), [[docker-homelab]], [[pi-hole]], [[casaos]], [[proxmox-homelab]], [[resumen-WL617-servidor-casa-cancelado-pepotech]], [[resumen-WL734-nube-en-casa-nas-scpc]].
