# Cubos y matrices LED multiplexadas

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-15 (consolidación diferida de la ventana IOT Gral — umbral ≥2 alcanzado con 4 fuentes).
- **Fuentes**: [[resumen-FAV-397-matriz-led-sin-controlador-arduino-demmake]] (deMMake — matriz 8×8 sin controlador, monográfica del multiplexado por software) · [[resumen-FAV-398-cubo-led-conexion-pic-profe-garcia]] (El profe García — cubo 4×4×4 al PIC) · [[resumen-FAV-402-cubo-led-3x3x3-muy-facil]] (Muy Fácil De Hacer — cubo 3×3×3 con Arduino) · [[resumen-FAV-403-cubo-led-3x3x3-rgb-automatico-robot-uno]] (Robot UNO — cubo 3×3×3 sin micro). Cruces: FAV-399/400 (cubos 8×8×8, SKIP sin narración) y la línea WS2812B ([[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia]]).
- **Ver también**: [[transistor-bjt]] · [[pantallas-oled]] (el otro clúster de displays).

## El concepto

**Multiplexar LEDs**: organizarlos en filas/columnas (o columnas/capas en un cubo) para controlar N×M LEDs con N+M salidas, encendiendo una fila por vez y apoyándose en la **persistencia visual**. El problema que lo justifica (FAV-397): al polarizar dos filas y dos columnas se encienden los 4 LEDs de las intersecciones — la matriz no distingue dirección; la solución es encender las filas alternadamente (~2 ms por fila).

Los tres niveles del clúster:

1. **Sin controlador, software puro** (FAV-397): 16 pines del Arduino directo a la matriz 8×8; la correspondencia fila/columna↔pin se declara en `setup` con dos vectores (el orden físico del cableado es irrelevante); caracteres como matriz de bits; animación por frames sucesivos.
2. **Con micro y transistores** (FAV-398/402): el cubo añade la tercera dimensión — capas unificadas al negativo conmutadas por el lado bajo con **2N2222A** (base vía 10 kΩ) y columnas con resistencia limitadora (150-500 Ω); solo la intersección capa×columna enciende. FAV-398 lo lleva al PIC16F con LM7805 y cristal de 4 MHz; FAV-402 lo hace en protoboard con Arduino y código de efectos descargado.
3. **Sin microcontrolador** (FAV-403): LEDs RGB **automáticos** (CI interno que cicla colores con solo alimentación, 2 patas) — el cubo funciona directo a 9-12 V, sin multiplexado activo; análogo antiguo del LED direccionable WS2812 (FAV-393).

Constancia transversal: **probar cada LED antes de soldarlo** y estructuras físicas por capas con plantilla de madera y patas dobladas/soldadas (FAV-402/403).

## Notas

- El clúster convive con la línea de LED direccionables WS2812B (pantalla 16×16, 7 segmentos gigante, tiras FastLED), que elimina el multiplexado a cambio de un LED más caro — contraste documentado en FAV-375/397.
- FAV-399/400 (cubos 8×8×8) son montajes musicales sin narración: SKIP, solo referencia visual.
