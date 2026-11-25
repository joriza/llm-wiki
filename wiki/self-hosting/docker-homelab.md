# Docker en el homelab

- **Tipo**: página de concepto (transversal al dominio).
- **Dominio**: `self-hosting/`.
- **Creada**: 2026-11-15 (consolidación final de la playlist).
- **Fuentes que la tratan**: [[resumen-the-cloud-is-over-engineered-and-overpriced-tom-delalande]] (Docker/Compose como reemplazo directo de ECS/ALB) · [[resumen-15-docker-containers-home-lab-virtualizationhowto]] (catálogo de 15 contenedores) · [[resumen-desplegar-apps-con-dokploy-nextgen]] (Docker Swarm + Traefik bajo Dokploy) · [[resumen-servidor-casero-todo-en-uno-felipe-m]] (App Store de CasaOS + compose manual) · [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]] (CasaOS como interfaz sobre Docker) · [[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]] (apps de CasaOS desplegadas como contenedores) · [[resumen-como-instalar-pi-hole-en-casaos-bigbeartechworld]] (compose auditable para Pi-hole) · [[resumen-bloquea-ads-malware-pi-hole-pelado-nerd]] (Pi-hole como contenedor Docker) · [[resumen-WL769-14-apps-docker-danycode]] (WL-769 — catálogo 10/14 en español, serie partida en 2 partes, actualización 2026-11-24).
- **Ver también**: [[docker-homelab]] es complemento de [[proxmox-homelab]] (`general/`): hipervisor LXC/VM para infraestructura núcleo, Docker para aplicaciones.

## El concepto

**Docker como capa de despliegue universal del homelab**: toda la playlist lo asume sin discutirlo, sea sobre Raspberry Pi, mini-PC, VPS o dentro de un LXC de Proxmox. Aparece en tres niveles de abstracción:

1. **Un contenedor por servicio** (`docker run`, compose manual): Pi-hole, Plex, Immich, Nextcloud — el modo de las fuentes domésticas; los volúmenes montados en el host persisten la configuración entre reinicios.
2. **Compose como unidad de instalación**: el patrón «App Store a un clic o compose auditable importado» ([[resumen-como-instalar-pi-hole-en-casaos-bigbeartechworld]], [[resumen-servidor-casero-todo-en-uno-felipe-m]]); las advertencias comunes: conflictos de puertos entre apps que comparten la IP del host (Enreta: instalar de una en una) y versiones del catálogo no siempre al día.
3. **Docker como plataforma de producto**: Compose como orquestación de un solo nodo con Caddy y escalado progresivo (Delalande: contenedor → Compose → Swarm → Kubernetes solo si hace falta), y Dokploy construyendo un PaaS completo sobre Docker Swarm + Traefik.

## El gradiente de orquestación (criterio compartido)

Ninguna fuente del dominio defiende Kubernetes para un homelab pequeño; la coincidencia es **empezar por lo simple y subir solo cuando el problema real lo exija** — Delalande lo formula como principio («usar siempre la herramienta más simple que resuelva el problema»), Dokploy lo implementa (Swarm, no K8s), y el catálogo de VirtualizationHowto lo practica (Portainer/Komodo en vez de stacks complejos).
