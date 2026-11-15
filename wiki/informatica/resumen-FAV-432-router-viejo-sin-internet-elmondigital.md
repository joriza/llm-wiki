# FAV-432 — 4+6 Cosas que puedes hacer con un Router Viejo sin Internet (elmondigital)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=JnzMXLeI1AI) — Canal **elmondigital**, publicado 2026-05-19, 13:41, ES (subtítulos automáticos; voz sintética ElevenLabs declarada).
- **Raw**: `raw/informatica/2026-11-15-router-viejo-sin-internet-elmondigital.md`
- **Dominio**: `informatica/` (subcarpeta Informatica/Transversal — redes domésticas; no hardware/electrónica).

## La idea central

Un router viejo no es «la caja del WiFi»: es un **ordenador especializado que gestiona redes**. Su trabajo real (conectar dispositivos, compartir datos, organizar la red) sigue funcionando sin conexión a una operadora.

## Usos recorridos

1. **Red LAN para gaming** [01:30]: varios equipos en la misma red sin internet — latencia mínima (sin depender de servidores externos ni saturación doméstica), partidas locales de Minecraft/Counter Strike/Quake, y transferencia de archivos entre PCs más rápida que por USB. El **DHCP** del router reparte IPs internas aunque no haya internet.
2. **NAS casero / nube privada** [03:55]: disco o pendrive en el puerto USB → almacenamiento compartido para toda la red sin que los datos salgan de casa; DLNA para que las Smart TV detecten el contenido; limitación práctica de los puertos USB 2.0.
3. **Servidor de impresión** [06:46]: impresora USB compartida en red = impresora inalámbrica; más estable y longeva que muchas impresoras WiFi que mueren cuando el fabricante cierra sus servicios online.
4. **Punto de acceso / repetidor** [08:35]: la mejor vía es cable Ethernet entre routers (desactivar el DHCP del secundario para evitar conflictos de reparto de IPs); modo bridge como extensión transparente; el modo repetidor inalámbrico reduce velocidad. Suele superar a los repetidores WiFi baratos.
5. **Proyectos avanzados: OpenWRT / DD-WRT** [10:50]: firmware alternativo = SO del router; desbloquea servidor web local, domótica sin nube, filtro de publicidad, VPN interna, monitorización de tráfico. Riesgo de brick si falla el flasheo; excelente banco de pruebas para aprender redes sin romper la red principal.

## Valor

Divulgación útil y práctica; consejo transversal repetido: cambiar siempre la contraseña por defecto (admin/admin) aunque el router no salga a internet.

## Cruces

- Clúster **redes**: DHCP (FAV-374 DORA/lease en informatica-teoria), OpenWRT/domótica local (cruza con el clúster Proxmox homelab y con la línea ESP32/IOT de electronica-practica), privacidad local vs nube (FAV-419 RAG local).
