# Dokploy: PaaS open source autoalojado (NextGen)

- **Dominio**: `self-hosting/`
- **Fuente original**: `raw/self-hosting/2026-10-22-como-desplegar-tus-apps-con-dokploy-alternativa-open-source-a-vercel-o-netlify.md` ([vídeo](https://www.youtube.com/watch?v=FywVewJ6ooQ))
- **Canal**: NextGen · **Publicado**: 2026-10-22 · **Duración**: 06:52 · **Idioma**: español

## Qué trata

Dokploy (el ASR lo confunde a veces con «Dokku», su inspiración) es un PaaS de código abierto que convierte un VPS propio en una alternativa autoalojada a Vercel, Netlify o Heroku: los datos viven en el servidor del usuario y no se paga por aplicación. Es el complemento de despliegue de la pila homelab que describen [[resumen-servidor-casero-todo-en-uno-felipe-m]] y [[resumen-home-servers-en-2025-pocho-labs]].

## Funcionamiento interno

- Todo se apoya en Docker: cada aplicación es un contenedor orquestado con Docker Swarm; el proxy de entrada es Traefik (asigna tráfico por dominio), el panel es Next.js con PostgreSQL, y Redis gestiona la cola de despliegues.
- Sin Dockerfile en el proyecto, Nixpacks (o Railpack, su sucesor) detecta lenguaje y dependencias y construye la imagen; también acepta imágenes Docker y stacks de Docker Compose.

## Capacidades

- Despliegue desde GitHub, GitLab, Bitbucket, Gitea o Docker Hub (GitHub App o webhook); cada `push` a la rama configurada reconstruye y despliega solo.
- Bases de datos (PostgreSQL, MySQL/MariaDB, MongoDB, Redis) con backups automáticos a almacenamiento S3; plantillas listas (n8n, WordPress, Uptime Kuma); monitoreo en tiempo real de CPU/memoria/disco; escalado a varios servidores remotos o un builder dedicado.
- Dominios con HTTPS vía Let's Encrypt (renovación automática); dominio gratuito de traefik.me solo HTTP para pruebas.

## Requisitos e instalación

VPS con ≥2 GB RAM y ≥30 GB disco (las imágenes se compilan en el servidor), Ubuntu/Debian, puertos 80/443/3000 libres. Instalación en un solo comando; acceso inicial al panel por el puerto 3000.

## Buenas prácticas de producción

Panel con dominio+HTTPS y puerto 3000 cerrado; cortafuegos solo SSH/80/443; SSH con claves; 2FA en todas las cuentas; backups fuera del servidor con restauración verificada.

## Nota

La transcripción literal nombra «docs.dokku.com» al cierre, pero el video completo describe Dokploy (panel Next.js, organizaciones/proyectos/servicios, traefik.me): la herramienta tratada es Dokploy; Dokku es la referencia conceptual (PaaS sobre Docker sobre un único servidor).
