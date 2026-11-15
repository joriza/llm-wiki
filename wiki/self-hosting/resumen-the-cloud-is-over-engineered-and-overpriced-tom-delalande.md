# Resumen: The cloud is over-engineered and overpriced (no music)

- **Fuente**: raw/self-hosting/2024-04-25-the-cloud-is-over-engineered-and-overpriced-no-music.md ([video](https://www.youtube.com/watch?v=jFrGhodqC08))
- **Canal**: Tom Delalande
- **Publicado**: 2024-04-25
- **Idioma**: inglés (ASR)
- **Duración**: 14:39

## Idea central

Crítica argumentada de la nube para startups y proyectos pequeños (cita ~116.000 USD/año de gasto cloud medio en una startup SaaS): casi todo lo que ofrece AWS (ECS, RDS, ALB, S3, Lambda…) se puede lograr con Linux, Git, Docker y herramientas open source sobre un propio equipo. Demo completa: desplegar un sitio con servidor, base de datos, analítica, HTTPS, despliegues con cero downtime y entrega continua por el precio de un dominio. Tesis: usar siempre la herramienta más simple que resuelva el problema real; ni todo debe self-hostearse, pero nos hemos vuelto dependientes de la nube sin buena razón.

## Puntos clave

- **Base**: un equipo viejo reconvertido (un MacBook Pro 2017 sin batería ni teclado) con Linux. El autor elige NixOS por ser declarativo y reproducible (un archivo de configuración describe toda la máquina), con SSH, firewall solo en puertos 80/443, Git, Docker y Vim.
- **Stack Docker**: imagen multi-stage (build de Kotlin + runtime reducido), reemplazo directo de ECS por `docker run`; Docker Compose como orquestación de un solo nodo: servidor (SQLite — elección deliberada para una app no multinodal), Caddy como reverse proxy (elegido sobre nginx por su sintaxis simple y HTTPS automático, enrutando por nombre de contenedor dentro de la red Docker), y Plausible como alternativa open source self-hosted a Google Analytics.
- **HTTPS y dominio**: Caddy gestiona certificados automáticamente; solo hay que comprar el dominio y apuntar el DNS al servidor.
- **Despliegue sin downtime y CD**: escalado a 2 contenedores + `caddy reload` (el proxy apunta al nombre del servicio), script shell de despliegue, `deploy-if-changed` y cron job cada minuto con lockfile — entrega continua real sin GitHub Actions: "head of main está siempre en producción, y lo sabes porque git y bash lo fuerzan".
- **Escalado progresivo**: un contenedor (docker CLI) → varios en un equipo (Compose) → varios equipos (Swarm) → Kubernetes si hiciera falta; con una sola máquina no hay need multi-nodo, y si el sitio "explota", el autor prefiere que caiga antes que aceptar vendor lock-in por un escenario improbable.
- **Respuestas a las objeciones típicas**: (1) escalabilidad — pocos necesitan crecer 10-100× de la noche a la mañana; (2) "la nube es más fácil" — lo fácil suele ser una abstracción de algo complejo: prefiere un motor sin tapa que pueda ajustar antes que una caja negra no diseñada para su caso; (3) distribución global — solo relevante para contenido dinámico multi-región, que casi nadie usa realmente. Excepción reconocida: si el producto realmente la necesita, úsese la nube — "tu producto probablemente no es Fortune 500".

## Contexto en la wiki

Esta es la pieza de crítica de la nube anunciada en la descripción del dominio, y contrasta con los enfoques domésticos del resto: mientras [[resumen-home-servers-en-2025-pocho-labs]] ordena el software de servidor casero y [[proxmox-homelab]] el hipervisor, esta fuente cuestiona la premisa económica de depender de proveedores cloud. Comparte la reutilización de hardware viejo con [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]] y la pila Docker/Compose con [[resumen-servidor-casero-todo-en-uno-felipe-m]] y [[resumen-como-instalar-pi-hole-en-casaos-bigbeartechworld]].
