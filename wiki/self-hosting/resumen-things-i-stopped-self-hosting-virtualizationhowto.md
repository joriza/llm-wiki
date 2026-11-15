# Resumen: Things I Stopped Self-Hosting (And Why Cloud Won in My Home Lab)

- **Fuente**: raw/self-hosting/2026-01-09-things-i-stopped-self-hosting-and-why-cloud-won-in-my-home-lab.md ([video](https://www.youtube.com/watch?v=-W-ayVXtFQs))
- **Canal**: VirtualizationHowto (Brandon Lee)
- **Publicado**: 2026-01-09
- **Idioma**: inglés (ASR)
- **Duración**: 15:03

## Idea central

Contra-peso deliberado dentro del mundo self-hosting: Brandon Lee repasa los servicios que dejó de self-hostear porque el costo operacional (tiempo, estrés, riesgo) superó el valor, y en qué sigue invirtiendo. No es un rechazo del self-hosting — corre hoy más servicios propios que nunca — sino una defensa del self-hosting intencional. Criterio central: si un servicio te quita más tiempo en troubleshooting del que devuelve en aprendizaje o valor, o te produce ansiedad al salir de casa, es señal de que no encaja self-hosteado.

## Servicios que dejó de self-hostear

- **Email**: autohostearlo era antaño un rito de paso; hoy la entrega depende de DKIM, SPF, DNS inverso, reputación de IP, y muchos ISPs filtran el puerto 25 salvo circuitos business. Es un "blanco móvil" que se rompe en silencio; moverlo a un proveedor gestionado eliminó toda la fricción. La objeción de privacidad no le pesa (ya vive en email cloud y el smartphone; para privado de verdad no usaría email igual).
- **DNS público** (no el interno): sigue amando el DNS interno (split horizon, menciona clustering de Technitium), pero el DNS autoritativo público tiene un blast radius enorme — certs, endpoints y monitoreo dependen de él, y cortes de luz/ISP en casa (un par de veces al año) lo tumbarían. Lo movió a Cloudflare.
- **Gateways de acceso remoto** (WireGuard/OpenVPN con puertos abiertos): tras comprometerse un par de máquinas de su DMZ, concluyó que exponer el borde a internet no compensa. Hoy es "all-in" en soluciones zero trust (Tailscale y la open source Pangolin) que no abren ningún puerto entrante.
- **Notificaciones push**: odiaba depurar entregas de alertas a medianoche; usa Gotify/Mailrise como front y consume Pushover como backend alojado (5 USD de por vida por dispositivo) — más tiempo manteniendo el sistema de notificaciones que beneficio recibido.
- **Gestores de contraseñas**: el más polémico. Reconoce que Vaultwarden/Bitwarden self-hosted funcionan, pero su análisis riesgo/retorno lo dejó en cloud: perder acceso a TODAS sus cuentas por un fallo catastrófico del lab es un riesgo que no quiere; además separa credenciales del lab (en el lab) de las críticas personales/de negocio (en la nube), evitando el círculo vicioso de necesitar el lab para recuperar el gestor y el gestor para recuperar el lab.

## Lo que sigue self-hosteando (con gusto)

Infraestructura núcleo: almacenamiento, DNS interno, servicios de identidad, reverse proxies, logging, tooling de IA y plataformas DevOps — donde el aprendizaje, control y flexibilidad superan holgadamente el costo operativo. Cierre: "tu home lab debe trabajar para ti, no al revés"; saber cuándo NO self-hostear es tan importante como saber cuándo hacerlo.

## Contexto en la wiki

Esta fuente es el contrapunto exacto de [[resumen-the-cloud-is-over-engineered-and-overpriced-tom-delalande]] ("la nube está sobre-ingenierizada") dentro del mismo dominio: contradicción productiva sobre dónde pasa la frontera cloud/self-hosted, para resolver en la consolidación. Su apuesta por zero trust sin puertos abiertos coincide con el uso de Tailscale en [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]] y con la serie oficial de Tailscale ([[resumen-so-you-want-to-start-self-hosting-proxmox-tailscale]]); los mini PCs como base del lab coinciden con esa misma fuente y con [[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]]. El ecosistema Proxmox ([[proxmox-homelab]]) es justamente la infraestructura núcleo que el autor sigue manteniendo en casa.
