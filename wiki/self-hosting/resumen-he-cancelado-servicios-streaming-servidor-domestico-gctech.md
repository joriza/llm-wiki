# He Cancelado Todos mis Servicios de Streaming… Esto Es lo Que Hago Ahora

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=8qxX43V2GCE)
- **Resumen de**: `raw/self-hosting/2025-12-12-he-cancelado-todos-mis-servicios-de-streaming-esto-es-lo-que-hago-ahora.md`
- **Canal**: GCtech • Guillem Cortés
- **Publicado**: 2025-12-12 · **Duración**: 20:20 · **Idioma**: español
- **Dominio**: `self-hosting`

## Tesis

Frente a la fragmentación, los precios crecientes y la recompression de los catálogos de streaming, el autor propone recuperar el control con un **servidor doméstico autoalojado** construido sobre hardware de segunda mano: viejo Dell Optiplex 3020 (i5 de 4.ª gen, Haswell, >10 años) convertido en servidor multimedia propio. Argumento económico: entre varias suscripciones se pagan cientos de euros al año por contenido del que solo se consume una fracción.

## Recorrido técnico (paso a paso)

1. **SO base**: Ubuntu Server LTS instalado vía USB multiboot con **Ventoy** (varias ISOs en un mismo pendrive). Conexión por Ethernet durante la instalación y anotación de la IP local.
2. **IP fija**: reserva de la IP en el servidor DHCP del router, para que el servidor la conserve tras reinicios.
3. **CasaOS**: panel de "nube personal" de código abierto instalado con un comando vía **SSH**, que da interfaz gráfica sobre **Docker**, gestión de almacenamiento y App Store de contenedores. Nota práctica: en su instalación tuvo que forzar una versión de API de Docker compatible con CasaOS.
4. **Plex** como servidor multimedia (contenedor desde la App Store de CasaOS): montaje del disco de 1 TB desde la interfaz, mapeo del directorio del contenedor con el del host (`/mnt/<disco>/pelis`) y biblioteca de películas.
5. **Ripeado de DVDs**: con HandBrake CLI (reconoce que la vía gráfica es más sencilla); convención de nombres `Título (año).mp4` para que Plex cargue metadatos y carátulas automáticamente. Pase del archivo del SSD al disco mecánico con `mv` y `sudo` (permisos).
6. **Acceso remoto con Tailscale**: el servidor se añade a la *tailnet* existente (ya tiene otro nodo de salida, un "GMKtec Ward"). Con la VPN activada desde el móvil se reproduce en remoto; evita port forwarding y el bloqueo por CGNAT, y sin Plex Pass. Recomienda complementar con un firewall (UFW).

## Observaciones y limitaciones señaladas

- Alternativas de SO: TrueNAS, Unraid, ZimaOS (evolución de CasaOS); el enfoque no es dogmático.
- Consumo: el Optiplex no es eficiente frente a un mini-PC tipo Zimaboard o una Raspberry Pi; tenerlo 24/7 se nota en la factura.
- Legalidad (España): ripear DVDs propios equivale a copia privada, legal sin distribución ni lucro. Sugiere comprar DVDs de segunda mano (eBay, librerías) y digitalizarlos.
- El mismo setup sirve para otros servicios self-hosted (Pi-hole, Immich); anuncia un vídeo posterior sobre respaldo de fotos propio (alternativa a Google Photos/iCloud).
- Menciona haber usado ChatGPT como apoyo paso a paso para los comandos de ripeo.

## Cruces

- Homelab DIY sobre hardware reciclado y servicios instalables en un comando: véase [[proxmox-homelab]] (enfoque hipervisor vs. este enfoque SO + panel). Conceptos transversales (Docker, Tailscale, self-hosting) se consolidarán al cierre del tramo.
