# WL-749 — 7 Plataformas para desplegar tu SaaS sin complicarte en 2026 (Fazt Code)

- **Fuente original**: `raw/wl/tramo-106/2026-02-18-7-plataformas-para-desplegar-tu-saas-sin-complicarte-en-2026.md` ([YouTube](https://www.youtube.com/watch?v=dOL1BY_ia2Y))
- **Canal**: Fazt Code (20.ª fuente — [[fazt]])
- **Publicado**: 2026-02-18 · **Duración**: 15:48 · **Idioma**: es (ASR, garbiñeos normalizados aquí: "Shinode"/"Synod" = **Sliplane**-tipo GenD? — el ASR lo dicta "Synod/Sinode"; tratado como plataforma menor no confirmada)
- **Tramo**: 106 (relevo 2) · **Ingesta**: 2026-11-24## Qué trata

Panorama comparado de 7 PaaS para desplegar proyectos web de forma sencilla, con precios y limitaciones: la premisa es que "todo el mundo cree que solo existe Vercel", y la respuesta es un menú por presupuesto y grado de control. Reseñador (sin tutorial paso a paso — remite a videos previos de cada plataforma).

## Las 7 plataformas

1. **Railway** — el más popular del estilo full-stack: backend + frontend + base de datos en un solo lugar, recuadros visuales por servicio, multi-lenguaje (JS/Go/Python/Rust/Java), templates a un clic (n8n); desde ~$5/mes con la base incluida. Ideal para freelancers con muchos proyectos.
2. **Render** — como Railway pero menos características; su gancho es el plan gratuito ($0) con PostgreSQL (el único motor), que pasa a $19/mes al serializarse. Docker también soportado.
3. **«Synod/Sinode»** (nombre dictado por el ASR, identidad no confirmada) — la más nueva y barata: Postgres compartido desde $1, web desde $3 ($4 el proyecto completo), servicios siempre encendidos (bots), orientada a MVPs.
4. **Vercel** — la más grande y popular; desde $20/mes. Su modelo real son **integraciones con servicios externos** (Supabase, Neon para Postgres, Turso variación de SQLite, Sanity CMS, Replicate/ElevenLabs/Groq para IA) — cada integración factura aparte, así que "tener todo en un lugar" puede volverse muy costoso. Permite desplegar modelos de IA.
5. **Cloudflare** — competencia directo-económica: Workers (serverless como entorno predilecto, no contenedores), JS/TS/Python (FastAPI)/Rust, hasta LangChain; base de datos propia D1 (basada en SQLite, dialecto con variaciones — no es un Postgres conectable); 100.000 peticiones/día gratis, planes desde $5. Advertencias de lock-in: middleware de Next.js no soportado, adquirieron Astro. El 80 % de internet ya está detrás de su firewall.
6. **Netlify** — el más front-end puro (Astro/Vite/generadores estáticos tipo Jekyll/Hugo): funciones serverless para lógica mínima, forms integrados, CDN para imágenes; sin base de datos ni backend aparte.
7. **Northflank** — el más avanzado: como Railway/Vercel en alcance pero con **acceso a GPU vía interfaz gráfica** para modelos propios (Llama, DeepSeek) y cobro por uso de cómputo (costo impredecible con mucha demanda). Gratis: 2 servicios + una base que no duerme.

## Cierre del video

Si el presupuesto aprieta y se quiere control: **VPS + alternativa open source** (remite a su video propio de alternativas a Vercel autoalojadas — el terreno que la wiki ya cubre). Los PaaS tienen sentido sobre todo con equipos pequeños y desarrollo continuo.

## Cruces

- El cierre apunta exactamente al hilo self-hosting de la wiki: [[resumen-desplegar-apps-con-dokploy-nextgen]] (el PaaS open source autoalojado, alternativa a Vercel/Netlify — la contraparte del consejo final), [[docker-homelab]] y [[decision-home-server]] (la fila de "nube vs. propio" que este menú PaaS completa por el lado cloud).
- Canal: [[fazt]] — aquí en modo reseñador comparativo (panorama de precios), su rol más frecuente en el corpus.
- Tangencial del hilo micro-SaaS: [[micro-saas-con-python]] (despliegue como decisión de producto, no solo técnica).
