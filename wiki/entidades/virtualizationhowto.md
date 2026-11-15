# VirtualizationHowto

- **Tipo**: página de entidad (canal).
- **Dominio**: entidad global en `wiki/entidades/`; sus fuentes viven en `self-hosting/`.
- **Creada**: 2026-11-15 (consolidación final de la playlist self-hosting; umbral ≥2 fuentes cumplido).
- **Fuentes**: [[resumen-things-i-stopped-self-hosting-virtualizationhowto]] (2026-01-09, servicios que dejó de self-hostear) · [[resumen-15-docker-containers-home-lab-virtualizationhowto]] (2025-11-21, catálogo de 15 contenedores).

## El canal

**VirtualizationHowto** (Brandon Lee): canal en inglés de homelab y virtualización, centrado en el ecosistema Proxmox y Docker. En el corpus cubre los dos extremos del dominio self-hosting: el catálogo constructivo (qué contenedores suman al lab: monitoreo, DNS, backups, Git, proxy) y el contra-peso crítico (qué conviene NO self-hostear: email, DNS público, gestores de contraseñas — «tu home lab debe trabajar para ti, no al revés»).

## Coherencia interna entre sus dos fuentes

No se contradicen: el catálogo de 15 contenedores documenta la infraestructura núcleo que en el video de abandono declara seguir manteniendo con gusto (DNS interno, reverse proxies, monitoreo, backups, DevOps). Nótese la evolución interna: en el catálogo recomienda Bitwarden self-hosted; meses después mueve las contraseñas críticas a la nube por análisis riesgo/retorno — señalada en ambos resúmenes.

## Cruces

- Su crítica de la nube es el contra-punto directo de [[resumen-the-cloud-is-over-engineered-and-overpriced-tom-delalande]] (resuelta como no-contradicción en [[self-hosting]]).
- Su apuesta zero trust (Tailscale/Pangolin sin puertos abiertos) coincide con [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]] y la serie oficial de [[resumen-so-you-want-to-start-self-hosting-proxmox-tailscale]].
- El ecosistema Proxmox que representa está desarrollado en [[proxmox-homelab]] (`general/`).
