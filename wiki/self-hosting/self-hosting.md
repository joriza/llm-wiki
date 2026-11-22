# Self-hosting / Homelab

- **Tipo**: página-hub de dominio.
- **Dominio**: `self-hosting/`.
- **Creada**: 2026-11-15 (consolidación final de la playlist de 11 fuentes).
- **Fuentes**: las 11 del dominio — [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]], [[resumen-home-servers-en-2025-pocho-labs]], [[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]], [[resumen-servidor-casero-todo-en-uno-felipe-m]], [[resumen-como-instalar-pi-hole-en-casaos-bigbeartechworld]], [[resumen-bloquea-ads-malware-pi-hole-pelado-nerd]], [[resumen-so-you-want-to-start-self-hosting-proxmox-tailscale]], [[resumen-the-cloud-is-over-engineered-and-overpriced-tom-delalande]], [[resumen-things-i-stopped-self-hosting-virtualizationhowto]], [[resumen-15-docker-containers-home-lab-virtualizationhowto]], [[resumen-desplegar-apps-con-dokploy-nextgen]].
- **Ver también**: [[proxmox-homelab]] (`general/` — el hipervisor compartido con el dominio) y [[docker-homelab]] (la base transversal).

## El dominio en una línea

El homelab como infraestructura personal: hardware reciclado o mini-PC barato + software libre + despliegue por contenedores, con una crítica transversal a las suscripciones de nube — matizada por el contra-ejemplo de los servicios donde la nube ganó.

## Pilares

1. **Hardware y sistema operativo**: el rango va de la Raspberry Pi y el OptiPlex reciclado al mini-PC x86 refurb ([[resumen-home-servers-en-2025-pocho-labs]] dimensiona por caso de uso; [[resumen-so-you-want-to-start-self-hosting-proxmox-tailscale]] recomienda mini PC x86 sobre Pi). La taxonomía de SO por dificultad: CasaOS (fácil) → Unraid (intermedio) → TrueNAS/Proxmox (avanzado).
2. **Red y DNS**: [[pi-hole]] como bloqueo de ads/malware a nivel de red para todos los dispositivos; acceso remoto sin puertos abiertos vía Tailscale/Cloudflare Tunnel ([[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]], [[resumen-so-you-want-to-start-self-hosting-proxmox-tailscale]]).
3. **Despliegue**: [[docker-homelab]] como capa universal; paneles simples ([[casaos]], Portainer) como puerta de entrada, Dokploy como PaaS self-hosted sobre VPS ([[resumen-desplegar-apps-con-dokploy-nextgen]]).
4. **La frontera cloud/self-host** (la contradicción productiva del dominio): Delalande («la nube está sobre-ingenierizada y sobre-precificada» — self-host total para startups pequeñas, [[resumen-the-cloud-is-over-engineered-and-overpriced-tom-delalande]]) vs. VirtualizationHowto («servicios donde la nube ganó» — email, DNS público, gestores de contraseñas; self-hosting intencional, [[resumen-things-i-stopped-self-hosting-virtualizationhowto]]). **Criterio de resolución: no es contradicción dura** — difieren los servicios tratados (aplicaciones web vs. infraestructura crítica de entrega/seguridad) y el costo operacional tolerado (hobby con tiempo propio vs. lab que debe sobrevivir cortes y fallos). El patrón común es deliberar dónde self-hostear, no una respuesta fija.

## Criterios transversales del corpus

- **Hardware reciclado o de bajo consumo como puerta de entrada** (GCtech, Felipe M., Pocho Labs) — con el costo eléctrico 24/7 como límite honesto (Felipe M.: Raspberry sí, laptop no).
- **Ergonomía en gradiente**: panel simple primero (CasaOS), control fino después (Portainer), virtualización si hace falta (Proxmox) — la progresión recomendada por Enreta.
- **El lab debe trabajar para ti, no al revés** (VirtualizationHowto): el self-hosting como elección por servicio y por costo operacional.

## Actualización 2026-11-17 (consolidación T6, tramo 98)

WL-617 ([[resumen-WL617-servidor-casa-cancelado-pepotech]] — en `wl/`): el contrapeso honesto del homelabbing — seis lecciones (síndrome de Diógenes en Docker con regla «2-3 usos/semana o fuera», Jellyfin vs. Plex, Tailscale en vez de puertos abiertos, documentar lo que se toca, RAID ≠ backup con regla 3-2-1, costo eléctrico real 70-90 €/año de una torre vieja vs. mini PC 8.ª gen a 10-15 W) y veredicto «ahorro = no, soberanía = sí» — la contra-voz exacta de WL-200/299/330/339 del dominio, cierra el debate de la «contradicción productiva» con un criterio de decisión claro. Entidad nueva: [[pelado-nerd]] (4 fuentes, la 4.ª en wl/). Cruce: la RAM de WL-615 (tramo 98) es el precio del hardware del homelab.

## Actualización 2026-11-24 (consolidación T25, tramo 105)

WL-734 ([[resumen-WL734-nube-en-casa-nas-scpc]] — SCPC Informática, canal nuevo ×1, sin patrocinio ni afiliación: honestidad inusual): el NAS como «alquiler permanente de tus propios archivos» resuelto en casa — RAID ≠ backup con regla 3-2-1 (la misma lección de WL-617), marco de decisión honesto (qué conviene en nube y qué no) y demo punta a punta en Asustor con Jellyfin como primer contenedor Docker (la misma progresión ergonómica del dominio: panel simple primero). Refuerza el pilar 4 (crítica de la nube) con una voz que recomienda también dónde NO self-hostear.

## Actualización 2026-11-24 (consolidación T25, tramo 105)

WL-734 ([[resumen-WL734-nube-en-casa-nas-scpc]] — SCPC Informática, canal nuevo ×1, sin patrocinio ni afiliación: honestidad inusual): el NAS como «alquiler permanente de tus propios archivos» resuelto en casa — RAID ≠ backup con regla 3-2-1 (la misma lección de WL-617), marco de decisión honesto (qué conviene en nube y qué no) y demo punta a punta en Asustor con Jellyfin como primer contenedor Docker (la misma progresión ergonómica del dominio: panel simple primero). Refuerza el pilar 4 (crítica de la nube) con una voz que recomienda también dónde NO self-hostear.
