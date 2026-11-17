# WL-551 — Descargar Qwen 4 MoE 🚀 Todo sobre la NUEVA Arquitectura y su Lanzamiento

- **Fuente original**: `raw/wl/tramo-87/2026-08-25-descargar-qwen-4-moe-todo-sobre-la-nueva-arquitectura-y-su-lanzamiento.md` ([Vídeo](https://www.youtube.com/watch?v=Fuy_URUQErs))
- **Canal**: Nichonauta
- **Publicado**: 2026-08-25 · **Duración**: 02:57
- **Dominio provisional**: ia-local (lanzamiento de modelos)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Short-noticia de víspera de lanzamiento: **Qwen 3.8 Flash Next**, primer modelo con la arquitectura Qwen 4, con pesos abiertos en ModelScope/Hugging Face ~21 horas después del video:

- **Convención de nombres explicada**: como ya pasó con Qwen 3.5 .6/.8 «Next», los primeros modelos de la nueva generación llevan el nombre de la anterior aunque la arquitectura ya sea la nueva («Basado en la arquitectura Qwen 4», cita de la ficha en pantalla).
- **Multimodal MoE** de pesos abiertos; se publicará en BF16 nativo + versión FP8 (contraste con DeepSeek V4 y «Kimika 3» [Kimi K3], parcialmente a 8/4 bits).
- **Expectativas declaradas**: mayor optimización, ventana de contexto e inteligencia con más parámetros totales pero sin crecer proporcionalmente en lentitud ni memoria (MoE); aviso al espectador: «prepárense para sufrir por la memoria».
- **Señal de mercado**: en LMArena hay un Qwen 4 con nombre en clave en evaluación — presumiblemente la versión grande privada; la de pesos abiertos sería la pequeña.

## Señales de triage

- **Noticia de anticipación**: no hay pruebas propias (a diferencia del registro habitual del canal); lo citado son las fichas de ModelScope en pantalla (1.ª mano parcial) + especulación explícita sobre tamaño/rendimiento — señalada como esperanza, no medida.
- Coherente con WL-440 (GLM Flash) y el propio WL-545 (el canal luego convierte Qwen 3.5 4B a MoE con arquitectura Qwen 4).
- ASR: «Kimika 3» por Kimi K3, «Arena AI» por LMArena — normalizado solo aquí; raw intacto. Sin patrocinios.

## Cruces

- [[qwen]] +1 (línea temporal Qwen 3.8 Flash Next → Qwen 4), [[inferencia-local]], [[routing-por-coste]] (MoE = activación parcial como routing interno; FP8 nativo).
- WL-545 (mismo canal: TuMoE sobre Qwen 3.5 4B «basado en arquitectura Qwen 4»), WL-440 (GLM 5.3 Flash como competidor MoE barato), WL-539 (harness DeepSeek sobre modelos baratos).
- «Prepárense para sufrir por la memoria» ↔ WL-550 (suba de precios de RAM por GenAI): el mismo boom que encarece la memoria local — hilo transversal del tramo.

## Veredicto de triage

Útil como registro de hito (primer Qwen con arquitectura 4, pesos abiertos, BF16+FP8), con expectativas no medidas — señaladas. Consolidación diferida (L12): [[qwen]], [[inferencia-local]], batería Nichonauta +1; enlazar con la prueba del modelo cuando se ingiera.
