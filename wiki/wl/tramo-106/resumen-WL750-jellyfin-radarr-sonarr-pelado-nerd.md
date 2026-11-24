# WL-750 — Jellyfin + Radarr + Sonarr 100 % AUTOMATIZADO [PARTE 1] (Pelado Nerd)

- **Fuente original**: `raw/wl/tramo-106/2026-07-29-jellyfin-radarr-sonarr-100-automatizado-parte-1.md` ([YouTube](https://www.youtube.com/watch?v=kSx2W34abKs))
- **Canal**: Pelado Nerd (6.ª fuente — [[pelado-nerd]])
- **Publicado**: 2026-07-29 · **Duración**: 23:06 · **Idioma**: es-AR (ASR, garbiñeos normalizados aquí: "Sonar/Radar/Basar" = Sonarr/Radarr/Bazarr; "Torrents Now" = Torznab; "NZB 360" = nombre real de la app)
- **Tramo**: 106 (relevo 2) · **Ingesta**: 2026-11-24
- **Nota**: video patrocinado por Make (automatización visual) — la demo del sponsor queda excluida de esta síntesis.

## Qué trata

Migración de su stack viejo (Plex + Raspberry + Flexget) al stack *arr moderno, tras perder un disco con toda su biblioteca — "excelente oportunidad para patear el tablero". Parte 1 de 2: las piezas básicas y su configuración, con repo público para levantar todo con un comando (Docker Compose + `.env`). El espejo directo de WL-743 (Jonatan Castro, mismo stack, mismos principios) — coincidencia de arquitectura entre fuentes independientes.

## El cambio de paradigma

**Dejar los archivos de configuración (Flexget/YAML) y pasar a una base de datos mantenida por aplicaciones**: cada pieza hace una sola cosa extremadamente bien.

- **Sonarr** (series) / **Radarr** (películas): base de datos de lo que querés ver + buscan en indexers (vía **Jackett**, puerto 9117) y delegan la descarga a **qBittorrent** (o Transmission, como en su servidor real); administran el renombrado y el movimiento a `/data/media/...`. La "magia" destacada dos veces: agregar contenido **que aún no existe** (Avengers Doomsday en "unreleased") — el día que sale, se descarga solo; más colecciones (Radarr) y calendario de estrenos (Sonarr).
- **Bazarr**: solo subtítulos, conectado a Sonarr/Radarr por API key, providers como opensubtitles.com; descarga automática permanente.
- **Jellyfin**: alternativa open source a Plex, 100 % en el servidor; serve navegadores, móviles y TV.
- **Caddy** como reverse proxy para acceso externo (opcional).
- Estructura de datos clave: `/data/torrents` (movies/series/music) separado de `/data/media` — los gestores mueven entre ambos.

## Jellyfin vs. Plex (veredicto honesto tras meses de uso)

Tres cosas de Plex que extraña en Jellyfin: sistema de invitaciones de usuarios (en Jellyfin, alta manual por dashboard — promete un servicio externo en la parte 2), skip de intros, y corrección/sincronización de subtítulos desde el cliente + botón de búsqueda de subtítulos. Todo lo demás funciona "exactamente igual"; Jellyfin gana por **totalmente gratuito** (Plex cobra el pase para descargar en móvil, etc.).

## Extras

- Mejor app de móvil según su búsqueda de meses: **NZB360** (gratis con agregado pago, $5 por conectar Sonarr y cada servicio) — permite agregar películas desde la casa de un amigo y que la descarga ya esté al llegar. Frente al viejo archivo YAML manual, esta es la ventaja que más destaca.
- Descargo de responsabilidad jugado con humor: demo con *Night of the Living Dead* (1968, copyright free, verificada en archive.org) y el chiste del "soy inimputable — tengo todos los DVD/Blu-ray ripeados". Demo de descarga real evitada en el servidor "para que no me lo baneen".

## Cruces

- **Espejo de WL-743** ([[resumen-WL743-servidor-multimedia-stack-arr-jonatan-castro]]): mismo stack *arr + Jellyfin + Compose con `.env`, llegando por caminos independientes a la misma arquitectura (WL-743 añade hardlinks y perfil de calidad en español; WL-750 añade Bazarr, Jackett y el ángulo "agregar contenido no estrenado" + veredicto Jellyfin-vs-Plex). Juntos refuerzan la fila 3.4 de [[decision-home-server]].
- Canal: [[pelado-nerd]] — 6.ª fuente; sello demo-1.ª-mano (repo público, su biblioteca real, su cuenta de NZB360).
- [[self-hosting]] (dominio) y [[docker-homelab]] (Compose como plataforma de un solo nodo).
