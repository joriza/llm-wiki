# Resumen: IA Local Ahora Va 6x Más Rápida en tu PC Normal

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-10-04-ia-local-ahora-va-6x-mas-rapida-en-tu-pc-normal.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Estrata/Stratos»→Strata, «enegramas»→n-grams, «de de de R5»→DDR5) — https://www.youtube.com/watch?v=LCmHSO6tqME — Jorge Marfil, 2026-10-04 (19:36).
- **Nota**: fuente 51/58 del lote ia-local (entrada 51 del playlist). Análisis técnico profundo de **Strata** (motor de inferencia especializado para Qwen 3.8 Flash Next 125B MoE): caché de expertos, CPU+GPU pipeline, MTP, lectura por chunks, economía RAM vs VRAM vs API.

## La historia: de 15 a 94 tok/s en 9 días (r/localllama)

- 24 sept 2026: usuario con Ryzen 5 7600 + 64 GB DDR5 + RTX 5070 12 GB reporta **15 tok/s** con llama.cpp en Qwen 3.8 Flash Next.
- 50 min después: publica **Strata v0.1** en GitHub → **1.65 tok/s** (bug inicial).
- 6 días: otro usuario en laptop RTX 5070 Ti 12 GB + 64 GB → **51 tok/s** (vs 23 llama.cpp).
- **Lectura (prefill)**: llama.cpp 100 tok/s → Strata **1.500 tok/s** (15×). 32k tokens: 5 min → 21 seg.
- 3 oct: v0.1.39, **8.163 estrellas**, 13 versiones en 4 días.
- **Título "6× más rápido"**: 94 tok/s (Strata Q2_0) / 15 tok/s (llama.cpp IQ3_XXS) = 6,3× — **pero comparan versiones distintas**.

## El modelo: Qwen 3.8 Flash Next (125B MoE, arquitectura Qwen 4)

- 125B params totales, **solo ~6B activos/token** (MoE).
- 48 capas, 512 expertos/capa, **top-10 + 1 compartido** por token = **2% de pesos expertos**.
- Tabla n-grams (51B params): diccionario secuencias 2-3 palabras.
- Sin comprimir: 354 GB (11× RTX 5090).
- Cuantizaciones laboratorio austriaco:
  - **Q2_0**: 66,4 GB (5,3 GB menos que original, pero 5.5× VRAM 12 GB).
  - **IQ3_XXS**: 3 bits/peso, "sin pérdida" en benchmarks.
  - **IQ2_XS**: 95.7% calidad.
  - **IQ3_S**: iguala/supera original en todo, "mejor y más lenta".
  - **Swift 1.5**: fine-tune mismo modelo, -63% tokens reasoning (28s vs 46s en 8 preguntas).

## La metáfora: cocina, encimera, despensa, trastero

| Componente | Analogía | Tamaño / Notas |
|------------|----------|----------------|
| **VRAM (12 GB)** | Encimera: pequeña, rapidísima | Fijos: atención + enrutadores + expertos compartidos ≈ **3.5 GB** |
| **RAM (64 GB DDR5)** | Despensa: cerca, cabe mucho, cada viaje cuesta | 24.576 expertos ≈ **35-55 GB** (según cuantización) |
| **SSD** | Trastero: enorme, lento | Tabla n-grams 28.8 GB (busca por 3 últimos tokens) |
| **Pasillo (PCIe)** | Cuello de botella | Llama.cpp: 15-20 tok/s atrapado aquí |

- **Problema**: 12 GB VRAM - 3.5 GB fijos = ~8.5 GB para expertos → caben **~6.000 de 24.576 (1 de cada 4)**.
- Llama.cpp no gestiona esto bien → 15-20 tok/s.

## Los 3 trucos de Strata (motor a medida del modelo + PC)

### 1. Caché de expertos adaptativa (el "truco de los botes")
- Llena VRAM sobrante con expertos **más usados** → selección se adapta mientras chateas.
- Ejemplo juguete: 8 expertos, encimera 3, top-2/token. Empieza A,C,E. Token pide A,B → acierta A. B sale 2×, E 0 → cambia E por B. Aciertos suben 50% → 60%.
- **Real (12 GB VRAM, 4k ctx): 72% aciertos** (curva uso sola predecía 50%). "El modelo tira mucho de los mismos botes."

### 2. CPU + GPU en paralelo (segundo cocinero en la despensa)
- CPU calcula expertos que faltan en VRAM **mientras GPU procesa los suyos**.
- IQ2_XXS 4k ctx: ronda 33 ms → CPU espera GPU 14 ms, GPU espera CPU 13 ms → **casi igualados**.
- Llama.cpp: CPU y GPU en serie (esperan mutuamente).

### 3. MTP (Multi-Token Prediction) nativo del modelo
- Capa predice borrador hasta 3 tokens → Strata verifica en **una sola pasada** por 48 capas.
- "El gato se subió al" + "Tejado de la" → revisa 3 de golpe, acepta las que cuadran.
- **Speedup 1.6-1.8×**: 47-57 → 82-92 tok/s (artículo).

## Lectura (prefill) por chunks: el cambio de escala real

- Strata lee en **chunks de 8.192 tokens**.
- Mientras GPU calcula capa N, expertos capa N+1 suben por PCIe (pipelining).
- **v0.1.36**: lectura 32k tokens 2.170 → 2.653 tok/s (15 seg → 12 seg).
- **v0.1.3**: chat 7.7k tokens → siguiente respuesta 0.3s vs 12.9s (caché conversación).
- **Tabla actual (PC desarrollador)**:
  - Q2_0: 94 tok/s write, **2.650 tok/s read**
  - IQ3_XXS: 62 tok/s write, **1.750 tok/s read**
  - IQ3_S: 53 tok/s write, **1.620 tok/s read**

## La verdad detrás del "6×": comparan versiones distintas

| Comparación | Escritura (tok/s) | Lectura (tok/s) |
|-------------|-------------------|-----------------|
| **Título (Q2_0 Strata vs IQ3_XXS llama.cpp)** | 94 / 15 = **6,3×** | 2.650 / 100 = **26×** |
| **Misma versión (IQ3_XXS ambos, PC dev)** | 62 / 15 = **4,1×** | 1.750 / 100 = **17,5×** |
| **Misma versión (IQ3_XXS ambos, laptop 5070 Ti)** | 51 / 23 = **2,2×** | 1.500 / 100 = **15×** |
| **Misma versión (IQ3_XXS ambos, 7900 XTX)** | 45-50 / 22.5 = **2×** | — |

- **Escribiendo**: honesto = **2-4×** según hardware.
- **Leyendo**: **14-26×** — "este número te cambia el día si programas con agentes" (primer mensaje 32k tokens: 5 min → 12-21 seg).

## Requisitos y economía: RAM manda, VRAM acelera

| RAM | Versiones recomendadas (Strata LM) |
|-----|------------------------------------|
| **64 GB** | Cualquier versión; recomendada **IQ2_XS** |
| **48 GB** | Solo Q2_0 o IQ2_XS |
| **32 GB** | Desde v0.1.28 cabe "coder" (mitad expertos, para programar) |

- **GPU**: Nvidia RTX 20-50 series 12+ GB, o AMD Radeon lista soporte.
- **OS**: Windows (desde v0.1.2 oct 2), Linux (desde v0.1.29 sept, pruebas), **macOS no**.
- **Disco**: ~80 GB libres.
- **Primer arranque**: 1-3 min colgado llenando "despensa" (RAM).
- **Licencia**: MIT (desde 28 sept).

### Economía: ¿comprar RAM o usar API?

- 64 GB DDR5 (2026): **$1.099** (×4-5 vs mediados 2025; centros de datos acaparan memoria).
- Qwen Cloud API: $0.15/M entrada, $0.47/M salida.
- Petición agente 32k in + 1k out = **$0.005** (medio céntimo).
- $1.099 compran **~208.000 peticiones** = **6 años a 100/día** = 55 meses suscripción $20.
- **Conclusión**: si ya tienes RAM → Strata gratis, pruébalo. Si tienes que comprarla solo para esto → **más barato API de Qwen**.

## Estado del proyecto: joven, 179 issues abiertas

- v0.1.7 ignoraba temperatura; v0.1.39 aún tiene **179 issues abiertas**.
- Aviso v0.1.7: "con caché expertos encendida el texto salía distinto que sin ella" → **el truco 1 cambiaba la salida**.
- Usuario comparó Strata vs llama.cpp: idéntico en frase corta, **difiere desde carácter 219 en función Python** (similitud 99.4%, no idéntico).
- PR llama.cpp #29887 añade caché expertos → RTX 4090: 25→39.4 (1.57×), 5090: 2.2×. **La idea salta a motores generales en días**.

## Veredicto del autor

> "En el fondo, esto va de que con las piezas carísimas lo barato es hacer programas a medida de la máquina que ya tienes. Y hoy eso lo hace una persona en 10 días."

**Regla práctica**: **"Si no cabe en la despensa (RAM), no arranca. Cuenta gigas de RAM antes de mirar la gráfica."**

- Ya tienes RAM ≥ 48 GB → **pruébalo esta semana** (gratis, MIT).
- Tienes que comprar RAM solo para esto → **mira antes la API de Qwen**.
- Qwen 3.8 27B (más pequeño): 61.7 SWE-Bench Pro vs 62.5 Flash Next; usuarios en Reddit: "Flash Next a 3 bits mucho mejor que 27B a 5".

## Cruces en la wiki

- Entidad: [[ia-uso-practico/jorge-marfil]] (canal, 1ª fuente en lote; análisis técnico profundo, estilo "desde cero para que lo siga cualquiera").
- Entidad: [[strata]] (motor inferencia especializado Qwen 3.8 Flash Next 125B MoE; caché expertos adaptativa, CPU+GPU pipeline, MTP, lectura chunked; MIT license; 8k★ en 9 días; PR llama.cpp #29887 replica idea).
- Modelo: [[qwen]] (3.8 Flash Next 125B MoE, arquitectura Qwen 4; 6B activos/token, 48 capas, 512 expertos, top-11, n-grams 51B; cuantizaciones Q2_0/IQ3_XXS/IQ2_XS/IQ3_S; Swift 1.5 fine-tune).
- Entidad: [[llama-cpp]] (motor general; PR #29887 añade expert cache; 15-20 tok/s sin él).
- Concepto: [[ia-uso-practico/hardware-para-ia-local]] (RAM manda > VRAM para MoE; DDR5 precio ×4-5; economía RAM vs API).
- Concepto: [[ia-uso-practico/ia-local-texto]] (preprocesamiento/lectura vs generación; Strata acelera lectura 15-26×).
- Relacionado: fuente 32/58 (pila 5 capas inferencia — Cognix, motores especializados vs generales); fuente 44/58 (concurrencia — continuous batching, KV cache); fuente 47/58 (Mac vs AMD — preprocesamiento vs decodificación, MoE corriente principal).