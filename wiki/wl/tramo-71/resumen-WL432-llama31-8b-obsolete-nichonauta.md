# WL-432 — Llama 3.1 8B: ¿sigue siendo valioso o ya es obsoleto?

- **Fuente original**: `raw/wl/tramo-71/2026-09-02-llama-3-1-8b-sigue-siendo-valioso-o-ya-es-obsoleto.md` ([vídeo](https://www.youtube.com/watch?v=ZiidlVYPIQ4))
- **Canal**: Nichonauta · **Publicado**: 2026-09-02 · **Duración**: 07:33 · **Dominio**: ia-uso-practico/ia-local

## Qué trata

Retrospectiva con demo (07:33, Nichonauta) del **Llama 3.1 8B Instruct** de Meta, antes rompedor para su tamaño, probado hoy con la misma batería de los videos previos del canal (WL-428, WL-431):

- Contexto: text-only, 128k tokens de contexto nominal, formulario de aprobación de Meta para descargarlo, y aun así ~6 M descargas/mes en el repo oficial — señal de que sigue muy usado.
- Ejecución: GGUF UD Q4_K_XL (~5 GB) en llama.cpp, pero la ventana de contexto de 128k «consume un montón» de memoria — corre con 4.096 tokens. Sin razonamiento ni speculative decoding nativo.
- Resultados (~58 tok/s): landing page, calculadora, reloj y simulación de fluidos — todas claramente inferiores incluso a modelos actuales de 0,8-2B; el simulador borra lo generado solo.
- **Veredicto**: como modelo general ya no tiene sentido (tamaño, idiomas, multimodalidad, razonamiento, eficiencia de KV-caché, todo superado); su nicho residual es el **fine-tuning para tareas específicas** (reformatear, clasificar, categorizar), donde aún se usa mucho — aunque «ya no es la mejor opción». Conclusión general: los modelos actuales han mejorado muchísimo (hasta Qwen 3.5 0.8B lo supera para chat).

## Señales de triage

- Primera mano con verificación funcional, batería consistente con WL-428/431.
- Veredicto parcialmente subjetivo («pienso yo») — declarado por el autor.
- ASR fuerte (llama.cpp, Q4_K_XL) normalizado solo aquí; sin patrocinios.

## Cruces

- [[nichonauta]] (6.ª fuente WL — cluster ×3 en tramo 71), [[inferencia-local]], [[llama-cpp]], [[qwen]].
- [[percepcion-de-regresion-de-modelos]] (obsolescencia rápida de modelos «rompedores»), WL-428/431 (misma batería), routing-por-coste.
