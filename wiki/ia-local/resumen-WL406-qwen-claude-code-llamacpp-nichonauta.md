# WL-406 — Qwen en Claude Code: Programación LOCAL con IA y llama.cpp

- **Fuente**: `raw/ia-local/2026-09-08-qwen-en-claude-code-programacion-local-con-ia-y-llama-cpp.md` (`DRcknO84EZk`, https://www.youtube.com/watch?v=DRcknO84EZk)
- **Canal**: Nichonauta (4.ª+ fuente WL — entidad ya confirmada)
- **Publicado**: 2026-09-08 · **Duración**: 15:52 · **Idioma**: es (subtítulos automáticos; ASR «Qen/Quen» = Qwen, «cloud code/P agent» = Claude Code — normalizado solo aquí)
- **Dominio previsto**: ia-uso-practico/ia-local ([[inferencia-local]], [[deepseek-harness]])
- **Tramo**: 66 (relevo 6 de 12 del pedido L34)

## Qué trata

Tutorial de 1.ª mano para conectar un modelo local pequeño a un agente de código, siguiendo la línea del canal (ya probó Qwen 3.5 4B en otros agentes):

- **El modelo**: Qwen 3.5 4B (tamaño 4B más actual), licencia Apache 2.0, con visión de imágenes/videos, **MTP** (predicción multitoken integrada — modelo borrador propio para acelerar generación), ventana de contexto 262k ampliable a 1M, razonamiento desactivable. Descarga el GGUF **UDQ4_K_XL** (2,99 GB). Afirmación de contexto: es «más potente que lo tope de gama de servicios en línea hace ~1,5 años» — comparación aproximada sin benchmark preciso, señalada.
- **Servidor**: llama.cpp `llama-server` con .bat propio (glados/visión/MTP activados, KV cache cuantizado a 8 bits, contexto 1024+); en su GPU (RTX con ~12 GB, por el consumo reportado) carga completo a 10,77 GB, 100 % en GPU; el servidor expone endpoint compatible con API de Anthropic y OpenAI + interfaz web. Prueba de humo: Snake en HTML 5.
- **Integración con Claude Code** (CLI oficial, requiere Node.js + Git): NO es truco — se hace con las **variables de entorno** que el propio Claude Code lee para apuntar a otro endpoint (URL base, etc.); configuración por variables de entorno de Windows, sin tocar el harness. Da permisos ilimitados para la prueba (reconoce que no es recomendable).
- **Verificación**: logs de generación en llama.cpp mientras Claude Code responde; prueba de uso de herramientas (elige entre MCP Server y CLI+Skills y usa la herramienta sin fallos — «es en lo que nunca falló»); prueba de visión (arrastra una imagen a la terminal); navegación de ficheros («navega hasta la carpeta de imágenes y dime qué hay») más lenta pero funcional.
- **Conclusión del canal**: las habilidades totales dependen no solo del modelo y su cuantización sino de las peticiones y del arnés — modelo pequeño + herramientas adecuadas se potencia bastante; buen candidato para desarrollo o uso agéntico. Sintonía directa con la tesis WL-402 (el arnés marca la diferencia).

## Señales de calidad

- Demo de 1.ª mano verificable (logs del servidor como evidencia, no solo pantalla final); números reportados en vivo (10,77 GB VRAM, tamaños de archivo).
- Comparación de capacidad con modelos privados de 1,5 años atrás: aproximada, sin benchmark citado — señalada; cifras de specs (262k/1M, benchmarks 10-13) tomadas de la ficha del modelo — verificar contra la fuente oficial.
- ASR fuerte («Qen», «cloud code», «KVK» = KV cache) — normalizado solo en el resumen.

## Cruces (consolidación diferida, L12)

- [[inferencia-local]] +1, [[qwen]] +1, [[hardware-para-ia-local]] — cluster ia-local del canal (WL-342/363/295/332).
- [[deepseek-harness]] — misma receta modelo-local + agente (WL-400/283).
- Tema de tramo: contrapunto práctico de WL-402 (el arnés potencia al modelo pequeño).

## Consolidación (relevo 2 del pedido L35, 2026-11-16)

Consolidado en `ia-local/` (primera opción del par ia-uso-practico/ia-local resuelta por precedente T48/T49: banco de pruebas Nichonauta llama.cpp → ia-local). Alimenta [[inferencia-local]], [[qwen]], [[nichonauta]] (+1).
