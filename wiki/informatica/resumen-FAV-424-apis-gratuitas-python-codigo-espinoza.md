# FAV-424 — Todo sobre las API gratuitas de Python explicado en 10 minutos (Código Espinoza)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=CNCUtZ9BiHI) — Canal **Código Espinoza - Automatiza tu Vida**, publicado 2026-08-12, 10:21, ES (subtítulos automáticos).
- **Raw**: `raw/electronica-practica/2026-11-15-apis-gratuitas-python.md`
- **Nota de dominio**: fuente de INFORMÁTICA — **candidata a dominio informatica** (se suma a FAV-413/419/420/422/423).

## Tesis

Existen decenas de miles de APIs públicas con planes gratuitos generosos; la diferencia entre pagar y no pagar no es la API sino saber cuál usar y cómo conectarla. El video recorre 5 APIs gratuitas ordenadas por cómo se combinan entre sí para armar un sistema completo de automatización personal.

## Las 5 APIs

1. **OpenWeatherMap** (clima): plan gratuito 60 llamadas/minuto y ~1M/mes. La gracia es usar el dato para disparar acciones (alertas de lluvia, riego automático). Detalle: la clave tarda minutos en activarse tras el registro. Puede correr en Raspberry Pi o servidor gratuito.
2. **CoinGecko** (cripto/finanzas): sin clave para uso básico, sin registro ni tarjeta; límite bajo a propósito para el modo anónimo (plan con clave gratuita sube el volumen). Sugerencia: guardar cada consulta para construir historial propio de precios.
3. **Bot de Telegram** (notificaciones): crear bot con BotFather en minutos y recibir alertas al celular gratis, sin límite real para uso personal — el canal de salida de todo el sistema.
4. **NewsAPI** (noticias): resumen diario filtrado por tema/país/categoría; plan gratuito 100 peticiones/día pensado para desarrollo — cachear resultados en vez de re-preguntar.
5. **Entornos de práctica sin clave** (JSON Placeholder, PokeAPI): para practicar el patrón de petición/errores antes de tocar APIs reales con límites.

## Patrón de código común

Una sola librería (`requests`) cubre todas: armar URL con parámetros → petición → revisar `status_code` (200 OK, 401 clave mala, 404 no existe, 429 límite superado) → `.json()` a diccionario de Python. Detalles de calidad: `timeout=5` (evita colgarse para siempre) y claves en **variables de entorno**, nunca en el código.

## Límites de escalado (cierre)

`requests` es síncrono: un `for` de 1000 ciudades × 200 ms por respuesta = minutos bloqueados. Hilos ayudan hasta cierto punto (20 hilos ≈ segundos), pero con cientos de conexiones aparecen conexiones caídas, respuestas mezcladas y memoria creciente — límites de diseño del lenguaje (GIL) que el video deja para su secuela «los tres límites que todo programador descubre tarde».

## Cruces

- FAV-422 (tutorial Python), FAV-423 (pip/uv): clúster **Informatica/Python ahora 3 fuentes** — umbral anotado en Log sin páginas nuevas.
- Canal **Código Espinoza 2 fuentes** (FAV-423/424) — candidata a entidad (umbral ≥2, deferida).
- FAV-420 (FreeLLM API): mismo tema «consumir APIs con plan gratuito», en el ecosistema de IA.


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[codigo-espinoza]].
