# Pi-hole

- **Tipo**: página de concepto.
- **Dominio**: `self-hosting/`.
- **Creada**: 2026-11-15 (consolidación final de la playlist).
- **Fuentes nucleares**: [[resumen-bloquea-ads-malware-pi-hole-pelado-nerd]] (monográfica: qué es y cómo se instala) · [[resumen-como-instalar-pi-hole-en-casaos-bigbeartechworld]] (tutorial: compose + puerto 53).
- **Menciones**: [[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]] (DNS principal de casa desde hace ~6 años, anti-telemetría de Smart TV) · [[resumen-servidor-casero-todo-en-uno-felipe-m]] (modo host, ~44 % de consultas bloqueadas) · [[resumen-15-docker-containers-home-lab-virtualizationhowto]] (pieza de la pila DNS con Unbound).
- **Ver también**: [[pi-hole]] vive dentro del pilar red/DNS de [[self-hosting]]; como app instalable con un comando, también aparece en [[proxmox-homelab]].

## El concepto

**Pi-hole como bloqueo de publicidad y rastreadores a nivel de red**: es un servidor DNS que no resuelve los dominios de listas negras (ads, malware, telemetría), de modo que ningún dispositivo de la red llega a cargarlos — teléfonos, TVs, tablets e invitados del WiFi, sin extensiones de navegador.

## Lo que las fuentes coinciden en

- **Cobertura de red completa**: la ventaja frente al ad-blocker de navegador (Pelado Nerd), con la variante anti-telemetría como caso fuerte (Enreta: la Smart TV Samsung que reporta qué y cuándo ves).
- **Impacto medible por el propio panel**: 3–20 % de consultas bloqueadas (Pelado Nerd, 2019) y ~44 % (Felipe M., 2025) — ambas cifras son autodeclaradas del panel, no benchmarks.
- **Instalación como contenedor Docker**: volúmenes persistentes, contraseña por variable de entorno, panel web; los obstáculos típicos documentados son el puerto 53 ocupado por `systemd-resolved` (BigBearTechWorld, con script para liberarlo) y el DNS del router bloqueado de fábrica (Felipe M.).
- **Configuración de clientes**: apuntar el DHCP del router a la IP del servidor (Pelado Nerd, Felipe M.) o cambiar el upstream (BigBearTechWorld: Cloudflare 1.1.1.1).

## Evolución dentro del dominio

El antecedente temprano (Pelado Nerd, 2019, sobre Raspberry Pi con 0,5 GB extra de RAM) y los despliegues recientes (2023-2026) sobre CasaOS/Compose muestran la misma herramienta estable mientras cambió el entorno: de instalar a mano a desplegarla como pieza estándar del homelab — y Felipe M. menciona **AdGuard Home** como equivalente con interfaz más moderna.
