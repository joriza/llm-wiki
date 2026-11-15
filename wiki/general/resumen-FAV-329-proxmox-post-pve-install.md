# FAV-329 — Proxmox VE Post Install (Community Scripts)

- **Bookmark**: `https://community-scripts.github.io/ProxmoxVE/scripts?id=post-pve-install` (fuente web, favoritos Chrome — z-tmp/Proxmox)
- **Fecha de ingesta**: 2026-11-15
- **Dominio**: `general/` (herramientas; cruza con informatica-teoria/)

## Qué es

Página del script **Proxmox VE Post Install** (`post-pve-install.sh`) del proyecto Community Scripts (heredero del trabajo de tteck), dentro del catálogo web de scripts de ayuda para Proxmox VE e Incus (LXC). Es la página exacta que el usuario tenía anclada en favoritos.

## Qué hace el script

Se ejecuta en la shell del host Proxmox y ofrece opciones para:

- Gestionar repositorios: deshabilitar el **Enterprise Repo**, agregar o corregir las fuentes PVE, habilitar el repo **No-Subscription** y agregar el repo **Test**.
- Deshabilitar el aviso («nag») de suscripción.
- Actualizar Proxmox VE y reiniciar el sistema al final.

Notas del propio catálogo: ejecutar desde la shell de Proxmox; se recomienda responder «yes» (y) a todas las opciones durante el proceso.

## Contexto

Es la rutina de post-instalación canónica del ecosistema (la variante equivalente para Proxmox Datacenter Manager, `pdm`, corrige también las fuentes Debian y gestiona `pdm-enterprise`/`pdm-no-subscription`/`pdm-test`). El catálogo completo se describe en [[resumen-FAV-331-proxmoxve-community-scripts]] y la base teórica de virtualización/contenedores vive en informatica-teoria/.
