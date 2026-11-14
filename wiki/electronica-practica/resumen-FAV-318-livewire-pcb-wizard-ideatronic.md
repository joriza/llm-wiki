# LiveWire y PCB Wizard 2017 (Ideatronic)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Ik3_e90AhPQ)
- **Canal**: Ideatronic
- **Publicado**: 2017-01-27
- **Duración**: 10:00
- **Fuente original**: `raw/electronica-practica/2017-01-27-livewire-pcb-wizard-ideatronic.md`
- **Origen**: favoritos Chrome — Electronica y TV (pendiente eliminación de bookmark al cierre de la ventana total)

## Qué trata

Tutorial del par **LiveWire + PCB Wizard** (portables, trabajando juntos): simulación/captura en LiveWire y conversión automática a circuito impreso en PCB Wizard, mediante un puente rectificador de 4 diodos 1N4007 con condensador electrolítico de 4700 µF:

1. **LiveWire**: galería de componentes (fuentes, conectores, interruptores, pasivos, semiconectores); edición con clic y arrastre, rotación con la flecha, botón de simulación («run»); modelos de componentes intercambiables (clic derecho → Models → 1N4007) y valores editables (voltaje de la fuente AC, capacidad).
2. **Conversión a PCB**: Tools → Convertir con ambos programas abiertos; modo «el programa especifica las opciones por mí» o modo experto paso a paso (forma rectangular/circular, tamaño, todos los componentes juntos, sin fuente externa, caminos diagonales). El 100 % de las conexiones queda hecho automáticamente.
3. **Layout**: modo **Real Work** (equivalente a la máscara de componentes) para acomodar componentes a gusto; tras mover, Tools → **Auto Route** (con diagonales) para regenerar las pistas; textos con fuente configurable; la capa **Artwork** es la que se imprime; el relleno negro de cobre se puede suprimir si no se quiere.
4. **Impresión**: guardar en LiveWire y abrir el archivo en **PCB Wizard portable** (evita instaladores); File → Open e imprimir directamente el artwork — la impresión desde LiveWire da mala calidad para papel fotográfico.

## ASR a corregir / estado de la transcripción

Transcripción ASR utilizable. Errores: «diatonic» = **Ideatronic**; «light wire / livewire» inconsistente; «chuad» = «chequeado/marcados»; «real work» ≈ modo de vista real; «a work / atwork» = **Artwork**; «autor rootear» = **auto-route**; «burera» aquí no aparece (sí en FAV-316); «suprimir» correcto.

## CRUCES

- Segunda voz del **concepto-candidato diseño-pcb-herramientas** (con [[resumen-FAV-317-tutorial-basico-kicad]]: contraste netlist/conversión manual en KiCad vs conversión automática LiveWire→PCB Wizard; y con EasyEDA FAV-320..322, relevo siguiente). Concepto: página única en la próxima consolidación.
- **Entidad Ideatronic**: 3.ª fuente del canal en esta ventana ([[resumen-FAV-312-circuito-impreso-metodo-del-planchado-ideatronic]], [[resumen-FAV-313-serigrafia-casera-pcb-ideatronic]]) — refuerza su página de entidad.
- El flujo de impresión sobre papel fotográfico es el mismo del método del planchado (FAV-312) y la serigrafía (FAV-313).

## Dominio

`electronica-practica/` (herramientas de diseño de circuitos impresos).
