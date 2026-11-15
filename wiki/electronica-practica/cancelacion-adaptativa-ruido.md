# Cancelación adaptativa de ruido (LMS)

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-15 (consolidación diferida de la ventana IOT Gral — umbral ≥2 alcanzado; no existía página previa del tema, se crea nueva).
- **Fuentes**: [[resumen-FAV-373-algoritmo-lms-alberto-pardo]] (Alberto Pardo — clase teórica con simulación MATLAB/Octave del algoritmo LMS) · [[resumen-FAV-374-soundshieldanc-github]] (repo GitHub SoundShieldANC — ANC aplicado a superficies ruidosas).
- **Ver también**: [[resumen-FAV-372-nrf24-problemas-soluciones-electronoobs]] (ruido EMC en la práctica).

## El concepto

**Filtro adaptativo LMS (Least-Mean-Square)**: un filtro transversal cuyos coeficientes se autoajustan por gradiente para minimizar la potencia de la señal de error — el algoritmo de debajo de la cancelación activa de ruido (ANC).

Dos procesos (FAV-373): **filtrado** (la entrada pasa por el filtro y se compara con la señal deseada → error) y **adaptación** (actualización de los coeficientes W según la derivada del error cuadrático, escalada por μ). La trampa documentada: **μ controla el compromiso convergencia/estabilidad** — μ=0,005 converge pero tarda ~0,1 s; μ=0,1 adapta rápido pero el error vuelve a crecer y el filtro deja de funcionar.

Aplicaciones documentadas:

- **Auriculares ANC y aire acondicionado** (FAV-373).
- **Biomedicina**: eliminar la interferencia de 60 Hz de la red en un ECG (50 Hz en España) y extraer el latido fetal del materno superpuesto — el LMS explota la correlación entre dos sensores que miden ruido relacionado pero no idéntico (FAV-373).
- **Superficies ruidosas** (FAV-374): micrófonos I2S MEMS montados en la ventana capturan el ruido exterior y excitadores sobre la misma superficie emiten la onda inversa (interferencia destructiva); núcleo software LMS/FDAF sobre ESP32 o Pico; proyecto en fase de idea, sin build funcional verificado.

## Notas

- Nota de temática: FAV-373 es DSP teórico, atípico del dominio; se mantiene en electronica-practica/ por la regla de membresía física única de la ventana.
- La onda inversa como principio físico conecta con la línea acústica del dominio (el amplificador de FAV-408 conduce la misma señal de audio por otro camino).
