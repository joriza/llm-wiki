# Crear circuitos impresos con EasyEDA (Kriss Electronics)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ttUVIRd8Lsg)
- **Canal**: Kriss Electronics
- **Publicado**: 2017-07-02
- **Duración**: 11:31
- **Fuente original**: `raw/electronica-practica/2017-07-02-crear-circuitos-impresos-easyeda.md`
- **Origen**: favoritos Chrome — Electronica y TV (eliminación de bookmark coordinada aparte por el orquestador)

## Qué trata

Tutorial completo de **EasyEDA** (EDA = automatización de diseño electrónico; online, gratuito, multiplataforma incluido Android), con caso práctico: un **oscilador astable a transistores BC547 con dos LEDs intermitentes**:

1. **Esquemático**: cuenta obligatoria; galería de componentes comunes (resistencias en formato europeo o estadounidense, condensadores con polaridad, BC547 en espejo, LEDs de 3 mm); rotación con barra espaciadora; edición de referencia y valor con doble clic; grilla, escala y color de fondo configurables; interconexión con la herramienta de cable.
2. **Conversión a PCB**: menú «Convert project to PCB»; editor con capas diferenciadas (cobre, board outline, componentes…) — elegir siempre la capa correcta; redimensionado del board arrastrando esquinas o redibujando el contorno con la herramienta track en la capa board outline; ajuste de pads (tamaño, forma, agujero, capa) desde el menú derecho.
3. **Enrutado**: autorouter disponible para quien no domina el trazado, pero el autor prefiere pistas a mano en la capa bottom layer; ancho de pista por defecto muy delgado — doble clic para fijarlo (40 en el ejemplo); textos en la capa top silk (máscara/serigrafía de componentes).
4. **Fabricación integrada**: botón **Fabrication/PCB plate** con parámetros del pedido — número de capas, dimensiones reales (no modificar), cantidad (mínimo 5, más de 8000 máximo), precisión (dejar la de defecto), color de terminación (rojo, negro…), espesor de cobre (1 oz = 35 µm por defecto, 2–3 oz posible); precio en vivo según opciones; carrito y pago. Galería amplia de componentes para añadir al pedido.
5. **Consejos**: todo gratis (sin licencia), funciona en la nube desde cualquier dispositivo, pero **hacer copias locales de los proyectos**; el proyecto y su PDF quedan compartidos en la descripción.

## ASR a corregir / estado de la transcripción

Transcripción ASR sin puntuar, calidad media. Detalles: «isic de edad / silleda» = **EasyEDA**; «michelle años» = **menu desplegable**; «convertir proyectos en psv / psb / psdb / especie» = **PCB**; «botón fabrication notebook» = **Fabrication/PCB plate**; «veamos player» = **layers**; «una onza» = **1 oz (35 µm)**; «tops y» = **top silk**; «borr é» el board para redimensionarlo.

## CRUCES

- Quinta voz del **concepto diseño-pcb-herramientas** y tercera EasyEDA-del-clúster (con [[resumen-FAV-320-diseno-placa-pcb-easyeda]], [[resumen-FAV-317-tutorial-basico-kicad]], [[resumen-FAV-318-livewire-pcb-wizard-ideatronic]], [[resumen-FAV-319-crear-componentes-pcb-wizard]]) → página única de concepto en la próxima consolidación.
- El oscilador astable a transistores con LEDs conecta temáticamente con el clúster de [[resumen-FAV-005-como-funciona-un-transistor-del0al1]].
- Fabricación a fábrica (vs. casera): contraste con [[resumen-FAV-312-circuito-impreso-metodo-del-planchado-ideatronic]] y [[resumen-FAV-313-serigrafia-casera-pcb-ideatronic]].

## Dominio

`electronica-practica/` (herramientas de diseño de circuitos impresos).
