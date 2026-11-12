# Resumen: No Compres Hardware Para IA Local Hasta Que Veas Este Video

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-09-17-no-compres-hardware-para-ia-local-hasta-que-veas-esto.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=3ht97XIKhJY — CodeSimple, 2026-09-17 (17:36).
- **Nota**: fuente 43/58 del lote ia-local (entrada 43 del playlist). Análisis económico/técnico que desmonta la narrativa de reseñas de hardware local usando datos de mercado reales (eBay, DRAM, precios de tokens).

## La tesis: las reseñas miden lo que cuesta la caja hoy, no lo que vale mañana

El autor estaba a punto de comprar hardware caro para IA local (RTX 3090, DGX Spark, Mac Studio) y decidió auditar los números reales. Hallazgo central: **las reseñas no mienten en sus benchmarks, pero ponen precio a la variable equivocada** (capacidad de memoria / precio de compra) y omiten la depreciación/reventa, el ancho de banda real, el coste de tokens alojados y el consumo en reposo.

## Las dos curvas divergentes (enero-junio 2026)

- **RTX 3090 de segunda mano**: +48 % (639 $ → 946 $) — no cambió el hardware, subió la demanda de VRAM como commodity.
- **Precio 1M tokens de frontera**: -84 % (factor 6 más barato).
- **Conclusión**: "aquello con lo que calculamos bajó por un factor de seis, mientras que aquello sobre lo que calculamos subió a la mitad".

## Capacidad vs ancho de banda (la métrica que nunca sale en reseñas)

| Hardware | Capacidad $/GB | Ancho de banda $/(GB/s) |
|----------|----------------|-------------------------|
| DGX Spark (128 GB, $4.699) | ~27 GB / $1k | **0,058 GB/s/$** |
| RTX 3090 24 GB usada ($946) | ~25 GB / $1k | **0,99 GB/s/$** (17× más) |

- La inferencia = leer pesos de memoria → compute → descartar → repetir por token.
- Lo que sentimos (velocidad del cursor) = **ancho de banda de memoria**, no capacidad.
- Las reseñas venden el electrodoméstico (DGX Spark, Mac Studio, Framework) basándose en el empate de capacidad/$, ignorando la paliza de ancho de banda/$.

## La línea de los 16 GB: VRAM como materia prima

Análisis de 50 mil anuncios eBay vendidos (ene-jun 2026, 16 tarjetas):
- **≥ 16 GB**: todo se revalorizó (3090 +48 %, 4090 +13 %, 3080 +31 %, 5080 +22 %).
- **≤ 12 GB**: todo se depreció (3080 -20 %, 3070 -20 %, 4070 -7 %, 5060 -5 %).
- **Causa raíz**: precios de contrato DRAM +172 % en 2025; Samsung/SK Hynix/Micron (95 % producción mundial) movieron obleas a HBM para centros de datos IA (hasta 70 % producción mundial).
- **GPU comercial** = pieza estándar, mercado líquido (jugadores, render, investigadores) → se revende.
- **Electrodoméstico (memoria soldada)** = prima de escasez pagada en mostrador, **liquidez nula** (ej.: Mac Studio M3 Ultra 512 GB $23k CAD → trade-in Apple $2.460 = -89 %).

## Cuenta de equilibrio: comprar vs alquilar

- RTX Pro 6000 Blackwell: $16.000.
- Tokens alojados (modelo abierto): ~$0,47 / 1M tokens salida.
- $16.000 compran **34.000 M tokens** en la nube.
- La tarjeta genera ~1,77 tok/s (contexto realista) = 2.460 M tokens/año al 100 % uso.
- **Punto de equilibrio: 13,8 años** (sin electricidad, sin obsolescencia del modelo a 18 meses).
- "Ahí nadie gana esa discusión."

## El engaño de la velocidad de decodificación

- Reseñas miden **velocidad de decodificación** (tokens/s generando respuesta) — favorece al local.
- **No miden velocidad de preprocesamiento** (leer prompt + contexto):
  - Prompt sistema Cloud Code: 32k tokens.
  - Medido en 16 GB + DDR4: 50 tok/s lectura → **10 min 40 s solo para leer el prompt**.
  - Base de código 100k tokens: **33 min antes del primer token**.
  - Misma carga alojada: **primer token < 1 s**.
- Leer es problema de ancho de banda + compute; **comprar más RAM no lo arregla**.
- La caja local sirve para chat, borradores, lotes nocturnos; **programación agéntica interactiva = frustración**.

## Coste oculto: consumo en reposo

- 100 W en reposo 24/7 = 876 kWh/año = **$105/año** (a $0,12/kWh) antes de una sola inferencia.
- Eso compra **198 M tokens** al precio medio abierto ($0,53/M).
- Reposo impredecible: 3090 a plena carga 350 W; 590 teórica 30 W → usuarios reportan 60-100 W con monitores 4K.

## Excepciones donde el local sí es la única opción

1. **Residencia de datos obligatoria** (militar, sanidad, judicial, contratos) — la nube es inviable.
2. **Ya tienes la tarjeta** — el dinero ya está gastado; la cuenta describe una compra, no una posesión. Vender para alquilar = vueltas innecesarias.
3. **Aprender/ experimentar** — compra lo barato (RTX 3060 12 GB usada ~$186) y aprende cuantización, offload, ventanas de contexto; mejor que electrodoméstico de $5k porque "hurgas de verdad cuando hay menos en juego".

## Regla de decisión final

> **"Deberíamos comprar la tarjeta que un desconocido nos quitaría de las manos en una tarde o no comprar nada en absoluto, porque el hardware solo cuenta como inversión mientras alguien más lo siga queriendo."**

- Compra: piezas estándar > 16 GB con mercado líquido (3090/4090 24 GB, 3080/4080 16 GB en segunda mano).
- Evita: **cualquier cosa con memoria soldada** (DGX Spark, Mac Studio, Framework, laptops unified memory) — pagas prima de escasez 2026 por componente irrevendible, a fracción del ancho de banda/$ de GPU comercial.
- Si solo necesitas sacar trabajo hoy: **modelos abiertos alojados a $0,53/M tokens** — sin circuito dedicado, sin curva de ventiladores, sin pasta térmica, sin comprador en eBay.

## Cruces en la wiki

- Entidad: [[ia-uso-practico/codesimple]] (canal, 1ª fuente en el lote).
- Concepto: [[ia-uso-practico/hardware-para-ia-local]] (economía de VRAM, depreciación/reventa, ancho de banda vs capacidad, cuentas de equilibrio).
- Concepto: [[ia-uso-practico/agregacion-apis]] (modelos abiertos alojados como alternativa racional; FreeLLMAPI/OmniRouter/Mammouth).
- Entidad: [[llama-cpp]] (contexto de inferencia local, ancho de banda memoria).
- Relacionado: fuente 39/58 (Mac Studio vs $200/mes — Cognix, análisis financiero complementario); fuente 30/58 (CPU-only llama.cpp — economía RAM vs GPU).