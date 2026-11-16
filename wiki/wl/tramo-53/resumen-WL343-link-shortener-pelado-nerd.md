# WL-343 · Despliega tu propio Bitly — gratis y open source

- **Fuente**: [`raw/wl/tramo-53/2026-09-22-despliega-tu-propio-bitly-gratis-y-open-source.md`](../../raw/wl/tramo-53/2026-09-22-despliega-tu-propio-bitly-gratis-y-open-source.md) — vídeo de YouTube `rGwNTdniad0`
- **Canal**: Pelado Nerd
- **Publicado**: 2026-09-22 · **Duración**: 10:02
- **Tipo**: tutorial de self-hosting (acortador de URLs propio)
- **Dominio destino sugerido**: general (herramientas) o self-hosting

## Tesis

Ante el cambio unilateral de Bitly (inserción de publicidad con redirección retardada de 10-15 s sin aviso), el autor presenta su acortador open source «Link Shortener» y muestra su instalación desde un VPS completamente vacío con Docker Compose: sin instalar Node, npm ni PostgreSQL manualmente — todo en contenedores con Caddy como proxy inverso con HTTPS automático.

## Puntos clave

- **Motivación** [00:26]: Bitly empezó a insertar ads en el flujo de redirección sin avisar; decisión de reemplazarlo por un proyecto propio, manejado y hosteable — enmarca la decisión en la era del vibe coding.
- **Despliegue paso a paso** [01:42]: VPS Ubuntu vacío → DNS: registro A del subdominio (go/links.dominio) a la IP del servidor → script de instalación de Docker → `docker compose up` con Caddy (proxy con certificados TLS integrados, alternativo a nginx), PostgreSQL y la aplicación; claves seguras (base64) para cifrado de sesiones y contraseña de la base, definidas una sola vez.
- **Tip sobre redirecciones** [05:34]: recomienda 302 sobre 301 — la permanente se cachea en el navegador y rompe el cambio posterior de destino; la temporal fuerza re-consulta y garantiza siempre el destino actual. Opciones 301/302/307/308 disponibles.
- **Funcionalidades** [06:08]: dashboard de administración, creación de rutas `/algo` → destino, estadísticas de clics con referrer, país e IP (geo-localización implementada en el video anterior del canal); prueba en vivo desde un servidor virgen para validar la guía.
- **Cierre promocional** [07:08]: patrocinio HostGator (VPS desde ~2-3 USD/mes, servidores en Latinoamérica) declarado y excluido de la sustancia; promoción de Nerdearla (evento gratuito).

## Evaluación

- Tutorial reproducible de 1.ª mano (instalación grabada desde cero en servidor sin nada), proyecto propio open source con invitación a PRs. Utilidad práctica alta para self-hosting básico.
- Patrocinio HostGator con descuento por enlace excluido de la síntesis; humor del cierre (Nerdearla) fuera de la sustancia.
- ASR garbiñeado: Bitley/Link Shortner→Bitly/Link Shortener, Cadi→Caddy, Postgr CAD→PostgreSQL, BPC→VPS, cachar→cachea, Hostgor→HostGator — normalizados solo en el resumen.

## Cruces

- Self-hosting: cruce natural con el dominio self-hosting (playlist homónima, 11 fuentes) y Open Cloud mencionado por HostGator.
- [[historia-de-la-tecnologia]] no aplica; Pelado Nerd +1 (previa WL-130 hack Binance — entidad a actualizar en consolidación).
- Caddy como alternativa moderna a nginx: complemento del stack Docker Compose estándar del canal.
