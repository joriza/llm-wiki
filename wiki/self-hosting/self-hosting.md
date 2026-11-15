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
