# WL-346 — Qué es Jev AI y por qué todo el mundo habla de ello

- **Fuente original**: `raw/ia-uso-practico/2026-09-21-que-es-jev-ai-y-por-que-todo-el-mundo-habla-de-ello.md` ([vídeo](https://www.youtube.com/watch?v=D73kVkGCPiY))
- **Canal**: return(GiS);
- **Publicado**: 2026-09-21 · **Duración**: 20:33 · **Ingesta**: 2026-11-16 (tramo 54)
- **Tipo**: demo práctica/tutorial de primera mano (API y SDK del producto)
- **Dominios destino propuestos (consolidación aplazada)**: ia-uso-practico o ia-critica-y-fronteras

## Idea central

Demo de primera mano del clasificador **Jev** (ya presentado como lanzamiento en WL-332 y comparado con rivales en WL-298): qué lo diferencia de un LLM generalista (interfaz de decisiones sobre opciones/escalas definidas por el llamador, en vez de texto libre), sus tres primitivos (`null` = sí/no con probabilidad, `choice` = elegir entre opciones, `score` = posición en escala ordenada), cómo se combinan en una sola llamada estructurada, y por qué es complementario — no reemplazo — de los LLM: decisiones rápidas y baratas, con tokens de salida gratuitos (solo se cobra la entrada).

## Puntos clave

- **Contexto del lanzamiento** [01:00]: tweet viral (36 M de visualizaciones según el video, cifra sin verificar) del fundador (ASR: «Diogo Almeida»; WL-332 lo registra como Diego Almeida, co-involucrado en ChatGPT) presentando Jev: más rápido y más barato, sin cobro por tokens de salida.
- **Acceso** [02:21]: lista de espera en la plataforma del fabricante (ASR: «TypeSafe», resuelta en pocas horas; nombre de producto distorsionado por el ASR, ya aparecido como «Tape Safe AI» en WL-298) y disponibilidad vía OpenRouter, Vercel y Netlify; pruebas con muy pocos créditos.
- **Demo 1 — `null` (urgencia)** [03:07]: texto «criatura enorme destrozando el puente…» → probabilidad de urgencia 99 %, 626 ms, 22 tokens de salida a coste cero; formato de petición distinto del estándar OpenAI (estado + pregunta + instrucciones).
- **Benchmark casero** [05:34]: misma clasificación contra Claude Haiku 4.5 (1.225 ms, 98 %), un GPT mini (ASR: «5.4 Mini»), Astra y Fable — los LLM tardan el doble o más y cuestan más; los de razonamiento, aún más. La ventaja es tiempo + coste, no precisión.
- **Teoría** [07:16]: la IA se venía usando para generar texto, pero muchas veces solo se necesita una decisión; cambia la interfaz del modelo, no el fondo. Entrenamiento con «RLCD» (reinforcement learning for calibrated decisions, según el ASR) para calibrar probabilidades (cuando dice 80 %, acierta 8 de 10); receta no publicada. **Advertencia explícita del autor**: respetar el formato no significa acertar el valor.
- **Demo 2 — `choice`** [09:02]: clasificar un incidente («nave no identificada sobre Central Park») en categoría única → «invasión alienígena».
- **Demo 3 — `score`** [10:19]: puntuar amenazas en escala ordenada (gato en tejado → 0,10 mínimo; apagón en laboratorio → moderado), con valores intermedios posibles.
- **Combinación de primitivos** [13:06]: expediente estructurado desde un briefing (tipo de entorno `choice` + nivel de riesgo `score` + bools), 638 ms — el caso de uso real: tickets de soporte a formulario.
- **Demo Doom** [15:27]: el modelo toma la siguiente acción del juego (girar/disparar vía `choice`) en cada tick; comparación educativa contra un bot de reglas y un GPT sin razonamiento (que retrasa visiblemente el juego); con la misma semilla, Jev decide en tiempos que mantienen la fluidez.

## Evaluación

- Demo de primera mano con capturas de tiempos/costes reales de la API del autor; pero las cifras de marketing del lanzamiento (36 M de visualizaciones, «tokens de salida gratis») se citan de segunda mano sin verificación — señaladas; el propio autor ya matiza que formato ≠ certeza.
- Sin patrocinio; cierre de canal (like/suscripción) excluido.
- ASR garbiñeado: «Jeff»→Jev, «Cloud Haiku»→Claude Haiku, «Bidum»→librería de Doom no identificada (sin normalizar) — normalizado solo en el resumen.

## Cruces

- Contrapartida práctica de WL-332 (react de lanzamiento, Dos Dager: «classifier con esteroides», salida type-safe ≠ no alucinación) y WL-298 (comparativa con el rival open source y trampas del fine-tuning); tema adyacente al routing-por-coste candidato (WL-274/278/298); cruces [[agentes-de-codigo]] (rutear decisiones en automatizaciones), [[delegacion-cognitiva-ia]]. Canal return(GiS); 1.ª fuente (texto plano).
