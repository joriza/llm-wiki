# WL-555 — Amplificador Technics SAGX505 detonado

- **Fuente original**: `raw/electronica-practica/2026-08-21-amplificador-technics-sagx505-detonado.md` ([Vídeo](https://www.youtube.com/watch?v=MDpKSVRBvKM))
- **Canal**: David Lightman (reparación de electrónica)
- **Publicado**: 2026-08-21 · **Duración**: 24:09 (multiparte, parte 1)
- **Dominio definitivo**: electronica-practica (consolidación T97, 2026-11-17) (reparación de audio)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Diagnóstico en banco (parte 1 de multiparte) de un amplificador Technics SA-GX505 de la generación híbrida (~130-140 W/canal) llegado «despanzurrado» con una detonación masiva concentrada en la línea de **+15 V**:

- **Estado al llegar**: prende, sin protección, relé de salida conecta — buena señal para el híbrido de potencia (si estuviera roto, entraría en protección); pero daños extensos: agujero en el PCB por un transistor volado, resistencias desintegradas, zeners de ¼ W en corto, capacitor electrolítico hinchado que «venteó» (electrolito que comió la tapa — visto antes solo en equipos valvulares viejos, nunca en uno nuevo).
- **Hipótesis central, con razonamiento**: la dispersión del daño (recalentadas múltiples, componentes afectados lejos del origen) indica **fallo lento por calor sostenido** («cocinada lenta»), no una explosión instantánea — aún sin culpable identificado.
- **Metodología mostrada**: medición de transistores de potencia (+15/−15) fuera de placa — los grandotes están bien; todo lo «chiquitito» de la línea +15 volado; resistencias fuera de valor (1,2 Ω leídas en 2,2; 1,5 en 3,3); regla de taller: ante recalentada, los electrolíticos cercanos se cambian aunque midan bien («miden bien en frío, en caliente puede que no»); cambios en pares; arranque futuro sin placas conectadas (el híbrido usa −15 pero no +15 — verificación curiosa de la ficha) para no arriesgarlo si la regulación dispara 30 V.
- **Restricciones locales de repuesto**: transistor original (60 V/500 mA/HFE ~200) casi imposible — candidatos propios con trade-off tensión-corriente-HFE (MPSA42 de 300 V pero HFE <100, 2SC3940 de solo 50 V); plan de ajuste: zeners de ½ W en vez de ¼ W y bajar la R de polarización si no da la ganancia; alternativa radical declarada: reemplazar la regulación por 7815 «es regulación de voltaje, no audio» — mantendría original solo lo de audio; electrolíticos de potencia japoneses 10.000 µF/80-100 V escasos y caros localmente (bloqueo histórico de importación >50 V), interinos taiwaneses «JB[N]».
- **Comparativa de diseño**: el Pioneer de los 90 equivalente (de su taller, con trafo donado en evalución) tiene línea propia de ±30 V para baja tensión — regular desde 30 V vs desde 50 V disipa mucho menos; Technics = híbridos, Pioneer = transistorizado.

## Señales de triage

- **1.ª mano total**: reparación real con instrumentos, microscopio y razonamiento audible; hipótesis explícitas y verificables (pruebas futuras en las partes siguientes del multiparte).
- Parte 1 de N: sin resolución — el resultado queda pendiente de los videos siguientes (análogo al re-pass de WL-545/471).
- ASR fonético fuerte: «senner/sener» por zener, «híbrio/híbrido», «RTB» por (?) , «JB[N]» ilegible, «Harman» (¿Harman Kardon como referencia de capacitores 80 V?), «Tecnobielorrusia» ilegible — normalizado solo aquí; raw intacto. Sin patrocinios.

## Cruces

- **electronica-practica** (par reparación junto al clúster existente): metodología de diagnóstico («miden bien en frío», arranque desacoplado, cambios en pares) ↔ WL-469 (ripple/diseño a medida) y WL-543 (los bordes/fallos lentos como origen de daño — «cocinada lenta» ↔ casos especiales).
- Transistores con HFE alto + tensión ↔ WL-542 (diseño vs reparabilidad) y el hilo de repuestos escasos ↔ WL-550 (cadena de suministro/bloqueo importaciones) — hilo transversal de la era «híbrido»: integralidad que mata la reparabilidad.
- David Lightman entidad candidata (1.ª fuente, texto plano); multiparte: enlazar partes siguientes en consolidación.

## Veredicto de triage

Útil: diagnóstico honesto y metodológico de un fallo complejo, con decisiones de ingeniería justificadas (sustituciones aceptables en regulación, no en audio) y restricciones locales de repuestos documentadas. Sin resolución aún (multiparte) — señalado. Consolidación diferida (L12): electronica-practica, David Lightman entidad candidata, enlazar partes.
