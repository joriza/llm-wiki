# Resumen: Factor de Potencia Explicado

- **Fuente**: `raw/electromecanica/2026-11-15-factor-de-potencia-explicado.md` ([YouTube](https://www.youtube.com/watch?v=wpubuxVCJtE), FAV-498, carpeta Electromecanica/Electricidad)
- **Canal**: Engineering Mindset (Mentalidad De Ingeniería)
- **Publicado**: 2026-01-13 · **Duración**: 15:01 · **Recopilado**: 2026-11-15

## Qué cubre

Explicación de **factor de potencia**: qué es, por qué genera penalizaciones en la factura industrial y cómo se corrige con condensadores — puente entre el subclúster PLC (control de motores: FAV-490..497) y la teoría de instalaciones eléctricas del dominio.

## Ideas clave

- **Solo aplica en CA**: en CC voltaje y corriente son constantes y el concepto no aplica; en CA la onda senoidal (50/60 Hz, generada por el barrido magnético del generador) hace que el multímetro muestre valores **RMS**.
- **Los tres tipos de potencia** (triángulo de potencias):
  - **Aparente (VA)** = V_RMS × I_RMS: lo que se suministra.
  - **Real/activa (W)** = aparente × FP: lo que hace trabajo útil.
  - **Reactiva (VAR)**: oscila entre fuente y carga sin hacer trabajo — va y viene entre campos magnéticos (inductores) y eléctricos (condensadores).
  - **FP = cos(θ) = real/aparente**, adimensional; 1,0 es ideal, lo práctico es apuntar a **0,95–0,9**. El desfase medible con osciloscopio se convierte a grados.
- **Cargas por tipo**: resistivas (incandescentes → calor/luz, FP=1, V e I en fase), inductivas (**motores** → campo magnético, I se retrasa 90°), capacitivas (**condensadores** → campo eléctrico, I se adelanta 90°). La corriente retrasada del inductor se explica por el voltaje inducido (Faraday) que se opone al aplicado.
- **Corrección**: conectar un **condensador en paralelo con el motor** — la reactiva pasa a oscilar entre el campo magnético del motor y el campo eléctrico del condensador, sin circular por la red. Cálculo completo con ejemplo (motor 2,87 HP, FP 0,7, η 82% → corregir a 0,95): potencia real constante, la corriente baja significativamente, se elige el condensador estándar más cercano y se recalcula.
- **Por qué penaliza la eléctrica**: generadores y transformadores se clasifican en **VA (aparente)** — un consumidor con mal FP ocupa capacidad de red con reactiva inútil, aumenta la corriente y las pérdidas de transmisión; por eso hay cargos por penalización a grandes consumidores (no a residenciales).
- **Medición**: medidores de potencia digitales del tablero, analizadores, hojas de datos o medidores enchufables simples.

## Notas

- Contenido con autopromoción (hojas de Excel, tazas merchandising) — excluido de la síntesis.
- ASR con garbiñeos («120 Vampa» por VA, «Wivo», «fucolt» por Foucault); normalizado solo aquí.
- Canal **Engineering Mindset 2ª fuente de la ventana** (FAV-490 + FAV-498; ya 2 en electronica-practica FAV-008/009) → entidad candidata reforzada para la consolidación. Umbral: **factor de potencia / corrección reactiva** tema nuevo, 1 fuente.

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[serie-componentes-basicos]], [[energias-renovables]], entidad [[mentalidad-de-ingenieria]].
