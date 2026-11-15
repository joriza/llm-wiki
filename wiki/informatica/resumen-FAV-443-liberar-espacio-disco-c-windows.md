# FAV-443 — Liberar espacio en Disco C / optimizar PC Windows 7–11

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=QjzAA-vRCp0) — Canal **La Mano Tecno**, publicado 2022-10-24, 12:12, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-liberar-espacio-disco-c-windows.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## Marco

Guía de mantenimiento básico de Windows para recuperar espacio en la unidad del sistema, aplicable a Windows 7/8/10/11. Paso previo no negociable: crear un punto de restauración antes de tocar nada.

## Los pasos

1. **Archivos temporales manuales** (`Win+R`): `tmp` y `%temp%` — seleccionar todo y eliminar; los archivos en uso se omiten sin problema. `prefetch` con precaución: si se borra, el sistema arranca más lento hasta regenerarlos (mirar primero cuánto ocupa — a veces son pocos MB y no vale la pena).
2. **Desfragmentar/optimizar** la unidad: Propiedades del disco → Herramientas → Optimizar.
3. **Liberador de espacio en disco** (clásico): seleccionar todo lo posible, incluida «Limpiar archivos de sistema» (paquetes de drivers de Windows Defender/instalación); revisar la papelera antes de vaciarla y la carpeta Descargas (muchas veces el usuario la movió a otro disco y hay que revisarla aparte).
4. **Búsqueda de archivos grandes**: en el explorador, buscar por `tamaño: giganticos` (>4 GB) y decidir cuáles borrar o mover a otro disco. Buena práctica general: sistema en C y archivos grandes en otros discos.
5. **Configuración → Sistema → Almacenamiento**: repaso de aplicaciones instaladas (desinstalar las no usadas), archivos grandes y temporales restantes.
6. **Automatización — Sensor de almacenamiento**: activarlo semanalmente eliminando archivos temporales cada 14 días; **nunca** tocar la carpeta Descargas automáticamente (puede contener archivos importantes).

## Notas

- El video abre y cierra con patrocinio de un editor de video (Movavi) — excluido de la síntesis.
- Tema complementario del mantenimiento Windows; cruza con el clúster de optimización del mismo canal (lista en descripción) y, en la wiki, con el tema de filtros de escritura de [[resumen-FAV-444-quitar-proteccion-escritura-usb]] y [[resumen-FAV-445-deep-freeze-uwf-filtro-escritura]] (congelar el estado del sistema es la otra cara del mantenimiento: prevenir la suciedad vs. limpiarla).
