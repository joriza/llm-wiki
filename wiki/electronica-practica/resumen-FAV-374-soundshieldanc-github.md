# FAV-374 — SoundShieldANC (repo GitHub ginomcfino)

- **Fuente**: [GitHub — ginomcfino/SoundShieldANC](https://github.com/ginomcfino/SoundShieldANC) · C++ · 2★ · último push 2024-02-22 · FAV-374
- **Tipo**: web (repo de código) — sin raw

## De qué va

Proyecto open source (fase de idea/exploración, con petición explícita de ayuda a la comunidad) de cancelación activa de ruido (ANC) sobre superficies ruidosas — típicamente ventanas: micrófonos I2S montados en la superficie capturan el ruido exterior y altavoces/excitadores (exciter de 20 W Dayton en el intento del autor) sobre la misma superficie emiten la onda inversa para interferencia destructiva, reduciendo el sonido que entra al ambiente.

- **Hardware previsto**: microcontrolador (ESP32 o Raspberry Pi Pico), micrófono I2S MEMS (SPH0645LM4H de Adafruit), excitadores de superficie o altavoces piezoeléctricos, alimentación y cableado. El propio autor relata su intento fallido con ESP32 + I2S + excitador Dayton: los problemas que arrastraba eran la configuración de cableado y obtener audio limpio del micrófono.
- **Software**: C++ sobre el micro; núcleo es un algoritmo adaptativo — LMS, filtro adaptativo en dominio de frecuencia (FDAF), y como alternativas (FuX/N)LMS/RLS o machine learning — que lee muestras del micrófono I2S y adapta la salida al ruido entrante en tiempo real.
- **Consideraciones técnicas del README**: sistema de control en tiempo real; amortiguación del estrés vibracional (acoplamiento al material, posicionamiento y enclosure); detección continua de la frecuencia de resonancia para evitarla; filtros pasa-altos/bajos para limpiar la entrada (anomalías, sangrado de ruido) y extracción de la fuente de ruido; emparejar longitudes de onda para la interferencia destructiva; retroalimentación continua micro↔exciter, entrada multicanal y hasta un CI propio con Python embebido.
- **Estado**: el README enumera potenciales «patent claims» y pide colaboración; no hay evidencia de un build funcional.

## Notas

- Cruces directos con [[resumen-FAV-373-algoritmo-lms-alberto-pardo]] — el video explica exactamente el algoritmo LMS que este repo propone como núcleo. El ESP32 y el micrófono I2S conectan con la línea ESP32/Arduino del dominio ([[resumen-FAV-358-programar-esp32-arduino-electronicspot]], [[resumen-FAV-359-de-arduino-a-esp32-iotlab]]); Pico aparece también en [[resumen-FAV-348-pico-curso-micropython]].
- Umbral: «cancelación adaptativa de ruido» suma su segunda fuente (FAV-373 + FAV-374) → concepto candidato deferido para consolidación (no se crea página aún, umbral anotado).
