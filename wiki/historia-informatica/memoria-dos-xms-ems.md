# Memoria en MS-DOS (XMS/EMS)

- **Tipo**: página de concepto.
- **Dominio**: `historia-informatica/`.
- **Actualizado**: 2026-11-11 (consolidación del lote historia-informatica).
- **Fuentes**: 1 resumen con desarrollo sustancial ([[resumen-tenias-ram-pero-no-podias-usarla-el-absurdo-de-la-memoria-en-msdos-pc-clasico]]).

## El problema: dónde importaba más que cuánta

En un PC de la era MS-DOS, **tener memoria y poder usarla eran dos cosas muy distintas**: un PC con 4 MB de RAM rechazaba juegos que pedían medio megabyte («no hay memoria suficiente»; «no hay memoria EMS»). Aunque la máquina tiene una sola memoria física, **en MS-DOS no hay una memoria, sino muchas** — dónde estaba importaba tanto o más que cuánta había.

## La frontera de 1 MB

Causa histórica: el **8086/8088** solo direccionaba 1 MB. El bloque inferior de 1 MB es **especial y fijo**: no crece por más RAM que instales. Encima de la frontera, la memoria simplemente se acumula.

## Los cinco tipos

1. **Convencional (640 KB)**: donde el código ejecutable **debe** cargar — fija, limitada e imprescindible: la más valiosa. (Antes 512 KB; el resto del megabyte se reservaba para hardware.)
2. **Superior (upper, 384 KB)**: ese espacio reservado; MS-DOS usa sus huecos para controladores y residentes (~100-130 KB útiles en la práctica).
3. **Alta (high, ~64 KB)**: pequeña zona **por encima** de 1 MB, único bloque accesible directamente en modo real (segmentos y offsets del x86); el propio MS-DOS se carga allí para liberar convencional. No confundir con la superior.
4. **Extendida (XMS)**: la que supera 1 MB (el 286 direcciona 16 MB, el 386 hasta 4 GB según la fuente — verificado 2026-11-11: bus de direcciones de 32 bits del 80386 → 4 GB; Wikipedia «Intel 80386»). Inaccesible en modo real sin el controlador **HIMEM.SYS**; solo datos, no código (Dune 2 la usaba para audio).
5. **Expandida (EMS)**: acceso a la memoria por encima de 1 MB **a través de una ventana** en la memoria superior — «un portal entre dos mundos» legal en modo real; bloque a bloque. En la era del 286 exigía tarjetas de expansión; desde el **386** se emula por software (**EMM386**).

## La salida

La incomodidad de XMS/EMS empujó el tránsito hacia el **modo protegido** y, antes, los **DOS extenders**.

## Véase también

- [[historia-lenguajes-programacion]] — el Assembly de la misma era de hardware.
- [[gabe-newell]] — Doom corría sobre ese MS-DOS puro que el vídeo describe.
