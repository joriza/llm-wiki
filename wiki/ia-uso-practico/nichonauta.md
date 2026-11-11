# Nichonauta

- **Tipo**: página de entidad (canal).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 7/58 del lote ia-local — 8 fuentes del canal (de las 14 procesadas del lote ia-local), supera ampliamente el umbral).
- **Fuentes**: [[resumen-llama-cpp-como-instalar-ia-local-y-modelos-gguf-en-tu-pc]] · [[resumen-ia-local-para-programar-configura-qwen-con-llama-cpp-y-opencode]] · [[resumen-ia-local-con-llama-cpp-funciona-en-una-pc-de-4-gb-ram]] · [[resumen-gemma-4-es-mejor-que-qwen-en-codigo-y-velocidad]] · [[resumen-qwen-3-5-4b-el-modelo-gratis-que-supera-al-o3-mini-en-local]] · [[resumen-ia-local-las-verdaderas-razones-para-no-usar-servicios-en-linea]] · [[resumen-configurar-modelos-de-ia-con-maximo-rendimiento-tutorial-en-llama-cpp]] · [[resumen-reto-modelos-2b-como-sacar-el-maximo-provecho-con-ia-local]] · [[resumen-test-modelos-muy-pequenos-2b-hasta-donde-pueden-llegar-con-ia]].

**Nichonauta** es el canal técnico en español del sub-hilo de **IA local en hardware de hogar** dentro de la wiki: tutoriales de ejecución ([[llama-cpp]] con GGUF), comparativas de modelos ([[qwen]] vs [[gemma-4]]), experimentos de límites (la PC de 4 GB en [[hardware-para-ia-local]]) y argumentación ([[desarrollo-con-modelos-locales]], las razones de lo local).

Estilo y valor distintivo: **mide todo en el mismo banco de pruebas** (RTX 3060 de 12 GB) — tokens/segundo reales, VRAM consumida, aceleración MTP comparada con y sin flag — y documenta los errores de camino (el `.bat` que se cierra solo, el `repeat penalty` vs `repetition_penalty`, los GGUF sin MTP). Sus hallazgos se integran a las páginas de entidad correspondientes.

También es operador real: corre micro-SaaS con APIs online (tube/writer.nichonauta.com) y un parque de GPUs (2× RTX 3060, RTX 5050, 2× RX 6600, RX 590, RX 580, 1050 Ti, 1650) trabajando en generación/clasificación de contenido — lo que le da la perspectiva comparativa local vs servicios en línea.

**Nota de proceso**: la fuente 7 llegó con metadatos UNKNOWN en el raw; la atribución a Nichonauta es inferida del contenido (autorreferencias) y está anotada en su resumen.
