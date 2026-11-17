# WL-572 — Lo PEOR que le ha pasado a Claude

- **Fuente original**: `raw/wl/tramo-91/2026-08-17-lo-peor-que-le-ha-pasado-a-claude.md` ([Vídeo](https://www.youtube.com/watch?v=dqGnwoK9gsI))
- **Canal**: hdeleon.net (Héctor de León)
- **Publicado**: 2026-08-17 · **Duración**: 09:23
- **Dominio provisional**: agentes-de-codigo / ia-critica-y-fronteras (marca de agua de IA)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Explicación técnica del **sistema de marca de agua textual de Anthropic para Claude** (en cumplimiento de la ley de IA de la UE), con desarme previo del «humo» previo al anuncio: horas después del anuncio sin detalles ya existían repositorios de GitHub «vendiendo la vacuna» contra caracteres unicode invisibles que ni existían («época del steampunk»):

- **Mecanismo bien explicado**: los LLM eligen el siguiente token entre candidatos probables; en escenarios donde varios candidatos **no cambian el significado** («el cielo está gris» vs «nublado»), el modelo no lanza su dado normal sino que toma una decisión guiada por una **clave/secuencia secreta** de Anthropic (2, 3, 8, 10…): la elección entre sinónimos equivalentes se convierte en la firma estadística; la detección será vía API futura («en proceso de definir detalles»).
- **Limitaciones reconocidas por el propio Anthropic** (citadas por el video): no es 100 % seguro (da una probabilidad); si otro modelo edita el texto, pone su propia marca y la de Claude se difumina; textos cortos = marca «borrosa»; donde solo hay una continuación posible («2+2=») no aplica; en **código** la marca será muy difusa porque cambiar sintaxis es de alto riesgo — solo los comentarios (lenguaje natural) serían detectables; textos humanos editados mantienen probabilidad de detección parcial; los modelos ya desplegados serán modificados.
- **Sin coste ni metadata**: no requiere tokens adicionales, no cobra más, no identifica al usuario final, cada empresa tendrá su propio mecanismo (obligación UE para todos los proveedores).
- **Veredicto del canal**: «una medida a medias» — cumplir la ley sin romper el producto; previsible proliferación de herramientas de remoción/reescritura con otro modelo.

## Señales de triage

- **Explicación didáctica de 2.ª mano con anclajes declarados**: cita textual del FAQ de Anthropic («Pronto ofreceremos un API para detección…») y el mecanismo descrito (sesgo estadístico en candidatos equivalentes) es coherente con la literatura de watermarking; los detalles de implementación (cómo se genera la clave) Anthropic no los revela — señalado como desconocido.
- El título («lo PEOR que le ha pasado a Claude») es clickbait invertido — el contenido es neutral-técnico.
- **Autopromoción excluida**: cupón Metalcode 15 % al cierre.
- ASR mínimo («Tropi» por ¿troli?/GitHub, «Metal Code»); raw intacto.

## Cruces

- **[[agentes-de-codigo]] / gobernanza IA**: watermarking estadístico ↔ [[gobernanza-ia]] (WL-454 Meta, regulación UE) y el hilo «cumplimiento simbólico» (medidas que satisfacen al regulador sin efecto real) — candidata a página concepto «marca de agua de IA» junto a la batería.
- Código sin marca ↔ [[agentes-de-codigo]] (WL-501/450): la distinción código vs comentarios como zonas de riesgo ↔ [[odd-metodologia]] (el determinismo del código impide sesgar sin romper).
- «Humo antes del anuncio / vacunas fantasma» ↔ hilo de percepción-de-regresion-de-modelos y [[brecha-junior-ia]] (el ecosistema de herramientas sobre fantasmas).
- [[hdeleon-net]] 12.ª fuente WL — hilo del canal «leer el mecanismo antes de opinar» (WL-388/427).

## Veredicto de triage

Útil: la mejor explicación en español del backlog del watermarking de Anthropic, con limitaciones completas y escepticismo razonado; detalles de implementación desconocidos y título clickbait — señalados. Consolidación diferida (L12): agentes-de-codigo/ia-critica-y-fronteras, [[gobernanza-ia]], [[hdeleon-net]] +1, página concepto watermarking candidata.
