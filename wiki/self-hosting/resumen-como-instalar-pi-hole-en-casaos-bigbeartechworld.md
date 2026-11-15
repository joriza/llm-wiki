# How to install Pi-hole on CasaOS

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=uOvB0CIhb5k)
- **Resumen de**: `raw/self-hosting/2023-09-22-how-to-install-pi-hole-on-casa-os.md`
- **Canal**: BigBearTechWorld
- **Publicado**: 2023-09-22 · **Duración**: 11:37 · **Idioma**: inglés
- **Dominio**: `self-hosting`

## Tesis

Tutorial paso a paso (en inglés) para instalar Pi-hole como contenedor Docker sobre CasaOS, con los dos obstáculos típicos resueltos: liberar el puerto 53 y desplegar por Docker Compose personalizado.

## Paso previo: liberar el puerto 53

Ubuntu/Debian traen `systemd-resolved`, un DNS interno que ocupa el puerto 53 que Pi-hole necesita. El canal provee un script auditable ("BigBear scripts") que: verifica privilegios, muestra qué está abierto en el puerto, pide confirmación y/n, detiene y deshabilita `systemd-resolved`, y verifica que el puerto quedó libre.

## Despliegue por Docker Compose (import en CasaOS)

El compose (imagen `pihole:2023.05.2` desde Docker Hub, ajustable) define:

- **Puertos**: 53 TCP y UDP (DNS) y 7300 en el host para la interfaz web; la parte derecha del mapeo es la del contenedor y no se puede cambiar.
- **Variables de entorno**: zona horaria y contraseña web (recomienda cambiar la de ejemplo).
- **Volúmenes**: `/etc/pihole` y `/etc/dnsmasq.d` sincronizados con `appdata/pihole` en el host — los datos siempre visibles desde CasaOS (app Archivos).
- **Restart policy**: `unless-stopped` (reinicia ante fallos, respetando un stop manual).
- **DNS del contenedor**: `localhost` para resolución interna y `1.1.1.1` (Cloudflare) como upstream externo.

Instalación vía App Store → Custom Install → Import del compose, con nombre, icono y web port 7300. CasaOS descarga la imagen y levanta el contenedor; desde los "tres puntos" del contenedor se accede a terminal, logs (depuración), export del compose, actualizaciones, restart/uninstall.

## Configuración post-instalación

- La URL inicial da 403: hay que cambiar el path del web UI a `/admin` en los ajustes del contenedor en CasaOS.
- Panel de Pi-hole: query logs en vivo, blacklist/whitelist, añadir blocklists externos (típicamente en GitHub), pausar el bloqueo por tiempo determinado, DNS local (registros A y CNAME para dominios propios), cambio de upstream (Google → Cloudflare IPv4, o resolvers personalizados), DHCP propio, temas, ajustes de API y privacidad, y backup/restore de la configuración.

## Observaciones

- El autor trabaja sobre un LXC (contexto Proxmox), enmarcado en su serie de homelab; el procedimiento aplica igual en bare metal o VM con CasaOS.
- El valor añadido frente a la App Store de CasaOS es el compose auditable + el script de puerto 53, ambos públicos en el repo del canal, con comunidad en Discord.

## Cruces

- [[proxmox-homelab]]: mismo ecosistema (Pi-hole como app homelab típica instalable con scripts); el tutorial se ejecuta en un LXC.
- Detalla a fondo el Pi-hole que mencionan [[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]] y [[resumen-servidor-casero-todo-en-uno-felipe-m]] (ambos también resuelven el conflicto de puerto/DNS y usan compose propio). Conceptos transversales se consolidan al cierre del tramo.
