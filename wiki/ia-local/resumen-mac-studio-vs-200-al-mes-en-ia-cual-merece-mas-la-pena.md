# Resumen: Mac Studio vs $200 al mes en IA — ¿Cuál merece más la pena?

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-09-07-mac-studio-vs-200-al-mes-en-ia-cual-merece-mas-la-pena.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=pTPrIlbE1rk — Cognix, 2026-09-07 (07:07).
- **Nota**: fuente 34/58 del lote ia-local (entrada 39 del playlist). Tercera fuente del canal **Cognix** (2ª en ia-uso-practico). Análisis financiero y técnico: Mac Studio (M5 Max/Ultra, memoria unificada) vs suscripciones cloud ($20-200/mes) vs API por uso.

## La comparación económica

| Opción | Costo | Punto de quiebre vs $200/mes |
|--------|-------|------------------------------|
| **Suscripción $20/mes** | $240/año | Mac 128 GB ($5,100) → **21+ años** para pagarse |
| **Suscripción $60/mes** | $720/año | Mac 128 GB → **7+ años** |
| **Suscripción $100-200/mes** | $1,200-2,400/año | Mac 128 GB → **2-4 años** (API uso intensivo: recupera más rápido) |
| **Mac Studio M5 Max 128 GB** | ~$5,100 | — |
| **Mac Studio M5 Ultra 256 GB** | ~$9,500 | — |
| **Mac Studio M5 Ultra 512 GB** | ~$15,000+ | — |
| **API por uso (modelos abiertos)** | Centavos/millón tokens | Uso brutal todo el día → **decenas de $/mes** |

## La regla de la memoria unificada (Apple Silicon)

- **Memoria = todo**: cantidad decide qué modelos caben; ancho de banda (614 GB/s Max, >1 TB/s Ultra) decide velocidad.
- **M5 Max 128 GB** ($5,100): cabe modelos comprimidos >100 GB (30+ tok/s); **punto dulce** precio/capacidad.
- **M5 Ultra 96 GB base** ($5,499): **menos memoria que el Max 128 GB** — modelos >100 GB no caben; Ultra solo vale la pena en 256/512 GB.
- **Modelos MoE gigantes**: 170-180 GB solo pesos → necesitan Ultra 256 GB para que sistema + KV cache + contexto respiren.
- **Límite duro**: modelos >2 billones de parámetros → >1 TB incluso comprimidos → ni Ultra 512 GB los corre.

## Lo que NO incluye el hardware local (vs suscripción)

Suscripción ($200/mes) = **cómputo + producto completo**: deep research, web browsing, image gen, agents, coding tools, infra que se actualiza sola.
Mac Studio = **solo cómputo** (tú arman el stack: llama.cpp, Ollama, compresión, plantillas, updates).

## Costo oculto del local: tu tiempo

- Modelo nuevo → esperar compatibilidad, ajustar compresión, arreglar chat template.
- Nube → abrir página y escribir.

## Decisión práctica (conclusión del video)

| Perfil | Recomendación |
|--------|---------------|
| **$20-60/mes en IA** | **Olvídate de local** — no sale a cuenta financiera. |
| **De todas formas compras Mac Studio para trabajo real (video, código, edición)** | **Mete toda la memoria que puedas**. Max 128 GB = punto dulce; diferencia vs base ~$2,600 → se recupera en ~1 año si facturas $200/mes en IA. |
| **Inferencia profesional / datos sensibles / modelos pesados** | **Ultra 256 GB** empieza a justificarse (cabe MoE 170-180 GB + contexto). |
| **Cientos/miles $/mes en API** | **Hardware propio se paga solo y rápido**. |
| **Privacidad, control, sin internet, procesos nocturnos, cero costo por token** | **Local** — valor no financiero. |

## Cruces en la wiki

Entidad: [[informatica-teoria/cognix]] (3ª fuente del canal; 2ª en ia-uso-practico). Hardware: [[hardware-para-ia-local]] (Mac Studio M5 Max/Ultra, memoria unificada, MoE gigantes). Económico: [[burbuja-de-la-ia]] (costes reales API vs suscripción vs hardware). Canales: [[ia-y-sociedad]] (regulación, empleo).