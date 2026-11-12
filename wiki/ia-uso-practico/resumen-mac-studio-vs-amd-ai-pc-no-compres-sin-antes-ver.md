# Resumen: Mac Studio vs AMD AI PC No Compres Sin Antes Ver Este Video

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-09-20-mac-studio-vs-amd-ai-pc-no-compres-sin-antes-ver.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=V7eLZRugtSQ — CodeSimple, 2026-09-20 (20:44).
- **Nota**: fuente 47/58 del lote ia-local (entrada 47 del playlist). Comparativa honesta Mac Studio M5 (M5 Max/M5 Ultra) vs AMD Ryzen AI Max Plus 395 (128 GB memoria unificada) para IA local real; preprocesamiento vs decodificación, modelos densos vs MoE, curva de mejora por software, trampas de mini PC baratos.

## La tesis: los benchmarks miden decodificación, pero la espera real es preprocesamiento

- **Fase 1 - Preprocesamiento**: el modelo lee todo el input (prompt, archivos, historial, contexto) → operaciones aritméticas masivas → **limitado por cómputo bruto GPU**.
- **Fase 2 - Decodificación**: genera respuesta token a token, leyendo pesos de memoria → **limitado por ancho de banda memoria**.
- **Todos los benchmarks miden decodificación** (tokens/s en ficha técnica).
- Dato clave (M1 Max, modelo 35B): con 8.500 tokens contexto, **preprocesamiento = 94% del tiempo total**. La cifra por la que compré (decodificación) = solo 6% de la experiencia.

## Modelos densos vs MoE: la ventaja de Apple se encoge

| Modelo | Tipo | Parámetros activos/token | Ventaja ancho banda Mac |
|--------|------|-------------------------|------------------------|
| Gemma 4 12B | Denso | 12B (todos) | **2,26×** |
| GPT-OSS 120B | MoE | 5,1B | **1,6×** |
| 3.6 35B | MoE | 3B | **1,25× (25%)** |

- **Casi cualquier modelo serio en 128 GB hoy es MoE** → corriente principal, no nicho.
- La ventaja de ancho de banda de Apple **se encoge exactamente cuando el modelo se vuelve más interesante**.
- En preprocesamiento (donde esperamos de verdad): **Mac Studio y AMD básicamente empatan**; AMD a veces ligeramente por delante.

## El lado AMD: hardware potente, software crítico

- Ryzen AI Max Plus 395: teórico 256 GB/s ancho banda → real **~212 GB/s (83%)**.
- GPU: 59 TFLOPs teórico → **sin software adecuado: <5 TFLOPs (9%)** → "de vacaciones".
- **Con librería correcta (Hip Blast): 36 TFLOPs** — mismo silicio, misma caja, **solo cambia la librería de álgebra lineal**.
- 4 cambios de configuración (software, 20 min):
  1. Sin entorno gráfico (libera memoria).
  2. Subir asignación GPU al máximo.
  3. Demonio de rendimiento.
  4. Línea en cmdline kernel.
- Resultado: preprocesamiento +13% (35B), +12% (122B), ganancias sostenidas en generación.

## Curva de mejora por software: AMD mejora gratis, Apple cobra

- **Ken 3.6 + nuevos kernels atención (MIT)** en Ryzen AI Max Plus 395:
  - Decodificación **más que duplicada**.
  - Preprocesamiento **más que triplicado**.
  - Prompt 16k + respuesta 1k: **147 s → 58 s**.
- **Apple M4→M5**: mejora = comprar chip nuevo.
- **AMD este año**: mejora = **actualizaciones de software gratuitas** (2-3× más rápido).
- "Si les ponemos precio por año de mejora que nadie pagó, la ecuación de AMD empieza a verse muy distinta."

## Flujo de trabajo real: constelación, no monolito

- No corremos un monolito 120B esperando respuesta.
- **Arquitectura real**: modelo programación 27-30B (cerebro principal) + modelo enrutamiento pequeño + resumen pequeño + visión/OCR + limpieza recuperación + verificación salidas.
- Todos pequeños → preprocesan rápido, responden rápido, **varios a la vez**.
- 30-60 tok/s por sesión, 3-4 sesiones concurrentes bajo orquestador.
- **128 GB = capacidad para mantener todos residentes** (evita swapping, lo que mata el flujo).
- **Ambas máquinas lo cumplen** → compra de capacidad, no de ancho de banda.

## Consumo y economía 24/7

| Métrica | Mac Studio M5 | AMD Ryzen AI Max |
|---------|---------------|------------------|
| Consumo continuo | **480 W** | **<100 W** (caja completa, modelo 35B) |
| 120B tokens/s | — | 46,9 (vs 13,77 en 2×3090 TI + 1500 W PSU) |
| Constelación noche | **Calefactor** | **Bombilla** |

## Trampas de mini PC baratos AMD (¡cuidado!)

- Ryzen AI Max Plus 395 viene en mini PC, Framework Desktop, otros fabricantes, precios muy distintos.
- **Mini PC baratos = trampas**:
  - Bus memoria a **mitad velocidad por firmware** → 117 GB/s real vs 215 GB/s plataforma bien montada.
  - ROCm roto → error crítico memoria al usarlo (fallo abierto en tracker AMD, BIOS no arregla).
  - Pierden soporte atención rápida (clave para contexto largo).
- **Cajas que funcionan bien**: **Minisforum MSS1 Max** y **Framework Desktop** (comunidad consistentemente contenta).
- Diferencia $600-1000 = **separan máquina de benchmark de captura de pantalla**.

## Veredicto: ¿quién compra qué?

### ✅ Comprar Mac Studio M5 si:
- Corrés **modelos densos** (gana 2,26×, software AMD no cierra esa brecha).
- **Generación imagen / vídeo** (ecosistema Apple maduro; AMD: repo voluntarios "no estable para producción").
- Necesitás **>128 GB** (M5 Ultra llega a 512 GB; AMD no tiene equivalente a ningún precio).
- Es también tu **estación de trabajo** (single-core +27%, compilación llama.cpp ~33% más rápido).

### ✅ Comprar AMD Ryzen AI Max si:
- Ya decidiste **local en lugar de nube** y corrés **MoE** (mayoría de lo que vale pena en 128 GB).
- Entendés que **tocará dedicar un sábado a configurarla** (software crítico).
- Comprás **variante que funciona** (Minisforum MSS1 Max / Framework Desktop).
- Te sentís cómodo en **plataforma pionera** que mejora más rápido que nada visto (curva software gratis).

## Conclusión personal del autor

> "El Mac Studio M5 es una máquina genuinamente brillante... Pero por $5.399 en 128 GB, estamos pagando por un ancho de banda que más importa en nombre de una IA local que nunca fue realmente nuestro cuello de botella. Y estamos pagando por una mejora de chip en una plataforma donde la mejora competidora llega gratis."

> "La caja de AMD es más tosca y el ecosistema alrededor es más joven... Pero si compramos la máquina correcta, la configuramos bien y luego volvemos a revisar cada cuatro meses para ver qué ha cambiado, estamos en la plataforma más rápida y con mayor margen de mejora. Y nos hemos ahorrado $1.400."

**Propuesta de valor real de 128 GB memoria unificada a precio pagable**: mantener muchos modelos residentes, correrlos barato todo el día, sin suscripción nube. **Ambas lo cumplen** → la pregunta es **con qué ecosistema querés crecer**.

## Cruces en la wiki

- Entidad: [[ia-uso-practico/codesimple]] (fuente 2 en el lote; canal análisis económico/técnico IA local).
- Concepto: [[ia-uso-practico/hardware-para-ia-local]] (refuerza: preprocesamiento vs decodificación, modelos densos vs MoE, curva software, trampas hardware, economía 24/7).
- Entidad: [[llama-cpp]] (compilación +33% más rápido en Mac; kernels atención Ken 3.6 en AMD).
- Relacionado: fuente 39/58 (Mac Studio vs $200/mes — Cognix, análisis financiero complementario); fuente 43/58 (No Compres Hardware — CodeSimple, economía VRAM/depreciación); fuente 44/58 (Concurrencia — Cognix, continuous batching, KV cache).