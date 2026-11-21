# Guía de uso de la wiki (llm-wiki)

Cómo aprovechar la wiki como segundo cerebro cuando el corpus supera las 1.000 fuentes. Documentación de uso del proyecto; complementa las reglas operativas de `AGENTS.md` (que definen los procesos de ingesta, consulta, lint y consolidación).

*Creada: 2026-11-21.*

## 1. La regla mental clave: no memorizás la wiki, la consultás por capas

El diseño resuelve el problema de dimensión mental con **4 capas de lectura**, de más general a más específica:

| Capa | Archivo | Qué te da | Cuándo usarla |
|---|---|---|---|
| **1. Mapa** | `wiki/dominios.md` | Los dominios con su alcance en una línea | «¿qué temas tengo?» — primera parada siempre |
| **2. Estado** | `wiki/sintesis.md`, `wiki/overview.md` | Síntesis acumulativa: hilos, contradicciones, hallazgos por tramo | «¿qué sé hasta ahora sobre X área?» |
| **3. Hub de tema** | ej. `wiki/educacion-ia/educacion-ia-hub.md` | Mapa de un tema: ejes, fuentes, cruces | «¿qué fuentes componen este tema?» |
| **4. Fuente** | `resumen-WLNNN-....md` | El detalle con marcas epistémicas («señaladas», ASR, NO factual) | Al escribir o citar |

**Regla operativa**: nunca buscar en la capa 4 sin pasar por la 1-3. Para «¿qué tengo sobre calefacción?»: `dominios.md` → `casa-calefaccion/` → su hub si existe.

## 2. Mecanismos automáticos (no hace falta tenerlos en la cabeza)

- **`index.md`** — catálogo con resumen de una línea por fuente; es el motor de búsqueda pobre. Un `grep` en index.md dice en qué dominio vive cualquier tema sin abrir resúmenes.
- **Dominios con criterios escritos** — cada dominio tiene su alcance definido en `dominios.md`; la ubicación de una fuente nueva se consulta, no se decide.
- **Lint con disparadores objetivos** (en `dominios.md`): dominio >30 fuentes → proponer división; <5 sin crecimiento → fusionar; solapamiento >30 % → fusionar. La wiki se auto-audita.
- **Triage `wl/`** — las fuentes nuevas entran por la estación provisional y migran a su dominio definitivo en consolidación; no hay que decidir en caliente.

## 3. El patrón «síntesis viva» para temas de investigación

Para un tema que se investiga a fondo (ejemplo implementado: `wiki/educacion-ia/sintesis-educacion-ia.md`):

1. **Página de síntesis viva** dentro del dominio con: hallazgos consolidados (con nivel de confianza), preguntas abiertas, contradicciones entre fuentes, lagunas de fuentes.
2. **Se actualiza en cada consolidación** — es la agenda de investigación; no hay que recordarla.
3. Las **lagunas** indican qué buscar/ingestar después: la investigación avanza cerrando lagunas, no acumulando más de lo mismo.

Cuando un tema se vuelva central, replicar el patrón: dominio propio (si las fuentes no encajan razonablemente en los existentes) + hub + síntesis viva, según el protocolo de `dominios.md`.

## 4. Los cruces `[[...]]` (la parte más subestimada)

La regla S2 (membresía física única, relaciones ilimitadas) hace que el mismo hecho viva en un lugar pero *conozca* a todos los demás.

- **Cruce inesperado = hallazgo**: que WL-079 (Logo, 1966) prediga el ciclo de la IA en aulas de 2026 es una conexión que ningún buscador da — solo existe porque ambas fuentes comparten wiki.
- **Al leer un resumen, mirar su sección «Cruces»**: es la profundización que la wiki misma recomienda.
- **Conceptos transversales** ([[naturaleza-insolita]], [[delegacion-cognitiva-ia]]): una única página que consolida todas las fuentes que tocan el concepto — el antídoto contra la duplicación en 1.000 documentos.

## 5. Flujo de consulta correcto

```
Pregunta → dominios.md (¿qué dominio?) → hub/síntesis del dominio
→ resúmenes puntuales → respuesta CON citas
```

Si la pregunta cruza dominios (ej. «IA y empleo junior»), empezar por el **concepto transversal**, no por un dominio — ahí está pre-amarrada la conexión.

Restricción en modo consulta (AGENTS.md): responder solo desde `wiki/`; si la wiki no cubre la pregunta, declarar la laguna y proponer ingesta — nunca completar con conocimiento general.

## 6. Herramientas auxiliares del proyecto

| Herramienta | Uso |
|---|---|
| `scripts/ideacion-canal.py` | Prioriza temas por masa crítica y clusters de conceptos `[[...]]` |
| `resumen/` (ignorado por Git) | Exports para probar chats externos con la wiki organizada |
| Etiquetas epistémicas | «señaladas» = 2.ª mano sin citas; «NO factual» = opinión/dramatización — saber qué cifra se puede citar y cuál verificar antes |
| `log.md` | Historial cronológico solo-adición — «¿cuándo se ingestó/migró X?» |

## 7. El hábito que sostiene todo

**Una sola regla de disciplina**: después de cada sesión de lectura o investigación, si se aprendió algo que no está en la wiki, **entra como fuente** (o actualiza la síntesis viva del dominio). La wiki solo es segundo cerebro si nada importante vive solo en la cabeza.

## 8. Glosario — las 7 piezas de la wiki

### Dominio — *la carpeta-tema*

Carpeta física dentro de `wiki/` que agrupa fuentes por tema. Es la *ubicación de archivo*: toda fuente vive en UN solo dominio (regla S2).

**Ejemplo**: `wiki/educacion-ia/` — 26 resúmenes de educación. Su alcance está escrito en `dominios.md`.

**Sirve para**: responder «¿dónde busco cosas de X tema?» sin recorrer 1.500 archivos. Es organización física, administrativa.

**No es**: una categoría cerrada. Una fuente puede *relacionarse* con varios temas, pero físicamente vive en uno solo — la relación va por cruces.

### Resumen — *la ficha de una fuente*

Página (`resumen-WLNNN-titulo.md`) que condensa UN documento de `raw/`: tesis, datos, advertencias críticas («señaladas», «NO factual», errores de ASR) y cruces.

**Ejemplo**: `resumen-WL031-como-ai-destruyo-los-salones-de-clase.md` — el video de Platzi condensado en tesis, evidencia, posición del autor y notas críticas (conflicto de interés detectado).

**Sirve para**: nunca releer el raw. El resumen ES el conocimiento de esa fuente, con su confiabilidad ya evaluada. Es la unidad mínima de conocimiento.

### Concepto y concepto transversal — *la idea que atraviesa fuentes*

Página que consolida UNA IDEA que aparece en varias fuentes — sin duplicar contenido: el concepto reúne, los resúmenes detallan.

- **Concepto (de dominio)**: vive donde corresponde temáticamente. Ej: `familia-pisa.md` — cómo 4 videos casi idénticos cubren el mismo dato PISA con encuadres distintos.
- **Concepto transversal**: la idea aparece en *dominios distintos*; se crea UNA única página, enlazada desde cada dominio. Ej: `delegacion-cognitiva-ia` — existe una sola vez, enlazada desde educación, programación y desarrollo personal.

**Sirve para**: el antídoto contra la duplicación. Es la unidad de conocimiento de más alto nivel.

### Hub — *el índice de un dominio*

Página dentro del dominio que lo mapea: ejes temáticos, fuentes por eje, cruces con otros dominios.

**Ejemplo**: `wiki/educacion-ia/educacion-ia-hub.md` — 5 ejes con cada fuente bajo su eje.

**Sirve para**: la capa 3 de lectura — ver todo el dominio en una pantalla.

**Diferencia con el concepto**: el hub organiza *fuentes* de un dominio; el concepto consolida *una idea* entre dominios.

### Laguna — *lo que la wiki NO sabe*

Vacío documentado: un tema sin fuentes suficientes. No es un error — es información accionable.

**Ejemplo** (en `sintesis-educacion-ia.md`): «faltan fuentes desde la voz de estudiantes adolescentes»; «no hay nada sistemático sobre regulación de celulares por país».

**Sirve para**: dirigir la próxima búsqueda. Una laguna registrada es una tarea de investigación.

### Export temático — *la wiki empaquetada para afuera*

Archivo generado automáticamente (en `resumen/`, ignorado por Git) que fusiona páginas de la wiki en un solo `.md` para alimentar chats o herramientas externas. No forman parte de la wiki: son copias de prueba. Se regeneran cuando la wiki crece; nunca se editan a mano.

**Ejemplo**: `resumen/wiki-export-educacion.md` — 283 páginas seleccionadas por palabras clave, 1,8 MB en un solo archivo.

**Sirve para**: los chats procesan mejor 1 archivo grande que 1.000 chicos. Selección temática o totalización.

### Síntesis — *el estado del conocimiento (dos sabores)*

- **`wiki/sintesis.md` (global)**: síntesis acumulativa de TODA la wiki — hilos entre tramos, contradicciones. Se actualiza en consolidaciones. Es la capa 2.
- **`sintesis-<tema>.md` (viva, de dominio)**: para un tema de investigación — hallazgos consolidados (con confianza), preguntas abiertas, contradicciones, lagunas. Ej: `sintesis-educacion-ia.md`.

**Sirve para**: memoria de investigación. El estado actual («a la fecha la evidencia converge en X, queda abierta Y») sin reconstruirlo de los resúmenes cada vez.

### El mapa mental completo

```
DOMINIO (carpeta, tema)
  ├── RESUMENES (fichas de fuentes) — el detalle
  ├── CONCEPTOS (ideas consolidadas) — lo abstracto
  │     └── transversales: una sola página, enlazada desde todos
  ├── HUB (índice del dominio) — el mapa
  └── SÍNTESIS VIVA (estado de investigación) — hallazgos + LAGUNAS

EXPORTS (copias para chats externos) — fuera de la wiki
```

## 9. Cheatsheet rápido

- ¿Qué temas tengo? → `wiki/dominios.md`
- ¿Dónde está X? → `grep "X" index.md`
- ¿Qué sé de X a fondo? → hub + síntesis viva del dominio
- ¿Es confiable esta cifra? → marcas epistémicas del resumen
- ¿Qué falta investigar? → sección «Lagunas» de la síntesis viva
- ¿Cuándo ingresó/migró X? → `log.md`
- Fuente nueva → ingesta (pasa por `wl/` en triage) → dominio definitivo en consolidación
