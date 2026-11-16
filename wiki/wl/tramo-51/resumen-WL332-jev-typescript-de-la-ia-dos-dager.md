# WL-332 — ¿Qué joraca es Jev? El TypeScript de la IA

- **Fuente original**: `raw/wl/tramo-51/2026-09-21-que-joraca-es-jev-el-typescript-de-la-ia.md` ([vídeo](https://www.youtube.com/watch?v=EejD_ojLYzc))
- **Canal**: Dos Dager
- **Publicado**: 2026-09-21 · **Duración**: 17:26 · **Ingesta**: 2026-11-16 (tramo 51)
- **Tipo**: comentario/análisis react (opinión del autor sobre lanzamiento ajeno)
- **Dominios destino propuestos (consolidación aplazada)**: ia-critica-y-fronteras o general (industria IA)

## Idea central

Análisis (con humor argentino y bastante palabroteo) del lanzamiento de **Jev** — startup fundada por Diego Almeida, co-creador de RLHF y ChatGPT — presentado como «el TypeScript de la IA»: modelos clasificadores nativamente estructurados que complementan (no reemplazan) a los LLM en automatizaciones.

## Puntos clave

1. **La crítica central**: Jev «es esencialmente un classifier con esteroides y otro nombre». Los LLM, optimizados por RLHF para ser chatbots, son malos en lo que la automatización necesita: no alucinar, respuestas estructuradas consistentes. Forzarlos con `structured output` de API es «usar un cuchillo como destornillador» — JSON inválido, try/catch, re-llamadas.
2. **Primitivos**: los modelos de Jev exponen tres — `choice` (elegir entre opciones, con probabilidades), `score` (probabilidad continua 0-1 de una afirmación), `null` (declaración booleana que devuelve valor continuo). Solo aceptan texto, no multimodal.
3. **La «no alucinación» es de tipos, no semántica** (mejor insight del video): matemáticamente el output siempre cae dentro del espacio definido — «sintácticamente imposible que alucine» — pero puede equivocarse en el valor (decir 80 % de scam y estar errado). El marketing que vende «0 % alucinaciones» es, para el autor, falopa; lo real es salida type-safe.
4. **Analogía System 1 / System 2** (Kahneman, *Thinking, Fast and Slow*): Jev se posiciona como el pensamiento rápido-intuitivo previo al LLM — rutear input en lenguaje natural a categorías estrictas (¿usuario enojado? ¿a qué departamento derivar?) de forma muy rápida y barata.
5. **Tool use**: al parecer enruta consultas a herramientas apropiadas (clasificar qué herramienta resuelve la consulta, citar fuente); arquitectura no revelada — no está claro si califica como LLM con otra arquitectura.
6. **Casos de uso legítimos**: clasificación de soporte, gating/validación de outputs de LLM (que otro modelo barato califique si el LLM está «flasheando»), ruteo en automatizaciones; el problema real que ataca es el trabajo invisible de tunning de prompts y estructura alrededor de todo producto con LLM.
7. **Escepticismo final**: demos virales con Jev que prometían «motores gráficos nuevos» eran humo — categorías predefinidas + apretar teclas; hay waitlist y confusión sobre qué hace el producto. «Tendremos que ver si es humo o no cuando salga a andar.» La promesa de «motor de la nueva revolución industrial» se toma con ironía.

## Notas de fuente

- Formato react: el autor traduce/comenta el video promocional en inglés (con chistes sobre la remera cambiada entre tomas); el trasfondo factual proviene del marketing de Jev, no de fuentes independientes.
- Corte de luz en Buenos Aires a mitad de grabación («se cortó la luz en todo capital, que es básicamente la Argentina»).
- ASR garbiñeado normalizado solo aquí: «Jeff/Jev» → **Jev**; «Chef» → **Jev** (el producto/modelo); «champ cot» → chamuyo; «galways» → guardrails; «twiquear» → tune(ar); «Cocreo» → co-creó.

## Cruces

- Cluster crítica de hype IA: WL-132 (NCM de Stanford), WL-189 (NCM/Hybrid Reasoning Agents) — la misma tensión clasificador-vs-LLM analizada allí desde papers, aquí desde react.
- [[agentes-de-codigo]] / automatizaciones — el problema del structured output de LLM es transversal.
- Canal Dos Dager ya presente (WL-146, WL-184, resumen FAV-486) — candidato a actualización de entidad en consolidación.
