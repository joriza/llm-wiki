# Ideas para canal(es) — nombre, estrategia y disponibilidad

Documento de trabajo generado a partir del contenido de la wiki (`wiki/`, `index.md`, `wiki/dominios.md`) y de verificaciones de disponibilidad web (2026, búsquedas puntuales). No forma parte del corpus de conocimiento; es material de decisión.

## 1. Perfil temático de la wiki (proporciones)

Sobre ~1.100 fuentes en `wiki/`:

| Bloque | Peso aprox. | Dominios principales |
|---|---|---|
| Tecnología / IA / informática | ~40 % (~450 fuentes) | ia-local, agentes-de-codigo, informatica, informatica-teoria, ia-uso-practico, ia-critica-y-fronteras, futuro-programacion, historia-informatica, self-hosting |
| Manos a la obra / hardware | ~15 % (~170 fuentes) | electronica-practica, electromecanica, microcontroladores, leds-y-pantallas, python-practico |
| Argentina | ~10 % (~110 fuentes) | historia-argentina, sociedad-argentina, economia-argentina |
| Vida práctica y curiosidades | ~35 % (resto) | general (el dominio más grande), casa-calefaccion, construccion-y-vivienda, cocina, salud-fitness, desarrollo-personal, ciencias-tierra, naufragios-y-exploracion, estafas-y-consumidor, critica-tecnologica |

Síntesis: **un canal de curiosidad técnica práctica con mirada rioplatense** — no un canal monotema. El hilo conductor: entender cómo funcionan las cosas.

## 2. Nombres propuestos

| Nombre | Estado de disponibilidad (chequeado) | Comentario |
|---|---|---|
| **El Taller Curioso** | ✅ Libre (sin canal ni marca exacta) | **Recomendado.** «Taller» = lo práctico (~55 %), «curioso» = la divulgación (~45 %). Tono cálido, escalable. Handle sugerido: `@eltallercurioso`; dominio posible: `eltallercurioso.com` |
| **Código, cables y mate** | ✅ Libre | Fiel a la proporción (código ~40 %, cables ~25 %, mate = Argentina/cotidiano). Más largo; encasilla el tono a lo casero/rioplatense |
| Circuito Abierto | ❌ Tomado de facto | Fundación Circuito Abierto (Córdoba, arte + tecnología, con canal online y festival) — descartado |
| Margen de Seguridad | ⚠️ Libre como canal, pero… | Término muy asociado a value investing (Graham); ruido con audiencia de finanzas. Elegante (surge de WL-491/397), pero confundiría al algoritmo |
| Bricolaje Mental | ⚠️ Ruido semántico | Existe columna en *El Mundo* y un libro con ese título, sin canal. Alternativa válida |
| Patio de Atrás | ❌ Tomado | Banda de emo colombiana activa (Spotify/SoundCloud) — descartado |

Otras variantes anotadas: «El taller de lo posible», «Puente de soldadura» / «Soldando ideas» (más nicho electrónico).

**Decisión sugerida: El Taller Curioso.** Próximos pasos si se confirma: reservar handle en YouTube y dominio.

## 3. Estrategia económica: ¿un canal multi-tema o varios específicos?

**Veredicto: arrancar con UN canal multi-tema organizado en series/playlists; dividir solo cuando el costo operativo lo justifique.**

Argumentos:

- **Costos fijos divididos**: una sola identidad, un solo proceso de edición/thumbnails/comunidad, un solo historial y base de suscriptores. Los primeros 1.000 subs son cuesta arriba; no multiplicarlos por 3 canales.
- **El algoritmo premia el video, no el canal**: YouTube recomienda videos individuales. La wiki ya documentó esto (WL-398: el 40,8 % de los videos citados por IA tiene menos de 1.000 visitas; importa más el video que el canal).
- **Varios canales = varias startups**: identidad, estrategia y arranque de cero cada vez. Solo conviene con dedicación full-time o equipo.
- **Excepción**: sponsors de nicho pagan más en canales específicos; pero eso es estrategia de consolidación, no de inicio.
- **Desventaja del generalista** (audiencia que quiere solo un tema) se mitiga con **series y playlists** (el «canal dentro del canal»).

Regla práctica (misma lógica que la taxonomía de la wiki):

1. Un canal, varias series.
2. División solo por dolor, no por lógica: separar un tema a canal propio cuando crece y tiene audiencia propia demostrada.
3. Los canales creados en plural desde el día uno casi siempre abandonan por falta de masa crítica.

## 4. Mapeo sugerido: dominios de la wiki → series del canal

| Serie | Dominios que alimenta |
|---|---|
| «Desde el taller» (hardware/práctica) | electronica-practica, microcontroladores, leds-y-pantallas, electromecanica, python-practico |
| «IA de cerca» | ia-local, agentes-de-codigo, ia-uso-practico, futuro-programacion |
| «Cómo funcionan las cosas» | ciencias-tierra, general, historia-informatica, estafas-y-consumidor |
| «Casa y oficio» | casa-calefaccion, construccion-y-vivienda, cocina |
| «Acá y ahora» (Argentina) | historia-argentina, sociedad-argentina, economia-argentina |
| «Para vivir mejor» | salud-fitness, desarrollo-personal |

(Propuesta orientativa; las series se consolidan con el contenido real, no al revés.)

## 5. Formas de automatizar el contenido

Ordenado por etapa de producción:

**Ideación (ya semi-automatizada).** La wiki es el generador de temas: el script `scripts/ideacion-canal.py` cruza `index.md` + `wiki/dominios.md` y produce candidatos priorizados: series con masa crítica (dominios ≥5 fuentes), clusters de conceptos transversales `[[...]]` (≥3 fuentes = video gancho) y fuentes recientes.

**Guion (alta automatización).** Un agente lee los resúmenes de la wiki —no los raws— y genera el borrador con citas `[[...]]`; las fuentes etiquetadas «señaladas» (2.ª mano sin citas) son el checklist de verificación previo a grabar. Plantillas por serie para estructura consistente (gancho → física del problema → demo → errores comunes).

**Producción — tres niveles:**

| Nivel | Qué | Herramientas | Esfuerzo |
|---|---|---|---|
| A. Voz IA + stock | TTS local (Piper, XTTS, F5-TTS) + imágenes/stock + montaje por plantilla (Remotion/FFmpeg) | bajo, pero contenido genérico |
| B. **Demo en vivo + edición asistida** — recomendado para este perfil | Grabar la demo (placa, código, receta); cortes de silencio, zooms y subtítulos automatizados (editores basados en Whisper, DaVinci scripting) | medio — mejor balance |
| C. Solo guion automatizado, presencia real | máxima retención, máximo esfuerzo |

**Metadatos y distribución (100 % automatizable).** Títulos/descripciones/capítulos generados desde el guion (WL-398: capítulos bien descritos = índice citable); Shorts verticales recortados de los momentos destacados; publicación programada + blog/newsletter, que realimenta la wiki (cada video = nueva fuente en `raw/`).

**Circuito completo:**

```
wiki/ (dominios crecen) → ideacion-canal.py → guion (agente)
→ grabar demo → edición asistida → publicación automatizada
→ el video vuelve a raw/ como fuente → nueva ingesta → se repite
```

Punto de partida sugerido: ideación + plantillas de guion (ya resuelto el primero); validar el ritmo de grabación antes de invertir en producción.
