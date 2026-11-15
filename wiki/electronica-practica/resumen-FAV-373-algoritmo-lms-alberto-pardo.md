# FAV-373 — Explicación y simulación del algoritmo LMS

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=-2ySB6ZNL2A) · canal Alberto Pardo · 2017-12-13 · 21:53 · FAV-373
- **Transcripción**: `raw/electronica-practica/2017-12-13-algoritmo-lms-explicacion-simulacion-alberto-pardo.md`
- **Dominio**: electronica-practica/

## De qué va

Clase con simulación (MATLAB/Octave) del filtro adaptativo LMS (Least-Mean-Square): un filtro transversal cuyos coeficientes se autoajustan para minimizar la potencia de la señal de error.

- **Dos procesos**: filtrado (la entrada pasa por el filtro y se compara con la respuesta deseada para generar la señal de error) y adaptativo (actualización de los coeficientes W según el gradiente — derivada del error cuadrático — escalado por μ, que controla la velocidad de convergencia).
- **Aplicaciones**: cancelación activa de ruido (auriculares, aire acondicionado), biomedicina — eliminar la interferencia de 60 Hz de la red eléctrica de EE. UU. en un ECG (en España la red va a 50 Hz) y extraer el latido fetal del latido materno superpuesto, comunicaciones, radar, sismología.
- **Trampas de μ**: simulado con μ=0,005 converge (el error baja) pero tarda ~0,1 s en adaptarse; con μ=0,1 la adaptación inicial es rápida pero el error vuelve a crecer y el filtrado deja de funcionar — μ demasiado alto desestabiliza el algoritmo.
- **Caso de sistema dinámico con ruido conocido**: dos sensores miden, en lugares distintos, un ruido puro y una señal deseada + ruido relacionado pero no idéntico; el LMS explota justamente esa correlación. En la simulación se generan dos ruidos aleatorios convolucionados para reproducir esa relación, con condiciones iniciales nulas (ceros al inicio del vector de ruido), filtro de 66 coeficientes y señal senoidal de entrada.

## Notas

- ASR normalizado solo aquí: «notable 1» = MATLAB, «seno y dar» = senoidal, «valor mu / valor muy / valor de mundo» = μ, «radiante» = gradiente.
- Nota de temática: es DSP/procesamiento de señales, más cercano a teoría que al resto del dominio; se mantiene en electronica-practica/ por ser la ubicación de la ventana (regla de membresía física única; los cruces hacen el resto).
- Cruces: la cancelación adaptativa de ruido empalma con el repositorio SoundShieldANC de [[resumen-FAV-374-soundshieldanc-github]] (cancelación adaptativa aplicada a superficies ruidosas); el problema de ruido inducido en señales reales conecta con las fuentes de ruido EMC del dominio ([[resumen-FAV-372-nrf24-problemas-soluciones-electronoobs]]).
