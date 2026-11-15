# Tutorial básico de KiCad (ElectroTutoriales)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=b_yza-hhNdY)
- **Canal**: ElectroTutoriales
- **Publicado**: 2018-04-02
- **Duración**: 40:39
- **Fuente original**: `raw/electronica-practica/2018-04-02-tutorial-basico-kicad.md`
- **Origen**: favoritos Chrome — Electronica y TV (pendiente eliminación de bookmark al cierre de la ventana total)

## Qué trata

Tutorial completo de flujo de trabajo en **KiCad** (software libre 100 %, sin cuenta ni licencia ni límites de tamaño/capas — contraste con la versión gratuita de Eagle) mediante un proyecto real: placa para el **LX60ML8B**, referencia de voltaje de alta precisión (encapsulado SO-8) con 3 capacitores:

1. **Arquitectura**: esquemático (EESchema) + layout (PcbNew) comunicados por un **netlist que se genera a mano** — a diferencia del forward/back-annotation automático de Eagle. Los componentes son independientes del encapsulado: primero se dibuja el símbolo, luego se asigna huella (footprint).
2. **Comandos base** (~90 % del uso): `g` mover con conexiones, `m` mover solo el componente (rompe conexiones), `r` rotar (combinable con g/m), `a` agregar componente, `e` editar; todo también en el menú contextual de clic derecho. Uso intensivo simultáneo teclado + mouse.
3. **Creación de componente/librería**: editor de librerías, símbolo con pines nombrados y numerados (círculo de conexión hacia afuera), guardar la librería **dentro de la carpeta del proyecto** (criterio del autor: portabilidad al compartir) y activarla en Preferencias.
4. **Flujo esquemático → layout**: anotación automática de referencias, valores de componentes, **ERC** (control de reglas eléctricas: marcas de no-conectados, uniones; el aviso «sin alimentación» se ignora si nadie declara pin de salida de alimentación), **CvPcb** para asignar huellas (librerías de huellas se descargan/actualizan online), generación del netlist, lectura en PcbNew, acomodo con `g`/`r`, cambio de huella tardío vía «intercambiar huellas» + re-lectura del netlist (aquí no hay sincronización automática).
5. **Enrutado y acabado**: regla global de ancho de pista (0,4 mm acorde a las patas), grilla de 10 mils, **zona de cobre a masa (ground pour)** en capa superior, DRC, mover referencias para la máscara de componentes, indicador de pin 1 como texto.
6. **Impresión para transferencia térmica**: capa Front con **invertir** (espejado para el método de transferencia), opción **«marca pequeña» de taladro** (incluida de serie, a diferencia de Eagle que requiere script) para centrar la mecha a mano; visor **3D** (tecla F3/al 3), lienzos (por defecto / OpenGL / Cairo — cada uno con funciones distintas), y **crear matriz** para paneles de placas repetidas (banalización casera rápida).

## ASR a corregir / estado de la transcripción

Transcripción ASR utilizable pero con muchos nombres propios deformados: «kit kat / chica / kick-ass / kika / que cal» = **KiCad**; «deal / áridos / niveles / lea» = **Eagle**; «x 60 mil 8» = **LX60ML8B**; «huellas/vueltas» = footprints; «rc / cb psv» = ERC/DRC/CvPcb; «netflix» = netlist; «soy» = SOIC; «picada» = KiCad.

## CRUCES

- **[[diseno-pcb-herramientas]]** (1/5): página de concepto creada en la consolidación (2026-11-14) con PCB Wizard/LiveWire (FAV-318/319) y EasyEDA (FAV-320/321) — aquí va el contraste Eagle vs KiCad (licencia, límites, sincronización esquemático-layout, creación de librerías).
- La impresión espejada con «marca pequeña» conecta con el método de planchado ([[resumen-FAV-312-circuito-impreso-metodo-del-planchado-ideatronic]]) y la serigrafía ([[resumen-FAV-313-serigrafia-casera-pcb-ideatronic]]) del mismo dominio de fabricación casera de PCB.
- La zona de cobre a masa y las reglas de diseño (ancho de pista, DRC) son conceptos transversales a cualquier herramienta de diseño PCB.

## Dominio

`electronica-practica/` (herramientas de diseño de circuitos impresos).
