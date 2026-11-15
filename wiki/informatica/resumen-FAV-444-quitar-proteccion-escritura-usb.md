# FAV-444 — Quitar protección contra escritura de una USB en Windows

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=NsaSKp2Lwaw) — Canal **Wondershare Recoverit Español**, publicado 2021-11-19, 03:02, ES (subtítulos automáticos; el `&t=66s` del bookmark se ignora por S4).
- **Raw**: `raw/informatica/2026-11-15-quitar-proteccion-escritura-usb-windows.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## Marco

La protección contra escritura de un USB/SD puede ser **física** (interruptor del dispositivo) o **virtual** (permisos/estado del disco en Windows); deja el medio en solo lectura: no se escriben ni modifican archivos. Video corto que enumera 4 soluciones escalonadas.

## Las 4 soluciones (de menor a mayor complejidad)

1. **Interruptor físico**: revisar el switch lateral del pendrive o tarjeta SD y desbloquearlo.
2. **Permisos NTFS**: Mi PC → clic derecho en el dispositivo → Propiedades → Seguridad → Editar; ajustar permitir/denegar lectura y escritura.
3. **Diskpart** (símbolo de sistema): `list disk` → `select disk N` → `attributes disk clear readonly` (el video lo dicta como «la frase en inglés en pantalla»; el ASR lo deforma) → reiniciar.
4. **Registro** (regedit): en la clave de política de almacenamiento (`StorageDevicePolicies`), cambiar el valor `WriteProtect` de 1 a 0 y reiniciar (el path exacto se muestra solo en pantalla y no llega a la transcripción).

## Notas

- Contenido breve tipo troubleshooting con autopromoción final de Recoverit (excluida de la síntesis); formato de video-citado, sin demostración profunda de cada método.
- Tema: **protección contra escritura en Windows** — primera fuente. Cruza directamente con [[resumen-FAV-445-deep-freeze-uwf-filtro-escritura]] (el filtro de escritura como herramienta de protección del sistema es la cara inversa del mismo mecanismo) y con el mantenimiento de [[resumen-FAV-443-liberar-espacio-disco-c-windows]].
