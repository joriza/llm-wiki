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

## 8. Cheatsheet rápido

- ¿Qué temas tengo? → `wiki/dominios.md`
- ¿Dónde está X? → `grep "X" index.md`
- ¿Qué sé de X a fondo? → hub + síntesis viva del dominio
- ¿Es confiable esta cifra? → marcas epistémicas del resumen
- ¿Qué falta investigar? → sección «Lagunas» de la síntesis viva
- ¿Cuándo ingresó/migró X? → `log.md`
- Fuente nueva → ingesta (pasa por `wl/` en triage) → dominio definitivo en consolidación
