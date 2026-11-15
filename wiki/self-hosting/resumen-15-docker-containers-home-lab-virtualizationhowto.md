# Resumen: 15 Docker Containers That Will Instantly Improve Your Home Lab (2025 Guide)

- **Fuente**: raw/self-hosting/2025-11-21-15-docker-containers-that-will-instantly-improve-your-home-lab-2025-guide.md ([video](https://www.youtube.com/watch?v=CaEgrQaPNvQ))
- **Canal**: VirtualizationHowto (Brandon Lee)
- **Publicado**: 2025-11-21
- **Idioma**: inglés (ASR)
- **Duración**: 13:29

## Idea central

Catálogo de 15 contenedores Docker que, según el autor, mejoran cualquier homelab de inmediato (finales de 2025): no hay un contenedor mágico que lo resuelva todo — el valor está en la combinación correcta formando un ecosistema (documentar la red, enrutar y asegurar tráfico, monitorear, respaldar, guardar secretos, versionar código, front-end visual).

## Los 15 contenedores

- **Dozzle**: logs en tiempo real de todos los contenedores desde una web limpia — reemplaza el `docker logs -f` repetido.
- **Watchtower**: actualiza imágenes automáticamente y reinicia con la misma configuración. Advertencia del autor: es un proyecto estancado; investigar forks y alternativas.
- **Pulse**: novedoso; monitorea Docker **y** Proxmox en una sola solución ligera (el hueco típico: los monitores cubren uno u otro), con alertas.
- **Komodo**: gestión Docker todo-en-uno, alternativa a Portainer con foco en logs, métricas, traces y observabilidad, más automatización/CI-CD integrada.
- **Netdata**: monitoreo completo (CPU, memoria, discos, red, contenedores) instalado una vez y olvidado; consola cloud con tier gratis y licencia homelab de 99 USD/año por agentes ilimitados; alertas casi sin configuración.
- **Uptime Kuma**: el clásico "¿está arriba o abajo?" para sitios, contenedores y endpoints, con páginas de estado de aspecto SaaS. (Ya presente en el dominio: [[resumen-servidor-casero-todo-en-uno-felipe-m]].)
- **Bitwarden**: el gestor de contraseñas que recomienda self-hostear — bóveda privada de grado empresario en Docker. (Nótese el contraste con su propio video posterior [[resumen-things-i-stopped-self-hosting-virtualizationhowto]], donde mueve las contraseñas críticas a la nube.)
- **Homer**: página de inicio del homelab con tarjetas e íconos por servicio, configurada en YAML versionable en Git.
- **Mailrise**: traduce alertas SMTP de equipos legacy (switches, appliances) hacia servicios modernos de notificación vía el framework Apprise.
- **Netbox**: documentación de red y fuente única de verdad (VLANs, IPs, racks, dispositivos y relaciones); nacido en DigitalOcean; integrable con Ansible y Terraform.
- **Nginx Proxy Manager**: reverse proxy sencillo para principiantes, con certificados Let's Encrypt automáticos y terminación SSL.
- **phpIPAM**: gestión de direcciones IP, subredes y VLANs; complementario a Netbox, se integra con DHCP y DNS.
- **Duplicati**: respaldos cifrados e incrementales de volúmenes Docker, programables, hacia NAS, Backblaze/S3 o almacenamiento compatible.
- **Pi-hole**: bloqueo de anuncios a nivel DNS, filtrado de telemetría y malware; combinado con Unbound forma una pila DNS completa. (Antecedentes del dominio: [[resumen-bloquea-ads-malware-pi-hole-pelado-nerd]], [[resumen-como-instalar-pi-hole-en-casaos-bigbeartechworld]].)
- **Gitea**: Git self-hosted con aspecto y comportamiento de GitHub; integrable con Drone CI o su CI/CD nativo en desarrollo, para construir flujo DevOps propio.

## Contexto en la wiki

Segunda fuente del canal VirtualizationHowto en el dominio (tras [[resumen-things-i-stopped-self-hosting-virtualizationhowto]], del mismo autor Brandon Lee — criterio de entidad de canal cumplido a cierre de tramo). Es el catálogo de servicios que complementa la infraestructura de [[proxmox-homelab]] y las herramientas ya vistas en [[resumen-servidor-casero-todo-en-uno-felipe-m]] (Portainer, Uptime Kuma, NPM) y [[resumen-home-servers-en-2025-pocho-labs]].
