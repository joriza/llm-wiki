# Amplificador de audio casero con LM386 (Ideatronic)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=aMgSYiiJ0rY)
- **Canal**: Ideatronic
- **Publicado**: 2018-03-20
- **Duración**: 04:50
- **Fuente original**: `raw/electronica-practica/2018-03-20-amplificador-audio-casero-ideatronic.md`
- **Origen**: favoritos Chrome — Electronica y TV (eliminación de bookmark coordinada aparte por el orquestador)

## Qué trata

Montaje del **mini amplificador de audio más pequeño del mundo** con el integrado **LM386**, sobre baquelita universal punto a punto:

1. **Componentes**: LM386, potenciómetro (control de volumen/ganancia), plug de audio, condensador de 100 µF, fuente (batería de 9 V) y parlante.
2. **Cableado del LM386**: pin 2 (inversor) a tierra y a un extremo del potenciómetro; pin 3 (no inversor) al cursor del potenciómetro; el otro extremo del potenciómetro al positivo del plug (negativo a tierra). Alimentación: pin 6 a +9 V (rango 5–12 V), pin 4 a tierra.
3. **Salida**: pin 5 → condensador de 100 µF → terminal negativa del parlante (positiva a tierra); el condensador separa la componente continua.
4. **Montaje**: diseño previo de la disposición de componentes; soldado lo más compacto posible y conexiones con estaño; mejora sugerida: recortar el plug para reducir tamaño.
5. **Prueba**: conexión de batería y parlante por borneras; prueba con un celular — funciona, suena alto con algo de distorsión a volumen alto.

## ASR a corregir / estado de la transcripción

Transcripción ASR de buena calidad (con puntuación). Detalles: «patika/patica» = pata/patilla; «100 microfaradios» correcto; el autor llama al LM386 «amplificador operacional» — es un **amplificador de potencia de audio** de bajo consumo.

## CRUCES

- **Cuarta voz de la entidad Ideatronic** en esta ventana (con [[resumen-FAV-312-circuito-impreso-metodo-del-planchado-ideatronic]], [[resumen-FAV-313-serigrafia-casera-pcb-ideatronic]], [[resumen-FAV-318-livewire-pcb-wizard-ideatronic]]) → página de entidad en la próxima consolidación.
- El condensador de acoplo de salida conecta con [[resumen-FAV-007-condensador-luis-carlos-galan]]; el punto a punto es la alternativa de montaje previa a la fabricación de un PCB.

## Dominio

`electronica-practica/` (audio — amplificadores caseros).
