# FAV-331 — Community Scripts / ProxmoxVE (repositorio GitHub)

- **Bookmark**: `https://github.com/community-scripts/ProxmoxVE` (fuente web, favoritos Chrome — z-tmp/Proxmox)
- **Fecha de ingesta**: 2026-11-15
- **Dominio**: `general/` (herramientas; cruza con informatica-teoria/)

## Qué es

Repositorio canónico de **scripts de instalación en un comando** para servicios, contenedores (LXC) y VMs sobre Proxmox VE. Es un proyecto comunitario construido sobre el trabajo original de **tteck**. Licencia MIT.

## Qué ofrece

- **Más de 700 scripts de aplicaciones**: home automation (Home Assistant), media (Jellyfin), networking (Nginx Proxy Manager), bases de datos, monitorización, seguridad y herramientas de desarrollo.
- **Motor compartido**: cada script solo describe *qué* instalar; la creación del contenedor, las preguntas interactivas y el manejo de errores los resuelve el motor común del repo `community-scripts/core`, que todos los scripts cargan al arrancar.
- **Portabilidad**: los mismos scripts corren sin cambios sobre un host Incus (repo `community-scripts/Incus`).
- **Sitio web** con los comandos listos: community-scripts.org (ver [[resumen-FAV-329-proxmox-post-pve-install]] para la rutina post-install).

## Flujo de uso

1. Buscar el servicio en el sitio, copiar el comando de una línea, pegarlo en la shell del host Proxmox.
2. Modo **Default** (recursos sensatos, preguntas mínimas) o **Advanced** (ajustes de contenedor, red, storage y opciones antes de crear).
3. Cada contenedor queda con un comando `update` interno que actualiza la aplicación (los scripts de VM no: usan el gestor de paquetes del invitado).

Requisitos: Proxmox VE 8.0–8.4 o 9.0–9.2, acceso root al host. Los comandos corren como root: el propio README recomienda leer el script fuente (todo es legible y cada página enlaza a su origen) antes de pegarlo.
