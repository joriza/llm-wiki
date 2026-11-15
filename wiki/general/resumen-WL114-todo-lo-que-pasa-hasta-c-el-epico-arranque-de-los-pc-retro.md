# Resumen: TODO lo que pasa HASTA C:\ || El ÉPICO arranque de los PC retro

- **Fuente original**: `raw/general/2026-10-31-todo-lo-que-pasa-hasta-c-el-epico-arranque-de-los-pc-retro.md` (WL-114, tramo 10)
- **Canal**: PC Clásico
- **Video**: https://www.youtube.com/watch?v=a1csv05WWdM
- **Publicado**: 2026-10-31 · **Duración**: 13:24 · **Idioma**: español (ASR)

## Qué trata

Recorrido técnico completo del proceso de arranque de un PC clásico (MS-DOS): desde la BIOS y el POST hasta el prompt C:\, con todos los mensajes de error típicos, su causa exacta y cómo resolverlos.

## Puntos clave

- **BIOS ≠ firmware ≠ POST**: la BIOS es un firmware en ROM que hace comprobaciones iniciales y ofrece servicios elementales de acceso al hardware antes del sistema operativo; el POST es su diagnóstico inicial, que empieza incluso antes de que haya imagen en el monitor.
- **Arranque desde disquete**: la BIOS busca un sector de arranque válido (pista 0, cara 0, sector 1). Geometría de un disquete de 3,5″ doble densidad 720 KB: 80 pistas por cara, 9 sectores de 40° por pista. El bloque cargado en RAM busca IO.SYS y MSDOS.SYS; sin ellos, «Error de disco de sistema».
- **Arranque desde disco duro**: sin disquete, la BIOS carga el MBR (código + tabla de particiones al final del bloque: 4 particiones primarias máx., ~20 lógicas en sistemas clásicos). El MBR comprueba partición activa y arrancable y carga el sector de arranque de la partición en la dirección 0000:7C00 — igual da origen disquete o disco.
- **La tríada MS-DOS**: IO.SYS dirige el arranque, inicializa dispositivos y muestra «Iniciando MS-DOS…» (texto visible en editor hexadecimal dentro del archivo); ejecuta CONFIG.SYS y carga COMMAND.COM (el shell — término anterior a Linux; Windows 3.1 fue un shell de DOS). MSDOS.SYS contiene el kernel: servicios del sistema vía interrupción 21h. El código se ejecuta desde RAM (memoria convencional o alta), no desde disco.
- **Mapa de errores y diagnóstico** (diagrama de flujo del autor): *Missing operating system* → problema de partición (reinstalar); *Error loading operating system* → posible fallo físico del disco (scandisk); *Disk boot failure* → MBR corrupto o ilegible; *Invalid partition table* → comprobar con FDISK una única partición activa (no suele ser hardware); *Error de disco de sistema* → verificar IO.SYS/MSDOS.SYS, instalados con SYS o el instalador — antes de DOS 5, IO.SYS debía ocupar los primeros sectores del disco y no bastaba copiarlo.

## Notas de triage

- Divulgación técnica de calidad, con demos reales (MBR corrupto a propósito, basura gráfica en pantalla, IO.SYS en hex editor); ideal como referencia de retrocomputing/diagnóstico. Enlaces a videos previos del canal sobre memoria de DOS y 286/386 como material complementario.
- Dominio destino previsto: general (retrocomputing/hardware, sin dominio propio — S4, sin dominios nuevos) — consolidación diferida (L12). Cruce natural con fuentes de hardware/bajo nivel si las hay.
- Bloque de miembros del canal al final (excluido de la síntesis); sin patrocinio comercial.

- **Página de concepto**: [[historia-de-la-tecnologia]] — pieza «capa software» del clúster con WL-116 (fibra óptica) y WL-117 (Autodesk) (consolidación 2026-11-15).
