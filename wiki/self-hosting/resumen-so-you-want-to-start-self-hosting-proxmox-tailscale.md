# Resumen: So, you want to start self-hosting? Part 1 - How to install Proxmox and pick your hardware

- **Fuente**: raw/self-hosting/2025-05-21-so-you-want-to-start-self-hosting-part-1-how-to-install-proxmox-and-pick-your-ha.md ([video](https://www.youtube.com/watch?v=zngSuqCM4d8))
- **Canal**: Tailscale
- **Publicado**: 2025-05-21
- **Idioma**: inglés (subtítulos manuales)
- **Duración**: 20:13

## Idea central

Primera parte de la serie de introducción al self-hosting de Tailscale: elegir hardware adecuado para un homelab económico e instalar Proxmox VE como hipervisor base, sobre el que el resto de la serie montará apps self-hosted (Immich, Jellyfin/Plex, Home Assistant) accesibles desde fuera de casa por Tailscale.

## Puntos clave

- **Hardware: mini PC x86 en vez de Raspberry Pi**: una Raspberry Pi 4 es lenta, comparte ancho de banda entre USB y Ethernet, dificulta conectar discos y tiene la RAM soldada; además un kit de Pi 5 ronda los 130 USD. La alternativa propuesta es un PC de formato de 1 litro (Dell OptiPlex micro refurb, ~150 USD): x86 completo, ampliable (SSD SATA hasta varios TB, dos DIMM de 16 GB = 32 GB de RAM — útil para los modelos de ML de Immich), y diseñado para mantenimiento sin herramientas.
- **Preparación de la instalación**: descargar la ISO de Proxmox y flashearla a USB con Balena Etcher (macOS/Linux) o Rufus (Windows). Para operar el servidor sin monitor dedicado usa un JetKVM (teclado/vídeo/ratón emulados sobre la red, con HDMI y USB al equipo).
- **Red**: switch gestionado (Ubiquiti en el video, con VLANs; un switch no gestionado barato también sirve). Explica fundamentos: el gateway es el firewall/router (típicamente 192.168.1.1 o .254) y suele ser también el servidor DNS y DHCP; el rango DHCP de ejemplo va de .6 a .254. Proxmox necesita IP estática configurada fuera del rango DHCP (usa 192.168.1.10).
- **Instalación de Proxmox**: asistente gráfico, instalación sobre el NVMe (el SSD SATA queda para datos), FQDN, contraseña, e-mail para alertas e interfaz de red. Tras instalar: acceso por SSH como root y panel web en `https://<ip>:8006` (certificado autofirmado, aviso esperable).
- **Post-instalación**: script comunitario "Proxmox VE post install" (helperscripts.com) para corregir los repositorios enterprise (que exigen suscripción — se recomienda apoyar el proyecto si se le saca provecho), desactivar el aviso de suscripción, corregir fuentes de Ceph y desactivar HA (innecesario con un solo nodo). Después, `apt update` + upgrade para poner el sistema al día (incluye kernel nuevo) y reiniciar.
- **Cierre**: con el hipervisor funcionando ya se pueden crear VMs y contenedores; las apps concretas (Immich, Home Assistant, Jellyfin/Plex) quedan para la parte 2.

## Contexto en la wiki

Fuente oficial del ecosistema Tailscale que refuerza la línea ya presente en el dominio: hardware mini PC x86 como base ([[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]], con GEEKOM) e Immich como clon self-hosted de Google Photos (misma fuente). Proxmox como hipervisor del homelab se desarrolla en [[proxmox-homelab]]. Pi-hole aparece mencionado como servicio DNS self-hosted añadible al mismo equipo ([[resumen-bloquea-ads-malware-pi-hole-pelado-nerd]], [[resumen-como-instalar-pi-hole-en-casaos-bigbeartechworld]]); el panorama de SO y hardware de home server se complementa con [[resumen-home-servers-en-2025-pocho-labs]]. Contraste con la postura de la fuente 1 ([[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]]): reutilizar equipos viejos vs. comprar un refurb barato.
