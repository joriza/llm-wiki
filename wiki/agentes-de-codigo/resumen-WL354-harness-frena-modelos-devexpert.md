# WL-354 — Tu harness puede frenar a los nuevos modelos

- **Fuente original**: `raw/agentes-de-codigo/2026-09-17-tu-harness-puede-frenar-a-los-nuevos-modelos.md` ([vídeo](https://www.youtube.com/watch?v=Hx2M-L4Iw1c))
- **Canal**: DevExpert — IA para Desarrolladores
- **Publicado**: 2026-09-17 · **Duración**: ~17:10 · **Ingesta**: 2026-11-16 (tramo 55)
- **Tipo**: videoensayo técnico con experiencia propia (1.ª mano en sus flujos, 2.ª mano en el caso Uncle Bob)
- **Dominios destino propuestos (consolidación aplazada)**: agentes-de-codigo o ia-critica-y-fronteras

## Idea central

El «harness engineering» (orquestaciones complejas alrededor del agente) es una solución temporal a las limitaciones de los modelos: con modelos más capaces (menciona «Astra y Fable», ASR sin verificar), las capas añadidas empiezan a estorbar — el caso detonante es Uncle Bob eliminando su sistema multiagente de 6 niveles y obteniendo mejor resultado, más rápido y más barato sin él.

## Puntos clave

- **Confusión terminológica** [01:46]: se llama «harness» tanto a la infraestructura inevitable (herramientas, permisos, estado, human-in-the-loop) como a cadenas de subagentes planificador→revisor→implementador→crítico; lo cuestionable es la segunda, no asumir que más pasos = más fiabilidad.
- **Tradeoffs de subagentes** [04:47]: cada subagente recarga contexto desde cero (coste), los traspasos pierden información, re-revisan trabajo ajeno por desconfianza, y alguien debe resolver desacuerdos; justificado solo para investigación paralela independiente, tareas con mucho contexto aislado o revisiones con criterios concretos — no para cadenas fijas de especialistas. Su flujo con agente auditor que además validaba la especificación tardó más, gastó más cuota y no mejoró el resultado.
- **Crítica al SDD** [06:51]: lo percibe como cascada clásica; definir todo antes de prototipar le parece optimista — los fallos reales aparecen al tocar la implementación. Su flujo preferido: brainstorming conversacional → primera implementación → iterar visualmente → segunda pasada; llega antes y con menos tokens.
- **Harness mínimo (4 piezas)** [09:29]: (1) `agents.md` como mapa con docs cargadas bajo demanda; (2) arquitectura de proyecto limpia; (3) skills operativas solo cuando el modelo tropieza repetidamente con un paso; (4) gates deterministas — todo lo que pueda resolverse con script no debe gastar tokens de LLM (compilación, tests unitarios/integración/UI, smoke tests, linters, tipos, CI).
- **Método de poda** [14:20]: partir del flujo más simple (concorda con la recomendación de Anthropic, citada); antes de añadir una capa preguntar qué fallo concreto resuelve, si se resuelve con contexto/mejor herramienta/comprobación automática, y medir coste-beneficio; al cambiar de modelo, re-auditar cada pieza; probar sobre tareas representativas cambiando una pieza por vez.
- **Límite de su propia tesis** [04:18]: si cada mejora se aprovecha para pedir trabajos más ambiciosos, seguirá habiendo motivo para harness complejos; y un modelo barato con buen harness puede competir con uno caro — a medir caso por caso.

## Evaluación

- Ensayo de opinión técnica apoyado en experiencia propia (medible, describe el método); el caso Uncle Bob y el artículo de Anthropic son 2.ª mano sin verificación — señaladas. La tendencia «los harness caducan» la presenta como impresión difícil de medir, honestamente.
- Cierre like/suscripción excluido; sin patrocinio.
- ASR garbiñeado normalizado solo donde seguro: «Cloud Code/CH GPT Boys»→Claude Code/ChatGPT, «Astra y Fable»→nombres de modelos ASR sin verificar (mantenidos como suenan), «Ankel Bof/Unkel Bob»→Uncle Bob (Robert C. Martin), «agents.m»→agents.md, «suagentes/suagentes»→subagentes, «jarn»→harness.

## Cruces

- Contrapunto directo de la tendencia orquestación-máxima: [[agentes-de-codigo]], [[odd-metodologia]] (gates deterministas, método de poda una-pieza-por-vez), concepto delegacion-cognitiva-ia (límites de la delegación); familia con WL-228 (context rot) y el debate SDD (WL-211, candidato concepto SDD); tema harness con el ecosistema Gentle AI (WL-300). DevExpert 1.ª fuente.
