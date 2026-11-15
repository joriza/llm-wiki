# CasaOS

- **Tipo**: página de concepto.
- **Dominio**: `self-hosting/`.
- **Creada**: 2026-11-15 (consolidación final de la playlist).
- **Fuentes nucleares**: [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]] (instalación paso a paso + Plex) · [[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]] («modo fácil»: Immich, Nextcloud, Pi-hole, Ollama).
- **Fuentes que la ubican o usan**: [[resumen-home-servers-en-2025-pocho-labs]] (nivel «fácil» de su taxonomía de SO) · [[resumen-servidor-casero-todo-en-uno-felipe-m]] (homelab profesional sobre CasaOS) · [[resumen-como-instalar-pi-hole-en-casaos-bigbeartechworld]] (instalación de Pi-hole vía import de compose).
- **Ver también**: [[self-hosting]] (pilar despliegue), [[docker-homelab]] (lo que hay debajo de CasaOS), [[proxmox-homelab]] (el nivel siguiente de la progresión).

## El concepto

**CasaOS como capa de ergonomía, no un sistema operativo**: una interfaz web de código abierto sobre Linux que gestiona Docker — tienda de apps a un clic, gestión de almacenamiento y visibilidad de los datos desplegados (Enreta lo define con precisión; GCtech lo instala con un comando por SSH).

## El patrón «modo fácil»

- **Puerta de entrada al homelab**: es la opción recomendada para empezar de cero (Pocho Labs: nivel fácil, junto a Cosmos Cloud y Umbrel; de los creadores de ZimaBoard/ZimaOS), y la que tres testimonios del dominio adoptan como base de su servidor.
- **Bajo el panel, Docker**: las apps de la App Store son contenedores; lo que no está en el catálogo se importa como compose ([[resumen-como-instalar-pi-hole-en-casaos-bigbeartechworld]], [[resumen-servidor-casero-todo-en-uno-felipe-m]]).
- **Rozes documentadas**: conflicto de versión de API de Docker en la instalación (GCtech), Docker que puede venir roto según la distro (Enreta), apps del catálogo desactualizadas y conflictos de puertos entre apps (Enreta: instalar de una en una).

## La progresión recomendada

Enreta formula el camino completo: **CasaOS (modo fácil) → Portainer (control fino de contenedores) → Proxmox con virtualización** — que es como él lo tiene en su rack real; Pocho Labs coincide al ubicar Proxmox en el nivel avanzado y CasaOS en el fácil. CasaOS no compite con Proxmox: cubre el tramo de la curva de aprendizaje donde el hipervisor aún no hace falta.
