# FAV-445 — UWF: filtro de escritura unificado de Windows (Deep Freeze gratis)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=lH82Nx3dHM4) — Canal **Fernando Branca**, publicado 2025-11-09, 14:36, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-deep-freeze-uwf-filtro-escritura.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## Marco

El **UWF (Unified Write Filter, filtro de escritura unificado)** es una utilidad integrada en Windows (oculta y deshabilitada por defecto) que crea una **superposición (overlay)** virtual donde se escriben todos los cambios de la sesión; al reiniciar, la superposición desaparece y el disco vuelve a su estado original. Es equivalente gratuito a Deep Freeze o Shadow Defender: la máquina «congelada» vuelve siempre al mismo estado — ideal para PCs de uso público, laboratorios o pruebas de software riesgoso.

## Activación y configuración básica

1. **Habilitar**: «Activar o desactivar las características de Windows» → Bloqueo de dispositivo → Filtro de escritura unificado.
2. **Activar (cmd como admin, en `System32`)**: `uwfmgr.exe volume protect C:` (proteger el volumen C) y `uwfmgr.exe filter enable`; tras reiniciar queda congelado.
3. **Superposición**: por defecto 1 GB **en RAM**. `uwfmgr.exe overlay set type disk` la mueve al disco; `uwfmgr.exe overlay set maximumsize 10240` la agranda a 10 GB.
4. **Evitar cuelgues al llenarse**: `uwfmgr.exe overlay set pass-through on` (al llenarse, sigue escribiendo en el espacio libre del disco) + umbrales de aviso: `overlay set warning threshold 5000` y `critical threshold 8000` (MB).
5. **Verificación**: `uwfmgr.exe get-config` muestra configuración actual y de la próxima sesión.
6. **Extras mencionados**: configuración de servicio (las actualizaciones de Windows se aplican sin descongelar), exclusiones de archivos/carpetas/registro (directorios que sí persisten). GUI tercerizada anabooks UWF utility (el autor desconfía y prefiere cmd — además muestra el tamaño mal).

## Notas

- Contenido de autor con demostración en vivo, incluida la corrección de sus propios errores de tipeo (útil pedagógicamente). Configuración básica amateur, como dice el título.
- Tema: **filtros de escritura / congelamiento de sistema** — primera fuente de este tema en la wiki. Cruza con [[resumen-FAV-444-quitar-proteccion-escritura-usb]] (la protección contra escritura como mecanismo, en el USB vs. en el volumen del sistema) y con el mantenimiento preventivo de [[resumen-FAV-443-liberar-espacio-disco-c-windows]] (limpiar la suciedad vs. impedir que se escriba).
