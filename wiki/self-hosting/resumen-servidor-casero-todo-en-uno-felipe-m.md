# Mi Servidor Casero Todo en Uno: CasaOS, Docker, Pi-hole, n8n, File Browser y Cloudflare 🔥

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=5Wq4DTyp944)
- **Resumen de**: `raw/self-hosting/2025-07-21-mi-servidor-casero-todo-en-uno-casaos-docker-pi-hole-n8n-file-browser-y-cloudfla.md`
- **Canal**: Felipe M. (desarrollador full stack, Chile)
- **Publicado**: 2025-07-21 · **Duración**: 18:01 · **Idioma**: español (Chile)
- **Dominio**: `self-hosting`

## Tesis

Un homelab barato y práctico orientado a desarrolladores: reemplazar VPS de pago y Ngrok por infraestructura propia con CasaOS sobre Docker, exponiendo servicios de forma segura con túneles de Cloudflare. Caso de uso distintivo: **demostrar pruebas de concepto a clientes desde hardware propio** y migrar a la nube solo al cerrar el contrato.

## Trayectoria de hardware (con costos)

- Empezó con un Lenovo Ideapad 330S viejo con Xubuntu + CasaOS.
- Calculó ~15.000 CLP/mes extra de luz por tenerlo 24/7 → migró a **Raspberry Pi (8 GB)**, cuyo consumo equivale a ~1.500 CLP/mes: "se paga sola". Recomienda el kit completo y SD de 128 GB (la de 32 le quedó corta).
- Exposición: antes usaba Ngrok/PythonAnywhere (gratis pero con renovación cada 3 meses); ahora **Cloudflare Tunnel** + dominio propio (~5 USD) para su portafolio `felipemancilla.net` servido desde la Raspberry. Limitación honesta: si se corta internet, todo cae.

## Stack de aplicaciones (mayoría desde la App Store de CasaOS)

- **Pi-hole** (modo host, no bridge): DNS de casa vía DHCP del router; ~44 % de peticiones bloqueadas, internet "se siente más rápido". Detalle técnico: su router venía con el DNS bloqueado de fábrica y hubo que "vulnerarlo" (no detalla marca para evitar problemas); puertos 53 TCP/UDP desbloqueados en el router. Menciona **AdGuard Home** como equivalente con interfaz más bonita.
- **Portainer**: gestión visual de contenedores; lo prefiere a Docker Desktop para logs y rapidez incluso siendo usuario habitual de terminal.
- **n8n**: capa de automatización; migró a n8n un proyecto propio de IA que tenía en Python/LangChain.
- **File Browser**: acceso a sus archivos por túnel; lo enciende solo cuando lo necesita (start/stop desde CasaOS).
- Otros instalados o probados: Flowise (agentes; en pausa), Docmost ("Notion privado gratis", en pausa), **Nginx Proxy Manager** (proxy inverso con SSL autofirmado desde web), **Uptime Kuma** (monitoreo de caídas), OpenSpeedTest.
- Deployment manual: lo que no está en la App Store se importa como Docker Compose (así instaló Pi-hole adaptando el compose oficial con `network_mode: host`).

## Argumento profesional

- Un senior necesita controlar infra: muchos desarrolladores ignoran infra, pocos infraworkers saben desarrollar; el homelab permite mostrar PoCs sin exponer el PC de uso diario y cobrar las demos.
- Flujo de migración: todo dockerizado → exportar base de datos y volúmenes → desplegar en Hostinger/DigitalOcean cuando el cliente lo aprueba (también aplica a WordPress).
- Alternativas que menciona sin adoptar: Webmin sobre Linux pelado, Coolify (PaaS desde GitHub con CI/CD, estilo Jenkins), Jellyfin como "Netflix propio" en red local (desaconseja exponerlo por temas legales).

## Cruces

- [[proxmox-homelab]]: comparte el clúster de referencias (Pi-hole, Uptime Kuma, Nginx Proxy Manager como piezas típicas instalables en un comando).
- Complementa a [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]], [[resumen-home-servers-en-2025-pocho-labs]] y [[resumen-he-clonado-google-fotos-dropbox-chatgpt-en-local-enreta-domotica]]: cuarto testimonio del patrón "hardware reciclado de bajo consumo + CasaOS + Docker"; es el primero con enfoque profesional (PoCs para clientes y migración a nube). Conceptos transversales (Pi-hole, CasaOS, túneles) se consolidan al cierre del tramo.
