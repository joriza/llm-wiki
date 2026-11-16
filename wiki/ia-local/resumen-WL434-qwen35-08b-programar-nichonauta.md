# WL-434 — Qwen 3.5 0.8B: ¿sirve para programar?

- **Fuente original**: `2026-09-01-qwen-3-5-0-8b-sirve-para-programar-prueba-de-rendimiento-y-codigo.md` ([vídeo](https://www.youtube.com/watch?v=fGyLXOACW9k))
- **Canal**: Nichonauta · **Publicado**: 2026-09-01 · **Duración**: 08:05 · **Dominio**: ia-uso-practico/ia-local

## Qué trata

Demo de inferencia local (08:05, Nichonauta) del **Qwen 3.5 0.8B a precisión completa BF16** — todo sin cuantizar: modelo, visor (MMproj), ventana de 262.144 tokens, MTP y KV-caché (incluida la del borrador) — en una RTX 3060 de 12 GB consumiendo 6,5 GB de VRAM:

- Rendimiento: >100 tok/s durante el razonamiento, hasta 133 tok/s generando (ayudado por MTP y el tamaño mínimo).
- **Resultados** (misma batería que WL-428/431/432): landing page parcialmente funcional (JS incompleto), calculadora sin sentido ni funcionamiento, reloj analógico que no termina de funcionar, simulación de fluidos inutilizable.
- **Prueba extra — autocorrección**: pidió «analiza tu código y reescríbelo 100 % corregido»; el modelo reescribió código diferente pero **no corrigió nada** (un caso incluso empeoró).
- **Veredicto**: no es un modelo para programar por sí solo; sirve como autocompletador y para tareas muy específicas (resúmenes cortos, fine-tunings nicho). Genera código bien estructurado y texto convincente, sin la inteligencia para sostenerlo.
- Anuncio: probará toda la colección actual de Qwen de menor a mayor con sus 35 pruebas estandarizadas.

## Señales de triage

- Primera mano con verificación funcional; batería consistente con WL-428/431/432 (línea de serie del canal).
- Comparación en la configuración de máxima calidad posible (FP16) — refuerza el veredicto.
- ASR fuerte (MMproj, MTP, BF16) normalizado solo aquí; sin patrocinios.

## Cruces

- [[nichonauta]] (7.ª fuente WL — ×4 en tramo 71), [[qwen]], [[inferencia-local]], [[llama-cpp]], [[gemma-4]].
- [[percepcion-de-regresion-de-modelos]], WL-428/431/432 (misma batería), brecha-junior-ia (autocompletar vs programar).
