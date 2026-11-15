# FAV-449 — Janet Jackson te rompía el Windows XP (La Chica de Sistemas)

- **Fuente**: [Video en YouTube](https://www.youtube.com/shorts/hdhQg63Meoo) — Canal **La Chica de Sistemas**, publicado 2026-08-21, 01:28, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-janet-jackson-rhythm-nation-hdd-la-chica-de-sistemas.md`
- **Dominio**: `informatica/` (subcarpeta Informatica). Short.

## La canción que colgaba discos duros (CVE-2022-38381, narrado)

Curiosidad técnica en formato short:

1. **El hallazgo (2005)**: un fabricante de portátiles descubrió que reproducir *Rhythm Nation* de Janet Jackson congelaba ciertos equipos — la canción contiene una frecuencia específica (~5200 Hz en el relato) que resonaba con los discos duros de esas máquinas.
2. **El mecanismo físico**: la resonancia acústica vibraba el chasis y hacía saltar los platos/cabezal del HDD → cuelgue total. No hacía falta reproducirla *en* el equipo: bastaba ponerla cerca, a volumen considerable.
3. **La respuesta**: Microsoft sacó un parche para Windows XP que suprimía esa frecuencia en el audio del sistema; el fenómeno llegó a tener **CVE**, catalogado como denegación de servicio por canal lateral mediante resonancia acústica (potencial vector de ataque).
4. **Hoy**: obsoleto con SSD/NVMe — sin partes móviles que resonar.

## Valor

Anécdota real (basada en el CVE-2022-38381 documentado) que ilustra hardware físico vs sonido y la categoría de ataques por canal lateral; material ligero de divulgación.

## Cruces

- Hardware mecánico vs estado sólido: contraste con el clúster de mantenimiento Windows ([[resumen-FAV-443-liberar-espacio-disco-c-windows]], [[resumen-FAV-444-quitar-proteccion-escritura-usb]]) — mismo eje disco/almacenamiento.
- La narradora usa de ejemplo los SSD/M.2 mostrados en cámara — material divulgativo de sistemas.
