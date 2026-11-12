# Proxy Atómico (Atomic AI)

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (fuente 26/58 del lote ia-local — deep-dive de instalación y uso).
- **Fuentes**: [[resumen-proxy-atomico-cree-un-potenciador-ia-infinito-y-gratis]] · [[resumen-reto-modelos-2b-como-sacar-el-maximo-provecho-con-ia-local]] · [[resumen-inteligencia-ilimitada-con-atomic-ai-como-potenciar-modelos-de-ia-pequenos]].

**Proxy Atómico** es la herramienta open source de Nichonauta que implementa su tesis de tareas atómicas: un **proxy local OpenAI-compatible** (puerto 8000) que se interpone entre cualquier cliente y cualquier API de modelos, y **descompone cada solicitud en un árbol de tareas y subtareas hasta tareas atómicas** (no divisibles), las ejecuta en orden y devuelve la respuesta final.

Parámetros y comportamiento:

- **Nivel de profundidad configurable** (1-3 probados): cuántos niveles de desglose permite; el modelo decide si una tarea ya es atómica; «paso a paso» en el prompt fuerza más subdivisión.
- Profundidad 3 con modelo online: máxima calidad (38 tareas atómicas para mejorar un Tetris, ejecutadas con éxito) pero lenta y costosa en tokens — «no lo usen si no quieren quedarse dormidos».
- Profundidad 1: lista única de 2-5 tareas — suficiente para tareas simples.
- **Gotcha**: cambiar la profundidad requiere reiniciar el servidor.
- El «razonamiento» que ve el cliente es realmente el árbol de solicitudes — la cadena real del modelo puede desactivarse.

## Instalación real y uso (fuente 26, Nichonauta)

Repositorio: `github.com/nichonauta/atomicai` — clonar o bajar zip (no hace falta cuenta de GitHub). Flujo: entorno virtual (dependencias aisladas, no afecta al Python global) → instalar requirements → copiar `.example` a `.env` → configurar proveedor/URL/API key/modelo/profundidad → `run.bat`. El proxy escucha en **puerto 8000** con API al estilo OpenAI (`/v1`).

- **Conexión desde el proveedor personalizado** (DeepSeek Harness, fuente 25): proveedor personalizado con nombre Atomic AI, URL `http://localhost:8000/v1`, API key `Atomic AI`, modelo `Gemma 4e2b`. Ajuste simple para empezar (no configuró entrada de imágenes ni ventana de contexto total en este paso).
- **Caso de uso real**: pedir diapositivas HTML sobre IA generativa (directo por llama.cpp, respuesta sencilla) y luego «mejora al máximo el archivo HTML… paso a paso» con el proxy. El proxy desglosa en subtareas (fase 1: dividir → todas atómicas al llegar al nivel configurado; fase 2: ejecutar cada tarea por separado). Con profundidad 1, el resultado ya es notablemente mejor — «gastando más tokens, sí, pero generando mejor respuesta».
- **El límite de profundidad es un máximo, no una garantía**: el modelo puede decidir que una tarea ya es atómica y no seguir dividiendo. Cambiarlo requiere **reiniciar el servidor**.
- **Teaser del canal**: antes de profundizar al máximo, generar tokens **extremadamente rápido (×6 o más)** vía Speculative Decoding y especialmente **N-Gram** — muchos de los tokens que genera el proxy son los mismos → conecta con [[llama-cpp]].

Posicionamiento: con modelos online grandes funciona bien; **su mejor caso es potenciar modelos chicos locales** (Qwen 0.8B y similares), que resuelven tareas simples pero se pierden en las largas — el proxy convierte todo en tareas simples. Es la pieza de entorno del «Reto 2B» junto a RAG, MCPs y skills.

Motor probado: DeepSeek V4 Flash (OpenAI-formato). Próximo paso del canal: Qwen 3.5 0.8B local vía [[llama-cpp]].

## Cruces en la wiki

El cliente que lo usó como proveedor personalizado: [[deepseek-harness]] (fuente 25). El modelo de la demo: [[gemma-4]] (E2B). El backend subyacente: [[llama-cpp]]. El motor de tokens rápidos del teaser: la sección N-gram de [[llama-cpp]]. El contexto del Reto 2B: [[desarrollo-con-modelos-locales]]. Canal: [[nichonauta]].
