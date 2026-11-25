# WL-769 — 🚀 14 Aplicaciones Docker que Puedes Instalar en Tu Propio Servidor (DanyCode)

- **Fuente original**: `raw/wl/tramo-108/2026-09-30-14-aplicaciones-docker-que-puedes-instalar-en-tu-propio-servidor.md` ([YouTube](https://www.youtube.com/watch?v=lRtugzugiCk))
- **Canal**: DanyCode (1.ª fuente en la wiki — divulgación técnica/self-hosting en español; el título promete 14 aplicaciones pero el video cierra a las 10, las 4 restantes quedan para el siguiente episodio de la serie — parte 1/2, señalado)
- **Publicado**: 2026-09-29 · **Duración**: 08:04 · **Idioma**: es (ASR, garbiñeo señalado: «Peter actil» = Pterodactyl)
- **Tramo**: 108 (relevo 1) · **Ingesta**: 2026-11-24

## Qué trata

Introducción ligera al self-hosting con Docker: levantar 14 aplicaciones en tu propio servidor contenedor por contenedor, con la tesis de que el contenedor aísla («vecinos que sí se respetan») y permite probar y eliminar sin drama. Solo cubre las primeras **10** — serie partida en dos episodios.

## Las 10 aplicaciones

1. **Jellyfin** — el «Netflix propio»: organiza películas/series/música y las sirve a dispositivos («películas dos, y ahora sí definitivas» no cuenta como organización).
2. **Frigate** — NVR con detección inteligente de cámaras: distingue persona/vehículo/movimiento; «de ¿qué fue ese movimiento? a ah, fue el gato».
3. **AdGuard Home** — DNS de la red que bloquea publicidad y rastreadores centralizadamente, sin instaladores por dispositivo (hermano de Pi-hole).
4. **Nginx Proxy Manager** — proxy inverso con interfaz: dominios/subdominios en vez de memorizar puertos, más certificados SSL sencillos.
5. **Pterodactyl** — panel web para administrar servidores de juegos (Minecraft etc.) sin pelearse con la terminal; «5 minutos después ya estás pensando ¿y si monto 10?».
6. **Watchtower** — actualización automática de contenedores ante nuevas imágenes; advertencia honesta del canal: «conviene saber qué actualizas antes de darle las llaves de la casa».
7. **Docker Compose** — servicios, redes y volúmenes definidos en un archivo que levanta el conjunto («aquí tienes los planos, ahora levanta la casa completa»).
8. **Portainer** — tablero web visual de Docker: contenedores, logs, imágenes, redes y volúmenes.
9. **Nextcloud** — la nube personal propia: archivos sincronizados desde tu servidor, «tu Google Drive pero el servidor es tuyo».
10. **Uptime Kuma** — monitor de servicios que avisa cuando algo cae: «ese amigo que está mirando todo mientras tú dices yo creo que está funcionando».

## Observaciones

- Género de lista divulgativa con analogías cuidado (el «llaves de la casa» de Watchtower es la única advertencia de riesgo real — las actualizaciones automáticas sin revisión pueden romper servicios).
- Cruza [[docker-homelab]] (inventario de contenedores para home lab — 2.ª fuente del patrón), [[decision-home-server]], [[pi-hole]] (AdGuard Home como alternativa de DNS-bloqueo centralizado), tangencial [[resumen-WL734-nube-en-casa-nas-scpc]] (NAS/nube propia) y el espejo del stack *arr de WL-743; la parte 2/2 con las 4 aplicaciones restantes no está en la lista (pendiente si el usuario la agrega).
- Cableado mínimo, sin dominios nuevos ni consolidación (aplazada).
