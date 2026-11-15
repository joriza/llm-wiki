# Cómo diseñar una placa PCB en PC con EasyEDA (TodoElectronica21)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=LpYEEx2quZI)
- **Canal**: TodoElectronica21
- **Publicado**: 2016-06-15
- **Duración**: 12:54
- **Fuente original**: `raw/electronica-practica/2016-06-15-diseno-placa-pcb-easyeda.md`
- **Origen**: favoritos Chrome — Electronica y TV (eliminación de bookmark coordinada aparte por el orquestador)

## Qué trata

Recorrido de **EasyEDA** (eda.com, en la nube, multiplataforma: Mac/Linux/Windows/Android) diseñando el PCB de un **mini amplificador con LM386**:

1. **Capacidades**: esquemáticos, simulación de circuitos analógicos y digitales, PCB multicapa, importación desde Eagle, Altium, Kicad y LTspice; desarrollo colaborativo Open Hardware en la nube, chat de consultas, share con la comunidad.
2. **Flujo**: registro → New project / New schematic → componentes desde la barra izquierda (búsqueda de librerías, p. ej. LM386) → guardar como módulo → exportar a PDF/imagen/SVG (recomienda PDF o SVG).
3. **Conversión a PCB**: botón de conversión (eliminar antes los pads no representables), tamaño de placa aproximado calculado automáticamente, colocación de componentes con idea de facilitado el enrutado, pads para jack de sonido y alimentación, textos +/- que se imprimen en la serigrafía.
4. **Enrutado**: manual o **autorouter** (opciones: ancho de pista — 22 mil en el caso; capas de enrutamiento top/bottom/all); procesamiento online (~5 s en el circuito ejemplo); retoque manual de pistas, pistas negativas por la cara inferior, cambio de capa de un elemento seleccionado (cobre vs. serigrafía con top layer / top silk layer).
5. **Vista previa y acabado**: cámara 3D, **áreas de cobre** (copper areas) en top y bottom para aprovechar el cobre restante, idioma español (user language).
6. **Fabricación**: generación de **ficheros Gerber** (6 archivos) para imprimir la placa en casa, o pedido directo: 5 unidades de 2 capas ≈ 9,3 €; 100 unidades de 2 capas ≈ 9,4 €; 100 de 1 capa ≈ 18,3 (≈18 céntimos/unidad). Recursos, tutoriales y ejemplos de simulación en la plataforma.

## ASR a corregir / estado de la transcripción

Transcripción ASR sin puntuar, calidad media. Detalles: «AC eda / aca.com» = **EasyEDA (easyeda.com)**; «Kat» = **Kicad**; «autor Root» = **autorouter**; «seg grafía» = **serigrafía**; «top skill layer» = **top silk layer** (capa de serigrafía superior); «kerber» = **Gerber**; «bottom léger» = **bottom layer**.

## CRUCES

- **[[diseno-pcb-herramientas]]** (4/5): página de concepto creada en la consolidación (2026-11-14) — KiCad [[resumen-FAV-317-tutorial-basico-kicad]], PCB Wizard [[resumen-FAV-318-livewire-pcb-wizard-ideatronic]] y [[resumen-FAV-319-crear-componentes-pcb-wizard]], EasyEDA [[resumen-FAV-321-crear-circuitos-impresos-easyeda]].
- El uso del LM386 conecta con [[resumen-FAV-314-amplificador-audio-casero-ideatronic]]; los Gerber para fabricación en casa con [[resumen-FAV-312-circuito-impreso-metodo-del-planchado-ideatronic]] y la serigrafía del artwork con [[resumen-FAV-313-serigrafia-casera-pcb-ideatronic]].

## Dominio

`electronica-practica/` (herramientas de diseño de circuitos impresos).
