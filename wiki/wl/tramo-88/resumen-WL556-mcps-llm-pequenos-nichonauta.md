# WL-556 — MCPs para LLM muy pequeños 🚀 Potencia tus Modelos Locales con Context 7 y Playwright

- **Fuente original**: `raw/wl/tramo-88/2026-08-24-mcps-para-llm-muy-pequenos-potencia-tus-modelos-locales-con-context-7-y-playwrig.md` ([Vídeo](https://www.youtube.com/watch?v=MeipNmJyWg0))
- **Canal**: Nichonauta
- **Publicado**: 2026-08-24 · **Duración**: 16:37
- **Dominio provisional**: ia-local / agentes-de-codigo (MCP sobre modelos chicos)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Tercera parte de la serie del canal con modelos locales mínimos (Qwen 3.5 2B de 1,28 GB y Gemma 4 E2B en llama.cpp a 4 bits, dentro de OpenCode): agregar dos **MCP** para compensar lo que a los modelos chicos falta:

1. **Diagnóstico honesto del límite**: los 2B «tienen habilidades pero no conocimiento» — no saben Bootstrap ni versiones de librerías; el problema es idéntico en modelos grandes con versiones nuevas post-entrenamiento.
2. **Context7 MCP**: el modelo «no sabe más, puede consultar» — evita códigos de ejemplo viejos, APIs alucinadas y respuestas para versiones antiguas; instalación en `opencode.jsonc` + permisos de confirmación previa para edit/comando/webfetch; pruebas: leer versión de Bootstrap del index (5.3.3 correcto), consultar versión reciente (5.3.8 vía Gemma), actualizar Bootstrap Icons (con un fallo menor: actualizó la versión sin reemplazar los iconos «por unos mejores» como se pedía — re-pedido).
3. **Playwright MCP**: el modelo usa el navegador por sí mismo para **probar lo que desarrolla**; pruebas: navegar nichonauta.com y resumir, levantar servidor Python en el puerto 8001 (falla didáctica: comando en primer plano bloquea al modelo; y error del operador que lo corrió en otra carpeta), detectar 2 errores de consola (favicon 404 + error de sintaxis en main.js) y localizar el exceso de llaves.
4. **Hallazgo central**: «nunca falló la llamada a un MCP», pero «no basta con información: les sigue faltando habilidad/inteligencia»; el fallo de `ls -la` en Windows no es de inteligencia sino de adaptación al entorno (reintenta con PowerShell).
5. **Camino anunciado**: siguiente video Atomic AI (Proxy Atómico) — descomponer tareas en «árbol de subtareas atómicas no divisibles», gastando muchos tokens a cambio de poca RAM, acelerado con speculative decoding (~150 tok/s en contextos largos).

## Señales de triage

- **1.ª mano demostrada**: fallos del modelo y del operador mostrados sin editar; metodología explícita («ejecutamos lo más pequeño utilizable para ver más carencias y las estrategias sirven para cualquier modelo»).
- Versiones citadas (Bootstrap 5.3.3→5.3.8, Icons 1.11.x, Gemma 4.0.1) son lo que los MCP devolvieron en pantalla — trazables; la caracterización de Context7/Playwright coincide con su documentación pública.
- ASR: «msp» por MCP, «quant/Gema/Gem» por Qwen/Gemma, «Atomic AI» — normalizado solo aquí; raw intacto. Sin patrocinios.

## Cruces

- **[[inferencia-local]] / MCP / agentes-de-codigo**: tercera fuente de la batería Nichonauta de modelos chicos agénticos (WL-448 Atomic AI, WL-445/468/494); [[qwen]], [[gemma-4]], [[llama-cpp]] +1 cada una.
- **El hallazgo «MCP no suple inteligencia» ↔ [[delegacion-cognitiva-ia]] y harness engineering (WL-541)**: herramientas ≠ habilidad; el árbol de subtareas atómicas ↔ [[odd-metodologia]] (descomposición) y [[brecha-junior-ia]] (ejecución por guía externa).
- Permiso previo para edit/comando ↔ seguridad de harness (WL-399 firma canaria; práctica de la wiki de Gentle).
- Speculative decoding + subtareas ↔ [[routing-por-coste]] (gastar tokens baratos en vez de RAM/modelos grandes).

## Veredicto de triage

Muy útil: demo limpia del valor real y los límites de los MCP sobre modelos 2B, con fallos honestos y serie encadenada. Consolidación diferida (L12): batería Nichonauta +1, [[inferencia-local]], páginas MCP/agentes, enlazar con WL-448 (Atomic AI) y las partes previas/siguientes de la serie.
