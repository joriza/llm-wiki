# Strata

- **Tipo**: página de entidad (motor de inferencia).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — fuentes 51 y 55).
- **Fuentes**: [[resumen-ia-local-ahora-va-6x-mas-rapida-en-tu-pc-normal]] (Jorge Marfil) · [[resumen-la-ia-local-ahora-corre-6-veces-mas-rapido-en-tu-pc]] (CodeSimple).

**Strata** es un motor de inferencia escrito a medida para un solo modelo — **Qwen 3.8 Flash Next** (125B MoE, vista previa Qwen 4, ver [[qwen]]) — y un tipo de PC (GPU chica + RAM grande). Lo construyó **una persona** en 7-10 días (con Claude y Codex), para uso propio, y lo publicó en GitHub el 24-sep-2026: 13 versiones en 3 días, v0.1.39 con 8.163 estrellas el 3-oct. Licencia **MIT** (desde 28-sep). Es la demostración de la tesis: *"cuando el hardware se pone carísimo, lo barato es escribir software para la máquina exacta que ya tienes"*.

## Por qué existe: el problema del MoE grande en GPU chica

Cada token activa solo ~6B de 125B (48 capas × 512 expertos, top-10+1, n-grams 51B en tabla aparte). Q2_0 pesa 66.4 GB — no cabe en una RTX 5070 de 12 GB, pero cada token solo toca el **2 % de los pesos de expertos**. llama.cpp (motor general) se quedaba en **15-23 tok/s** porque el cuello de botella es traer expertos por PCIe desde RAM.

## Los 3 trucos

1. **Caché de expertos adaptativa**: llena la VRAM sobrante (~8.5 GB tras los 3.5 GB fijos de atención+enrutadores+compartidos) con los expertos más solicitados; la selección se adapta mientras chateas → **72 % de aciertos** a 4k contexto (la curva de uso predecía 50 %).
2. **CPU + GPU en paralelo**: la CPU calcula los expertos que faltan en VRAM mientras la GPU procesa los suyos (ronda de 33 ms: CPU 14 ms, GPU 13 ms — igualados).
3. **MTP nativo**: el borrador de 3 tokens del modelo se verifica en una pasada por las 48 capas → **1.6-1.8×** (47-57 → 82-92 tok/s).

Y el cuarto, el decisivo para agentes: **lectura del prompt en chunks de 8.192 tokens con pipelining PCIe** (mientras la GPU trabaja la capa N, suben los expertos de la N+1) + caché de conversación (2º mensaje: 0.3 s vs 12.9 s) → **lectura 14-26× más rápida** que llama.cpp (2.650 vs 100 tok/s).

## La verdad detrás del "6×"

El titular compara versiones distintas (Q2_0 de Strata, 94 tok/s, vs IQ3_XXS de llama.cpp, 15). Misma versión: **2-4× escribiendo** (según hardware), **14-26× leyendo** — y la lectura es lo que sufre quien programa con agentes (primer mensaje de 32k tokens: 5+ min → 12-21 s).

## Requisitos y límites

- RAM manda: 64 GB → todas las versiones (rec. IQ2_XS); 48 GB → Q2_0/IQ2_XS; 32 GB → variante **coder** (mitad de expertos) desde v0.1.28. GPU: RTX 20-50 12+ GB o Radeon listada (Linux experimental, Windows estable). Sin macOS.
- **No es servidor**: una petición a la vez, una conversación activa.
- **Salida no idéntica** a llama.cpp (difiere desde el carácter 219 en una función Python; 99.4 % similitud); aviso propio v0.1.7: con caché de expertos la salida se desviaba; 179 issues abiertas; ignoraba temperatura hasta v0.1.7.
- Calidad de cuantizaciones (lab austriaco): IQ3_XXS 99.4 % de la media (92.6/93.1); IQ2_XS 95.7 %; Q2_0 pierde ~6 pts en LiveCodeBench; recomendada IQ3_S (iguala/supera en todo, la más lenta). **Swift 1.5**: fine-tune con -63 % de tokens de razonamiento (28 s vs 46 s en 8 preguntas).

## Impacto en el ecosistema

- **PR llama.cpp #29887** añade expert cache el mismo 3-oct (RTX 4090: 25→39.4 tok/s, 1.57×; 5090: 2.2×) — la idea salta al motor general en días. Predicción compartida por ambas fuentes: la ventaja en escritura se reducirá cuando llegue a motores generales; el precio de la RAM no bajará igual de rápido.
- Economía: kit 64 GB DDR5 ≈ $1.100 (×4-5 vs mediados 2025) = ~220.000 peticiones de agente en la API de Qwen ≈ 6 años a 100/día → **si ya tienes RAM, pruébalo; si tienes que comprarla, mejor la API**.
- Alternativa para Mac: motor tercero de Apple Silicon con la misma idea, 41-52 tok/s en un Mac de 64 GB (llama.cpp: 23.1).

## Cruces

Modelo: [[qwen]] (3.8 Flash Next) · Motores: [[llama-cpp]] (PR #29887) · Concepto: [[hardware-para-ia-local]] (RAM manda) · [[ia-local-texto]]. Contrapunto de cuantización extrema: [[bitnet]] / [[ternary-bonsai]].
