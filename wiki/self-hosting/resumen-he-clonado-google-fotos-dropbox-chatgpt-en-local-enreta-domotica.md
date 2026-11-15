# 🔴 He CLONADO Google Fotos, Dropbox y ChatGPT en Local (Geekom IT12)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=00ENzG5SCMM)
- **Resumen de**: `raw/self-hosting/2025-11-23-he-clonado-google-fotos-dropbox-y-chatgpt-en-local-geekom-it12.md`
- **Canal**: Enreta Domótica
- **Publicado**: 2025-11-23 · **Duración**: 15:53 · **Idioma**: español
- **Dominio**: `self-hosting`

## Tesis

Centralizar la vida digital (fotos, documentos, privacidad) en un mini PC casero con CasaOS, reemplazando suscripciones de nube por alternativas autoalojadas — "modo fácil" como puerta de entrada al homelab, con la promesa de sustituir Google Fotos, Dropbox/Drive y hasta ChatGPT en local.

## Equipo y base

- Mini PC GEEKOM IT12 (enviado por la marca, lo declara): i7 12.ª gen, 32 GB RAM, WiFi 6E, 2×2.5G Ethernet, 1 TB M.2, USB4. Disco de 120 GB para el SO y el M.2 de 1 TB para datos; sugiere NAS aparte montado por red si se necesita capacidad y redundancia.
- Ubuntu Server 24.04 + **CasaOS**: lo define con precisión como *interfaz gráfica sobre Linux* (no un SO), con tienda de apps a un clic que por debajo despliega **contenedores Docker**. Nota práctica: según la distro puede fallar Docker; resolver antes del instalador (comando en la descripción). Rechaza Proxmox para este caso porque el encargo era "fácil y sencillo".

## Selección de aplicaciones

- **Immich**: gestor de fotos y vídeos con backup desde el móvil y búsqueda por caras/objetos — "el equivalente real" a Google Photos/iCloud.
- **Nextcloud**: sustituto de Dropbox, más potente — documentos, sincronización de carpetas, edición multi-dispositivo.
- **Cloudflare Tailscale-type** (acceso remoto seguro): acceder desde fuera sin abrir puertos ni IP fijas en el router.
- **Pi-hole**: servidor DNS bloqueador de publicidad y rastreadores; lo lleva ~6 años y lo usa como DNS principal de casa. Punto fuerte que destaca: filtra la telemetría constante de dispositivos como una Smart TV Samsung hacia servidores propios y de terceros (qué ves, cuándo, en qué plataforma). Recomendaciones extra: desinstalar apps sin usar de la TV y desactivar su micrófono físico.

## Advertencias del "modo fácil"

- **Conflictos de puertos**: todas las apps comparten la IP del host y muchas piden los mismos puertos (80, 8080, 443…); instalar de una en una, configurar y verificar puertos antes de la siguiente — no desplegar 40 apps de golpe.
- Las apps del catálogo de CasaOS no siempre están a la última versión; se puede desplegar a mano por Docker o subiendo un YAML.
- **IA local**: despliega su chat propio con Ollama + interfaz web vía YAML; sin GPU va más lento, pero privado y útil para tareas ligeras; lo conecta con N8N para automatización 100 % local.
- Evolución recomendada: de CasaOS a Portainer (control fino de contenedores) y luego a Proxmox con virtualización — que es como él lo tiene montado de verdad en su rack (cluster).

## Opinión de hardware

Mini PC como homelab cada vez más interesante (control, privacidad, ahorro). Confía en GEEKOM (tiene 4); Lenovo e Intel NUC los llama "tostadoras" por calor; advierte que mini PCs baratos traen componentes de baja durabilidad. Opina que el IT12 es "demasiado" para solo ofimática: mejor reservarlo para lab.

## Cruces

- [[proxmox-homelab]]: misma tesis (Proxmox como hipervisor para lab robusto; apps en un comando como capa de ergonomía); coincide además en Pi-hole e Immich como piezas típicas del homelab.
- Complementa a [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]] (CasaOS + Plex como modo fácil) y a [[resumen-home-servers-en-2025-pocho-labs]] (taxonomía por dificultad: CasaOS = fácil, Proxmox = avanzado). Conceptos transversales (Pi-hole, Immich, Docker, IA local) se consolidan al cierre del tramo.
