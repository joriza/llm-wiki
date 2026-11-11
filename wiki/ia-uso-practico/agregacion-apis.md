# Agregación de APIs y modelos

- **Tipo**: página de concepto.
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 6 resúmenes de la playlist «IA-Recursos».
- **Ver también**: [[agentes-de-codigo]] (la economía del agente) · [[ia-local-texto]] (Ollama como proveedor más) · [[ia-china]] (modelos gratuitos chinos).

## El concepto

Unificar el acceso a muchos proveedores de modelos bajo **una sola API, panel o suscripción**, para no pagar (o pagar una sola vez) por cada modelo. El dolor que ataca la categoría, en palabras de una fuente: «necesito como 20 suscripciones para usar toda la tecnología nueva». El corpus distingue tres variantes según el objetivo: pagar menos, pagar una vez o no pagar.

## Las tres variantes

1. **Todo-en-uno de pago (Mammouth)**: Claude, GPT, Llama, Mistral, Grok, Gemini, DeepSeek, Midjourney y Flux por 10 USD/mes (vs. >100 por separado); con mammoths personalizados (agentes con contexto propio), **reprompting** con un clic (reenviar el mismo prompt a otro modelo para «cross-checkear» alucinaciones) y cobertura completa de modalidades (texto, imagen, web research, razonamiento con trazas, voz) (2/57).
2. **Gateway de cuentas gratuitas (OmniRouter)**: ~350 proveedores, ~63 modelos; centraliza cuentas gratuitas y **salta automáticamente de cuenta al agotar créditos** — «IA gratuita» sin cambiar API keys; integración con CLI, MCP y dotenv (50/57).
3. **Agregador de solo-gratis (FreeLLMAPI)**: extrae automáticamente únicamente los modelos 100 % gratuitos de cada proveedor conectado (OpenRouter, Google AI Studio, Grok, Hugging Face) — +700 modelos, ~7,4 M de tokens gratuitos al mes; tres modos: **auto** (elige el mejor y salta ante fallo), **fusión** (misma tarea a varios modelos en paralelo y un agente evaluador decide) y enrutamiento manual; mapeo tipo Anthropic (Opus→potente, Sonnet→GLM, Haiku→ligero); análisis de ahorro por modelo y despliegue en móvil o VPS con Docker (55/57, con cobertura anterior en Dev Knives).

## El catálogo de proveedores gratuitos

La base del modelo «no pagar»: OpenRouter (filtro «gratis»; advertencia: no todos los modelos gratuitos funcionan siempre), Google AI Studio, Grok, Hugging Face, y catálogos de claves de larga duración — **NVIDIA** (el más fiable, 2-5 modelos estables) y agentrouter.org (exige cuenta de GitHub con 6+ meses de antigüedad) (56/57). Consejo operativo transversal: **cuantos más proveedores conectados, mejor** — si un modelo falla, se cambia automáticamente al siguiente; y probar cada modelo en el playground antes de integrarlo (56/57).

## Cruces con el resto del corpus

- La agregación es la otra mitad de la economía de agentes: a los trucos de consumo (input reutilizado, modelo justo) se suma el **coste cero por proveedor** (49/57, 55/57).
- Ollama local puede agregarse como un proveedor más vía endpoint personalizado (55/57) — conecta con [[ia-local-texto]].
- La misma lógica de «no pagar suscripciones» impulsa los recopilatorios de herramientas open source del lote (34/57) y la alternativa SurfSense frente a NotebookLM.

## Tesis transversal

El patrón de 2025-2026 es claro: primero la suscripción única barata (Mammouth, 2025), luego el enrutamiento inteligente entre proveedores (FreeLLMAPI, OmniRouter, 2026). La dirección del mercado que describe el corpus es que **el valor se desplaza del modelo al enrutamiento**: quien controla qué modelo atiende cada tarea controla el coste.

## Fuentes de este concepto

- [[resumen-mammouth-plataforma-chat-20-modelos-10-dolares-aicodeking]] (2/57) · [[resumen-crea-apps-ia-api-gratis-dev-knives]] (primera cobertura de FreeLLMAPI) · [[resumen-deje-de-pagar-4-suscripciones-de-ia-por-estos-repos-fazt]] (50/57, OmniRouter) · [[resumen-freellmapi-acaba-de-romper-las-suscripciones-todo-gratis-alejavi-rivera]] (55/57) · [[resumen-gratis-y-sin-limites-accesos-api-gpt-claude-gemini-codesimple]] (56/57).
