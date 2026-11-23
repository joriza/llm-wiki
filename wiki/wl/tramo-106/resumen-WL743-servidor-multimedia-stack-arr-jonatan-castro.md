# WL-743 — How to watch free movies with your own media server suite stack *arr (Jonatan Castro)

- **Fuente original**: `raw/wl/tramo-106/2025-04-20-como-ver-peliculas-gratis-con-tu-propio-servidor-multimedia-suite-stack-arr.md` ([YouTube](https://www.youtube.com/watch?v=t1RWOydFWy8))
- **Canal**: Jonatan Castro (1.ª fuente en la wiki)
- **Publicado**: 2025-04-20 · **Duración**: 24:58 · **Idioma**: es (subtítulos automáticos; garbiñeos del ASR normalizados solo aquí)
- **Tramo**: 106 (relevo 1) · **Ingesta**: 2026-11-24

## Qué trata

Tutorial punta a punta del **stack \*arr** de automatización de descargas de películas y series, montado todo en Docker Compose sobre un LXC de Proxmox (con la advertencia de que Proxmox recomienda VM para Docker). El disclaimer de apertura es explícito: la mecánica se demuestra con películas de dominio público (El nacimiento de una nación 1915, Nanuk of the North 1922, The General 1926, pre-filtradas con ChatGPT para elegir las más compartidas).

## Arquitectura en 4 capas (lo esencial del video)

1. **Indexadores** (Prowlarr, alternativamente Jackett): registran dónde está el contenido y lo empaquetan para los gestores.
2. **Gestores de contenido** (Radarr para películas, Sonarr para series): buscan, arman la cola y orquestan.
3. **Cliente de torrents** (qBittorrent — "Cuby/KubitTorrent" en el ASR): baja el contenido a disco.
4. **Reproductores** (Jellyfin y Plex, ambos montados como ejemplo): sirven la biblioteca ya organizada, con carátulas y metadatos de The Movie Database.

El pegamento es el **archivo `.env` compartido** (`ARR_PATH`, timezone, PUID/PGID 1000) y rutas consistentes entre contenedores. Configuración demostrada en vivo: password temporal de qBittorrent vía `docker logs`, root folders y backups en Radarr, conexión gestor↔cliente↔indexador por API key, y perfiles de calidad con idioma.

## Los dos hallazgos prácticos (sección bonus)

- **No duplicar contenido**: si la carpeta `downloads` de qBittorrent y las de Radarr/Sonarr están **en el mismo medio montado**, el gestor usa **hardlinks** (el archivo aparece en dos rutas sin ocupar doble espacio); montarlas en medios distintos rompe el hardlink.
- **Búsqueda en español**: Prowlarr busca los títulos en inglés por defecto, lo que vacía los indexadores hispanohablantes; se resuelve añadiendo el idioma al perfil de calidad en Radarr (Settings → Profiles), no en Prowlarr. Crédito al canal Domoticarte.

## Extensiones mencionadas

Añadir servicios del ecosistema (Lidarr música, Readarr libros — "Lear/Reider" en el ASR) copiando el compose de LinuxServer.io; VPN para todo el stack vía el contenedor **Gluetun** (soporta WireGuard, Mullvad, NordVPN) como gateway de tráfico.

## Notas

- Sponsor PCBWay excluido de la síntesis; autopromoción del blog (registro gratuito) señalada.
- Canal rioplatense ("menos Abas", voseo); guía compilada de otras fuentes, sin novedad propia declarada — honestidad útil, no investigación original.

## Cruces

- **[[self-hosting]]**: refuerza los pilares 2-3 del dominio (Docker Compose como capa universal, rutas compartidas como pegamento). Es la fuente que **cierra la laguna declarada** en [[decision-home-server]] req 3.4 (automatización torrents/series/subtítulos): indexadores+gestores+qBittorrent+Jellyfin es exactamente el stack que la decisión dejó sin cubrir, incluida la regla de hardlinks que condiciona el layout de almacenamiento del req 3.2.
- Espejo de WL-734 (NAS + Jellyfin como primer contenedor): misma progresión ergonómica, aquí con la capa de automatización encima.
- La sección Gluetun anticipa el cruce con [[pi-hole]]/acceso remoto aún sin página VPN del dominio.
