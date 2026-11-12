# Resumen: La IA Local Ahora Corre 6 Veces Más Rápido en Tu PC

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-10-18-la-ia-local-ahora-corre-6-veces-mas-rapido-en-tu-pc.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Estrata»→Strata, «RV local LEMA»→r/LocalLLaMA, «Code Simplo»→CodeSimple, «BRAM/encimera/despensa/almacén»→VRAM/RAM/SSD) — https://www.youtube.com/watch?v=IsK_O98_rp4 — CodeSimple, 2026-10-18 (26:31).
- **Nota**: fuente 55/58 del lote ia-local (entrada 55 del playlist). Versión CodeSimple de la historia Strata (misma que fuente 51, Jorge Marfil): motor especializado Qwen 3.8 Flash Next 125B MoE; caché expertos, CPU+GPU pipeline, MTP, lectura chunked; economía RAM vs API. Vista complementaria con algún dato adicional (IQ3_XXS 99.4% media, 92.6 vs 93.1; coder 32 GB; RTX 2060 6 GB = 10 tok/s; motor Apple Silicon 41-52 tok/s).

## La historia: el motor que una persona escribió en 10 días

- 24 sept 2026 17:30 UTC: usuario r/LocalLLaMA (Ryzen 5 7600, 64 GB DDR5, RTX 5070 12 GB) publica **Strata v0.1** en GitHub 50 min después de anunciarlo.
- Antes: **15 tok/s** con llama.cpp (Qwen 3.8 Flash Next). Con Strata: **65 tok/s**.
- 6 días: laptop RTX 5070 Ti + 64 GB → **51 tok/s** (vs 23 llama.cpp) con 43k tokens contexto.
- **Lectura**: llama.cpp 100 tok/s → Strata **1.500 tok/s** (32k tokens: 5+ min → 21 s; hoy 2.650 tok/s = 12 s).
- 13 versiones en 3 días; 3 oct: v0.1.39, **8.163 estrellas**.
- Desarrollador: **una persona con PC Windows pequeño**, construido con **Claude y Codex en 7-10 días**, para uso propio, compartido "porque sí".
- "El motor que pone un modelo de IA en tu PC lo escribieron en buena parte otros modelos de IA."

## El modelo: Qwen 3.8 Flash Next (125B, adelanto Qwen 4)

- 125B params; cada token despierta **~6B** (MoE).
- 48 capas × 512 expertos, **top-10 + 1 compartido** = token toca **2% de pesos expertos**.
- Tabla **n-grams 51B params** (diccionario consultado con tandas 2-3 tokens).
- Precisión completa: **354 GB** (= 11-12 RTX 5090).
- Cuantización laboratorio austriaco: **Q2_0 = 66.4 GB** (5.3× menos, aún 5.5× una 12 GB).

## La cocina: encimera (VRAM), despensa (RAM), almacén (SSD)

| Componente | Analogía | Contenido / Tamaño |
|------------|----------|--------------------|
| **VRAM (12 GB)** | Encimera: pequeña rapidísima | Fijos: atención + enrutadores + expertos compartidos ≈ **3.5 GB** + KV cache |
| **RAM (64 GB)** | Despensa: cerca, cabe mucho, cada viaje cuesta | **24.576 expertos** ≈ 35-55 GB según versión |
| **SSD** | Almacén: enorme lento | **Tabla n-grams 28.8 GB** (consulta por 3 últimos tokens — "bajar al sótano sabiendo qué caja buscas") |
| **PCIe** | Pasillo: cuello de botella | llama.cpp atrapado: 15-23 tok/s |

- Cálculo: 12 GB - 3.5 fijos = 8.5 GB → **~6.000 de 24.576 expertos (1 de cada 4)**, menos en práctica (KV cache).

## Los 3 trucos de Strata

1. **Caché de expertos adaptativa**: llena VRAM sobrante con expertos más solicitados; ajusta mientras chateas ("si un bote empieza a salir mucho, sube a la encimera"). Ejemplo juguete 8 expertos/3 caben: aciertos 50% → 60% tras swap E→B. **Real: 72% aciertos a 4k contexto** (curva de uso predecía 50%).
2. **CPU calcula expertos faltantes en paralelo con GPU**: "segundo cocinero en la despensa". 2-bit, 4k ctx: ronda 33 ms (CPU 14 ms, GPU 13 ms — igualados).
3. **MTP nativo**: capa predice borrador hasta 3 tokens; Strata verifica en 1 pasada por 48 capas. **1.6-1.8× antes**: 47-57 → 82-92 tok/s.

## Lectura por chunks + caché de conversación

- Lee prompt en **bloques de 8.192 tokens**; mientras GPU trabaja capa N, expertos de N+1 suben por PCIe (pipelining).
- v0.1.36: lectura 32k tokens 2.170 → **2.653 tok/s** (15 s → 12 s). Readme prudente: "1 min por 30k tokens".
- **Caché conversación**: segundo mensaje solo lee lo nuevo. v0.1.3: chat 7.7k tokens → siguiente respuesta **0.3 s vs 12.9 s**. "Pagas el primer mensaje una vez, el resto casi al instante."

## La verdad del "6×": versión distinta comparada

| Comparación | Escritura | Lectura |
|-------------|-----------|---------|
| **Título: Q2_0 Strata (94) vs IQ3_XXS llama.cpp (15)** | **6,3×** | 2.650/100 = **26×** |
| Misma versión IQ3_XXS (PC dev) | 62/15 = **4,1×** | 1.750/100-120 = **14,5-17,5×** |
| Misma versión (laptop 5070 Ti) | 51/23 = **2,2×** | 1.500/100 = **15×** |
| Misma versión (7900 XTX) | 45-50/22.5 = **~2×** | — |

- **Escribiendo honesto: 2-4×**. **Leyendo: 14-26×** — "la cifra que te cambia el día si programas con agentes".
- Tabla PC dev: Q2_0 94/2.650; IQ3_XXS 62/1.750; IQ3_S 53/1.620 (write/read).
- Chat largo: 90+ tok/s decae a **76 a 128k tokens** (v0.1.36+).
- Calidad cuantizaciones (lab austriaco, 3 pruebas: mates/ciencia/programación competitiva): IQ3_XXS **99.4% media (92.6 vs 93.1)**; IQ2_XS 95.7%; Q2_0 pierde ~6 pts en LiveCodeBench; **recomendada IQ3_S** (iguala/supera original en todo, "la mejor y la más lenta").

## La idea salta a llama.cpp en días

- 3 oct: usuario "llevaba un año suplicando expert cache a llama.cpp; Strata se les adelantó en 2 semanas".
- Mismo día: **PR llama.cpp #29887** añade expert cache (pendiente). RTX 4090: 25→39.4 tok/s (1.57×); 5090: 2.2×.
- Apuesta del autor: "en unos meses la caché de expertos estará en motores generales y la ventaja de escritura se reducirá bastante; el precio de RAM no bajará tan rápido."

## Requisitos y compatibilidad

| RAM | Versiones |
|-----|-----------|
| **64 GB** | Todas; recomendada IQ2_XS |
| **48 GB** | Solo Q2_0 o IQ2_XS |
| **32 GB** | Desde v0.1.28: **coder** (variante programación, mitad expertos) |
| **6 GB VRAM** | v0.1.38 arranca (RTX 2060: esperaba 3 tok/s, midió 10) |

- GPU: Nvidia RTX 20-50 series 12+ GB o Radeon lista AMD (Linux experimental desde 29 sept, Windows desde 2 oct).
- OS: Windows/Linux; **macOS no** (motor tercero Apple Silicon: 41-52 tok/s en Mac 64 GB donde llama.cpp 23.1).
- Disco: ~80 GB libres. Primer arranque: **PC colgado 1-3 min** ("abastecer la despensa de golpe").
- Cada GB VRAM extra ≈ **700 expertos más** en encimera. Pero: "gastaría en la despensa antes que en la encimera" (sin RAM no arranca; más GPU solo acelera).

## Limitaciones y avisos

- **No es servidor**: responde una petición cada vez; una sola conversación activa (caché opcional para multi-chat).
- **Salida no idéntica**: dev comparó 2 pruebas Blender + 1 JS = idénticos ("no probé más", respuesta con -6 votos). Usuario con Claude: idéntico frase corta, **difiere desde carácter 219 en función Python** (99.4% similitud).
- **Aviso v0.1.7 propio de Strata**: "con caché expertos activada la salida se desviaba" (los tiempos reales, el texto no). Hasta v0.1.7 ignoraba temperatura. **179 issues abiertas**.
- **Experimental Speed Projection**: no acelera — vector para que el modelo rechace menos; en código **+15% perplejidad**. "Dejarla apagada."
- **Swift 1.5** (fine-tune incluido en instalador, licencia propia): -63% tokens reasoning; 8 preguntas ambas aciertan, Swift 28 s vs 46 s.

## Economía: RAM vs API

- Kit 64 GB DDR5 (EE.UU., oct 2026): **~$1.100** (4-5× vs mediados 2025; centros de datos IA acaparan).
- Qwen Cloud: $0.15/M entrada, $0.47/M salida → petición agente 32k+1k ≈ **medio céntimo**.
- $1.100 ≈ **220.000 peticiones = ~6 años a 100/día** = 55 meses suscripción $20.
- **Veredicto**: ya tienes RAM → Strata gratis MIT (desde 28 sept), probar YA. Comprar RAM solo para esto → API más barata durante años.
- Alternativa menor: Qwen 3.8 27B saca 61.7 SWE-Bench Pro vs 62.5 Flash Next; pero Reddit: "Flash Next a 3 bits bastante mejor que 27B a 5".
- No cubierto: **Mac** y **multiusuario simultáneo** → esperar.

## Regla final

> **"Si no cabe en la despensa, no corre. Cuenta tus GB de RAM antes de mirar la tarjeta gráfica."**

- Preguntas ante todo titular "N× más rápido": **¿qué versión contra cuál? ¿escritura o lectura?**
- "Cuando el hardware se pone carísimo, la jugada barata es escribir software para la máquina exacta que ya tienes. Y hoy una sola persona puede hacerlo en 10 días."

## Cruces en la wiki

- Entidad: [[ia-uso-practico/codesimple]] (fuente 4 en el lote; versión CodeSimple de la historia Strata).
- Entidad: [[strata]] (motor especializado; refuerza datos fuente 51: IQ3_XXS 99.4% media, coder 32 GB, RTX 2060 6 GB, motor Apple Silicon 41-52 tok/s, Claude+Codex 7-10 días).
- Modelo: [[qwen]] (3.8 Flash Next 125B MoE refuerza; 27B SWE-Bench Pro 61.7 vs 62.5).
- Entidad: [[llama-cpp]] (PR #29887 expert cache; 4090 1.57×, 5090 2.2×).
- Concepto: [[ia-uso-practico/hardware-para-ia-local]] (RAM manda > VRAM; DDR5 ×4-5; "si no cabe en la despensa no corre").
- Relacionado: fuente 51/58 (Jorge Marfil — misma historia, análisis paralelo); fuente 53/58 (BitNet ternarios — hardware especializado); fuente 44/58 (concurrencia KV cache).