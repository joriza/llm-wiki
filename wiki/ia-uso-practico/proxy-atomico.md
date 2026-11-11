# Proxy Atómico (Atomic AI)

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 15/58 del lote ia-local).
- **Fuentes**: [[resumen-proxy-atomico-cree-un-potenciador-ia-infinito-y-gratis]] · anunciado teóricamente en [[resumen-reto-modelos-2b-como-sacar-el-maximo-provecho-con-ia-local]] como «Atomic AI».

**Proxy Atómico** es la herramienta open source de Nichonauta que implementa su tesis de tareas atómicas: un **proxy local OpenAI-compatible** (puerto 8000) que se interpone entre cualquier cliente y cualquier API de modelos, y **descompone cada solicitud en un árbol de tareas y subtareas hasta tareas atómicas** (no divisibles), las ejecuta en orden y devuelve la respuesta final.

Parámetros y comportamiento:

- **Nivel de profundidad configurable** (1-3 probados): cuántos niveles de desglose permite; el modelo decide si una tarea ya es atómica; «paso a paso» en el prompt fuerza más subdivisión.
- Profundidad 3 con modelo online: máxima calidad (38 tareas atómicas para mejorar un Tetris, ejecutadas con éxito) pero lenta y costosa en tokens — «no lo usen si no quieren quedarse dormidos».
- Profundidad 1: lista única de 2-5 tareas — suficiente para tareas simples.
- **Gotcha**: cambiar la profundidad requiere reiniciar el servidor.
- El «razonamiento» que ve el cliente es realmente el árbol de solicitudes — la cadena real del modelo puede desactivarse.

Posicionamiento: con modelos online grandes funciona bien; **su mejor caso es potenciar modelos chicos locales** (Qwen 0.8B y similares), que resuelven tareas simples pero se pierden en las largas — el proxy convierte todo en tareas simples. Es la pieza de entorno del «Reto 2B» junto a RAG, MCPs y skills.

Motor probado: DeepSeek V4 Flash (OpenAI-formato). Próximo paso del canal: Qwen 3.5 0.8B local vía [[llama-cpp]].
