# Analizando fuentes en T-con, parte I (Fredy Restrepo)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=IJ4rSOYc2Vk)
- **Canal**: Fredy Restrepo
- **Publicado**: 2017-12-09
- **Duración**: 18:26
- **Fuente original**: `raw/electronica-practica/2017-12-09-analizando-fuentes-tcon-parte-1.md`
- **Origen**: favoritos Chrome — Electronica y TV (pendiente eliminación de bookmark al cierre de la ventana total)

## Qué trata

Anatomía de las **fuentes internas de una tarjeta T-con** (caso: Samsung L32B551A6W), usando su esquemático de 4 hojas y simulación en LTspice:

1. **Tres etapas de la T-con**: proceso de señal (transforma la señal de la tarjeta principal para el panel), fuente (convierte el único voltaje de entrada en varios voltajes) y corrección gamma (ajusta la tonalidad del color a los estándares de visión).
2. **El integrado de fuente** (V81 60EFV / «1101» en el plano) recibe 12 V únicos y genera: **AVDD ~15,5 V** (elevadora step-up, 1,5 A), **3,3 V** (reductora step-down, alimenta el procesador de señal), **12 V @ 200 mA** (regulador lineal desde los 3,3 V), **VGH ~27 V** y **VGL −5…−7 V** (ambas para polarizar los MOSFET/TFT del panel LCD, por topología **charge pump / bomba de carga** — condensador para duplicar o invertir voltaje).
3. **Funcionamiento step-up**: switch interno gobernado por oscilador de 500–750 kHz; la bobina se carga con el switch cerrado y entrega su energía por el diodo al filtro cuando se abre; realimentación por divisor resistivo al pin FB (referencia 1,162 V) que ajusta el ancho de pulso y mantiene el voltaje constante ante variaciones de carga. Misma fórmula de salida de siempre: (1 + R101+R102 / R103) × Vref — con los valores impresos en las resistencias se puede calcular con la placa enfrente.
4. **Fuente de 3,3 V**: topología reductora con la misma lógica bobina + diodo + condensador; de ella cuelga el regulador lineal de 12 V @ 200 mA.

Es la «parte I»: el análisis se centra en AVDD y 3,3 V (bombas de carga VGH/VGL anunciadas para continuar).

## ASR a corregir / estado de la transcripción

Transcripción ASR utilizable (mayúsculas ausentes, números oralizados). Errores: «charles pong» = **charge pump**; «lt spies 4» = **LTspice IV**; «bebé 81 60 efe v» / «v de 81 60 efe v» = identificador del integrado; «switch/suiche» no normalizado; «diodos o kit de 3» = diodo Schottky D3.

## CRUCES

- Complementa los videos de diagnóstico de fuentes conmutadas del mismo dominio (p. ej. [[resumen-FAV-316-fuente-conmutada-oscilando]]): allí el criterio práctico de taller (¿oscila o no?), aquí la anatomía de las fuentes dentro de un subsistema concreto (T-con).
- Concepto **bomba de carga (charge pump)** aparece como topología no cubierta aún por el «curso de fuentes» del canal — tema-candidato transversal de electrónica.
- Misma familia de topologías conmutadas (step-up/step-down, bobina + diodo + condensador, realimentación FB) que en [[resumen-FAV-306-zener-diode-tester-jericho-uno]] y los focos LED con fuente conmutada (FAV-008/009).

## Dominio

`electronica-practica/` (fuentes de alimentación — TV/T-con).
