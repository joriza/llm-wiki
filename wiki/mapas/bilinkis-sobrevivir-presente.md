# Mapa organizativo: Guía para Sobrevivir al Presente (Bilinkis)

> **Naturaleza de este archivo**: mapa organizativo, NO fuente, NO resumen.
> El libro NO está ingestado en `raw/`. Este archivo solo registra estructura
> (índice) y correspondencias contra la taxonomía de la wiki. **No contiene
> afirmaciones de contenido del libro**; el contenido de las páginas de la wiki
> sigue proviniendo exclusivamente de fuentes ingestaadas. Ver
> `dominios.md` (principios de taxonomía) y `log.md` (entrada de adopción).

## Metadatos

- **Título**: Guía para Sobrevivir al Presente — Atrapados en la era digital
- **Autor**: Santiago Bilinkis
- **Editorial**: Sudamericana
- **PDF externo** (fuera del repo, no ingestado): `g:\Mi unidad\Libros\Guía para Sobrevivir al Presente - Santiago Bilinkis.pdf`
- **Rol adoptado**: ordenador / mapa de contraste para consolidación y lint.
- **Dominios bajo contraste**: `critica-tecnologica`, `desarrollo-personal`,
  `ia-critica-y-fronteras`, `educacion-ia` (hubs `tecnologia-y-sociedad/`,
  `hogar-y-vida-practica/`, `ia/`).

## Índice y correspondencia con la wiki

Estructura del libro → dominios existentes que cubren cada tema. Ningún capítulo
justifica un dominio nuevo: todo cae en la taxonomía de hubs aprobada.

| Parte / Capítulo del libro | Tema | Dominios wiki afines |
| --- | --- | --- |
| **Parte 1 — La tecnología y nuestra vida personal** | | |
| Cap. 1 — Nuestro cerebro prehistórico en la era digital | sesgos cognitivos, gratificación inmediata, procrastinación, manipulación, concentración | `desarrollo-personal`, `critica-tecnologica` |
| Cap. 2 — (Des)conectados en la era de las redes | conexión vs comunicación, likes/autoestima, citas online, epidemia de soledad | `critica-tecnologica`, `desarrollo-personal` |
| Cap. 3 — Adultos analógicos criando niños digitales | pantallas y crianza, videojuegos y adictividad, celular por etapas evolutivas | `desarrollo-personal`, `critica-tecnologica` |
| **Parte 2 — La tecnología y nuestra vida profesional** | | |
| Cap. 4 — El trabajo en la era digital | IA y empleo, el "centauro" (humano+IA), profesiones en extinción | `ia-critica-y-fronteras`, `futuro-programacion` |
| Cap. 5 — El desafío de aprender toda la vida | lifelong learning, desaprender, skill gap, formación adulta | `educacion-ia` |
| Cap. 6 — Empresas jaque: sobreviviendo a la disrupción | innovación vs disrupción, organizaciones que aprenden | `ia-critica-y-fronteras` (borde con `general`) |
| Cap. 7 — La tecnología y sus efectos inesperados | algoritmos y sesgos, ética de autos autónomos, robots, auténtico vs falso (deepfakes) | `ia-critica-y-fronteras`, `critica-tecnologica` |
| **Parte 3 — La tecnología y el desafío de ser felices** | | |
| Cap. 8 — ¿Y encima de todo hay que ser felices? | felicidad, dinero y posesiones, hábitos, trampa de la pasión | `desarrollo-personal` |

## Conceptos transversales candidatos

Candidatos a página de concepto única (contenido a construir SOLO desde fuentes
ingestaadas; el libro solo sugiere el nombre). Verificación contra `index.md`
realizada 2026-11-24 (búsqueda sobre las 1508 líneas del catálogo):

| Concepto candidato | Estado en la wiki (verificado) | Acción en próxima consolidación |
| --- | --- | --- |
| `[[sociedades-de-control]]` / dominación algorítmica | **Ya existe** (`critica-tecnologica`, con WL-122 FoMO/sesgo) | Solo cruzar si se ingesta material afín |
| `[[pantallas-y-educacion]]` | Parcial: WL-396 (PISA: pantallas-ocio >1 h como causa) en `educacion-ia` | Solo 1 fuente → NO crear aún; vigilar acumulación |
| `[[habilidades-vs-titulo]]` / skill gap | Parcial: `[[brecha-junior-ia]]` cubre borde laboral | Evaluar si `brecha-junior-ia` absorbe o convive |
| `[[delegacion-cognitiva-ia]]` ("centauro") | **Ya existe** como concepto, con múltiples cruces | Sin acción; el cap. 4 del libro mapea aquí |
| `[[atencion-y-adiccion-por-diseno]]` | No hallado en index (búsqueda "adict/atención" sin fuentes cortas dedicadas) | Hueco real latente; solo crear con ≥3 fuentes propias |
| `[[soledad-conectada]]` | No hallado | Ídem: sin fuentes propias aún, no crear |

## Huecos detectados (candidatos a ingesta futura — NINGUNO aprobado)

1. Efectos de pantallas/celular en niños por etapa evolutiva (cap. 3): la wiki
   no tiene fuentes dedicadas a primera infancia/escolar/adolescencia.
2. Ética de algoritmos y sesgo discriminatorio (cap. 7): `ia-critica-y-fronteras`
   cubre crítica general, no casos de sesgo algorítmico concreto.
3. Epidemia de soledad / hipercomunicación (cap. 2): sin fuentes propias.

**Decisión registrada (2026-11-24)**: no se ingesta ningún capítulo ahora; estos
huecos solo se materializan como ingesta individual si el lint los confirma.

## Uso previsto

- **Lint/consolidación**: contraste de fronteras — ¿la división
  personal/profesional/felicidad del libro coincide con la frontera
  `critica-tecnologica` ↔ `desarrollo-personal` ↔ `ia-critica-y-fronteras`?
  Disparadores aplicables (principios 4.2 y 4.4 de `dominios.md`).
- **Regla dura**: si en cualquier página se escribe contenido que solo está en
  este libro, el libro pasa a ser fuente: se ingesta el capítulo correspondiente
  con resumen, `index.md` y `log.md` normales.
