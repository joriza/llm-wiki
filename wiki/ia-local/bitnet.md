# BitNet

- **Tipo**: página de entidad (familia de modelos / técnica).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — fuente 53).
- **Fuentes**: [[resumen-1-58-bits-llms-podrian-ser-mejores-pero-nadie-quiere-usarlos]] (Cognix).

**BitNet** es la familia de LLMs ternarios de **Microsoft** (paper 2024, «La era de los LLMs de 1 bit»): cada peso vale **-1, 0 o +1** con una escala compartida por matriz → **1.58 bits/peso** (log₂ 3; 5 pesos por byte). La multiplicación matriz-peso se convierte en **sumas/restas enteras**.

## Números medidos

- 3B ternario vs 3B 16-bit mismos datos: calidad igual; **VRAM 2.22 vs 7.89 GB**; **2.71× más rápido**.
- **bitnet.cpp** (oct 2024, sobre llama.cpp, CPU): Intel laptop 2.37-6.17× más rápido que llama.cpp 16-bit; energía/token **-72 %**; 100B params en una CPU M2 Ultra a 5-7 tok/s.

## El muro: no se puede solo cuantizar

Redondear un modelo existente a ternario destruye lo aprendido (Qwen 2-bit estándar: 85 → 70). Hace falta **entrenamiento consciente de la cuantización (QAT)** con *straight-through estimator*: forward con pesos ternarios, backward con copia en 16-bit → entrenar sigue costando lo mismo (BitNet 2B: **4 billones de tokens** desde cero; conversión de Llama 3 8B: 100B tokens).

## Límite estructural

1.58 bits/peso acota la **memorización** por parámetro: BitNet 2B empata a Qwen 2.5 1.5B en promedio (54.2 vs 55.2) pero **pierde en Trivia QA (33.6 vs 38.4)** — razona bien, recuerda menos.

## Adopción y fricción de hardware

- **Tensor Cores** solo multiplican (no suman): los pesos ternarios deben desempaquetarse → la ganancia real de GPU es por menor VRAM (2.7×), no por energía (mul 16-bit ≈ 37× energía de suma 8-bit, pero los multiplicadores se activan igual).
- **Nvidia** bajó bits solo hasta **BF16/BFP4** (Rubin, 50 PFLOPS FP4 → OpenAI/Microsoft/Google/Meta/CoreWeave); con ~80 % del mercado, su formato es el estándar de facto.
- El **contexto sigue en 16-bit**: en un 8B, 64k tokens de contexto consumen más que el modelo.
- **Apple Intelligence** (~3B) ya corre a 2 bits con este tipo de entrenamiento.

## Veredicto

Para quien no tiene GPU cara: los ternarios son la opción real — «modelos lobotomizados» vs ternarios que conservan la inteligencia. El avance que rompe el muro del reentrenamiento: [[ternary-bonsai]] (Prism ML).

## Cruces

Modelo base: [[qwen]] · Motor: [[llama-cpp]] (base de bitnet.cpp) · Concepto: [[hardware-para-ia-local]] · [[ia-local-texto]].
