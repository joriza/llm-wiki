# WL-228 · La verdad sobre el autocompact (y tips)

- **Fuente original**: `raw/agentes-de-codigo/2026-10-14-inteligencia-artificial-la-verdad-sobre-el-autocompact-y-tips.md`
- **Video**: [Inteligencia artificial: la verdad sobre el autocompact (y tips)](https://www.youtube.com/watch?v=KeMRKkhLvEw)
- **Canal**: Gentleman Programming
- **Publicado**: 2026-10-14 · **Duración**: 14:50 · **Ingesta**: 2026-11-15 (tramo 32, formato dominio pendiente de consolidación)
- **Marco**: divulgación técnica de primera mano sobre Claude Code con citas a autoridades del propio ecosistema (equipo de Claude Code de Anthropic, liderazgo de Codex de OpenAI); el cierre incluye autopromoción de Gentle Shell (excluida de la síntesis); cifras de costes de terceros (caso W Media) citadas sin verificación.

## Qué trata

Por qué una ventana de contexto de 1 M de tokens no conviene usarla entera al programar con agentes: el costo por turno crece linealmente con el contexto acumulado (todo se reenvía en cada request) y la calidad decae por «context rot» mucho antes de llegar al techo. Recomienda configurar el autocompact de Claude Code alrededor de 400 K y explica cómo funciona la compactación por dentro.

## Puntos clave

- **La ventana es costo, no solo capacidad**: el modelo no tiene memoria; Claude Code reenvía en cada turno system prompt, skills, MCPs, cada archivo leído, cada output y cada respuesta. Una pregunta de una línea en una sesión larga cuesta como la conversación entera. El prompt caching abarata lo repetido, pero se cobra igual en cada turno y vence (1 h en suscripción: al volver de almuerzo, reproceso completo).
- **Context rot**: la comunidad observó que compactar cerca de 400 K funciona mejor que el default de ~967 K. «Tarik» del equipo de Claude Code (Anthropic): en modelos de 1 M, el context rot arranca entre 300-400 K — no dejar pasar ese punto cuando el trabajo necesita inteligencia. OpenAI con Codex: GPT-5.6 soporta >1 M por API pero el default es 272 K (subido a 362 K en julio, revertido en agosto) — justo antes del escalón de precio del API (>272 K de entrada = doble tarifa de entrada, 1,5× salida).
- **Config**: `/autocompact-window` (opciones auto + fijas de 100 K a 1 M); la ventana se guarda por modelo (Opus a 400 K, Haiku antes porque >100 K se cobra más caro). 400 K = punto de equilibrio del autor: aire para tareas grandes sin convertirse en «un pajar». Medir con `/context` y ajustar al uso real, no a un número mágico.
- **Cómo funciona el autocompact por dentro**: (1) buffer de reserva (~133 K) — dispara al llegar a ventana−buffer; (2) request aparte de resumen que lee todo desde caché si está caliente (barata); (3) reemplaza el historial por un resumen estructurado (pedido y objetivo, conceptos clave, archivos tocados con fragmentos, errores y arreglos, tareas pendientes) — se pierde el texto literal, outputs completos y razonamiento intermedio; (4) reinyección automática: CLAUDE.md y reglas desde disco, memoria, plan del plan mode, hasta 5 archivos leídos/editados recientes (los de >5000 tokens quedan como referencia), reglas con path y CLAUDE.md anidados bajo demanda, subagentes en background avisan para no duplicar.
- **Por qué NO ventanas chicas**: compactar no es gratis (el resumen lee toda la conversación); ventana muy chica = compactaciones constantes + relecturas de archivos para recuperar detalle. Caso citado (W Media, Haiku 4.5): ventana 130 K bajó el coste de una sesión de 45 archivos de 0,51 a 0,15 USD (−71 %), pero una sola lectura grande (9 K→126 K) forzó compactación y salió 3× más caro. Regla: la ventana debe ser mayor que la tarea típica.
- **El momento importa**: compactar tarde = resumen hecho por el modelo en su peor momento (context rot). Mejor compactar a mano (`/compact focus on…`) en pausas naturales; `/rewind` para descartar un mal camino (vuelve a un punto cacheado), `/clear` al cambiar de tema. Investigación pesada → subagentes (solo vuelve el resumen).
- **Hábitos del autor**: mirar `/context` antes de tocar nada; ventana ajustada a la tarea típica; lo crítico en CLAUDE.md (<200 líneas) y no en el chat (se recarga tras compactar); lo específico en skills (lo importante arriba del archivo, porque el truncado conserva el inicio); `# compact instructions` en CLAUDE.md para priorizar qué preserva el resumen; revisar `/usage` semanalmente.

## Observaciones de triage

- Fuente interna de primera mano del ecosistema de agentes de código (mismo canal que WL-94 y otros del cluster); coherente con la práctica del propio proyecto (estación WL en archivos, no en chat).
- Las citas a Anthropic/OpenAI («Tarik», «Tivo», defaults de Codex, escalón de 272 K) son de 2ª mano sin enlaces — verificar antes de citar como hecho; el caso de coste W Media igual.
- Cruces previstos: [[agentes-de-codigo]], [[gentleman-programming]], WL-94 (tercera voz del canal en la estación), WL-165/WL-178/WL-180/WL-185/WL-203/WL-214 (cluster agentes), [[odd-metodologia]] (lo crítico en archivos persistentes).
- Dominio previsto: ia-uso-practico/agentes-de-codigo — consolidación diferida, S4: no se crean dominios nuevos.
