# Herramientas de diseño de PCB (KiCad, PCB Wizard/LiveWire, EasyEDA)

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-14 (consolidación diferida de la curación de favoritos de Chrome — umbral consolidado en el cierre de la ventana `Electronica y TV/`).
- **Fuentes**: [[resumen-FAV-317-tutorial-basico-kicad]] (ElectroTutoriales — KiCad), [[resumen-FAV-318-livewire-pcb-wizard-ideatronic]] (Ideatronic — LiveWire + PCB Wizard), [[resumen-FAV-319-crear-componentes-pcb-wizard]] (Kriss Electronics — encapsulados propios en PCB Wizard), [[resumen-FAV-320-diseno-placa-pcb-easyeda]] (TodoElectronica21 — EasyEDA) y [[resumen-FAV-321-crear-circuitos-impresos-easyeda]] (Kriss Electronics — EasyEDA).
- **Ver también**: [[fabricacion-casera-pcb]] (el destino del artwork) · [[ideatronic]].

## El concepto

Las cinco voces del dominio sobre **software EDA** permiten comparar tres generaciones de flujo esquemático → PCB:

| Herramienta | Modelo | Sincronización esquemático↔layout | Fabricación |
| --- | --- | --- | --- |
| **KiCad** (FAV-317) | Libre, sin cuenta ni límites | **Netlist generado a mano** (sin forward/back-annotation); símbolo y huella independientes (CvPcb); ERC/DRC | Impresión espejada con «marca pequeña» de taladro de serie; matriz de placas; visor 3D |
| **LiveWire + PCB Wizard** (FAV-318/319) | Comerciales, portables | **Conversión automática** (100 % de conexiones auto-ruteadas); simulación en LiveWire antes de convertir | Capa Artwork impresa para el método del planchado |
| **EasyEDA** (FAV-320/321) | En la nube, gratuito, multiplataforma | Conversión integrada a PCB; autorouter online; importación desde Eagle/Altium/KiCad/LTspice | Gerbers para casa o pedido directo a fábrica (~9 € por 5 placas de 2 capas; cobre 1 oz = 35 µm) |

Conceptos transversales a las tres: creación de **librerías propias** (símbolo en KiCad ↔ encapsulado Pentawatt en PCB Wizard — ambos parten de la hoja de datos y su grilla normalizada), capas diferenciadas (cobre, board outline, **silk screen**, Real Component/Artwork), zonas de cobre a masa (ground pour/copper areas) y ancho de pista según corriente.

## Notas de verificación y confianza

- Todos los tutoriales son ASR con nombres propios deformados (KiCad/Eagle/netlist/footprint entre otros — ver ASR en cada resumen); los flujos descritos son de 2016–2018: las versiones actuales de las herramientas pueden diferir.
- Contrastes registrados en las fuentes (no contradicciones): licencia y límites Eagle vs KiCad (FAV-317); conversión manual vs automática (FAV-317 ↔ 318); fabricación casera vs fábrica (FAV-321 ↔ [[fabricacion-casera-pcb]]).
- Consejo transversal de FAV-321: con herramientas en la nube, **hacer copias locales** de los proyectos.
