# OpenCode

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `agentes-de-codigo`.
- **Actualizado**: 2026-11-11 (fuente 3/58 del lote ia-local — primera fuente sustancial; el canal lo ya usaba y [[agentes-de-codigo]] lo menciona).
- **Fuentes**: [[resumen-ia-local-para-programar-configura-qwen-con-llama-cpp-y-opencode]] · [[resumen-opencode-con-modelos-muy-pequenos-como-usarlos-localmente-con-llama-cpp]] (fuente 13 — configuración por archivo).

**OpenCode** es un agente de desarrollo (versiones **desktop y terminal**, instalador por SO) que se conecta a cualquier proveedor de modelos — incluidos los locales vía endpoint OpenAI-compatible.

## Conexión a un modelo local ([[llama-cpp]])

«Conectar a proveedor» → **personalizado** (también aparece como Generic OpenAI / OpenAI compatible): URL `http://127.0.0.1:8080/v1`, API key cualquiera, nombre de modelo cualquiera — «da igual lo que escribamos: el que responde es el que está cargado en el servidor».

Configuración útil: mostrar resúmenes de razonamiento, expandir herramientas/ediciones, tamaño máximo de ventana de contexto, % de llenado para compartir conversación, indicar si el modelo tiene visión.

## Capacidades observadas

- Selección de carpeta de proyecto y generación de archivos multi-archivo respetando estructura pedida (css/js/html).
- Iteración conversacional (correcciones puntuales sobre archivos existentes) con el contexto acumulado.
- **MCPs**: Context 7 (documentación actualizada de librerías — el modelo chico «sabe lo típico» como Bootstrap, no lo nuevo), Playwright (probar en el navegador e iterar solo), Brave Search.
- Modo plan y agentes seleccionables.
- **Cuota gratuita diaria de modelos de pago** del servicio como fallback cuando el modelo local se queda corto.

## Rol en la wiki

El agente del workflow de [[desarrollo-con-modelos-locales]]; en [[agentes-de-codigo]] aparece junto a Claude Code, Codex y P-Agent como cliente consumible por un endpoint local de [[llama-cpp]].

## Configuración por archivo y pin de versión (fuente 13)

- **Instalar la versión exacta de los Releases** (el canal pinnea Desktop v1.16.2 por su interfaz) y **desactivar actualizaciones**: «actualizar a veces cambia cosas que no querés, a cambio de errores en lo que sí te afecta».
- Toda la configuración vive en `%userprofile%\.config\opencode\opencode.jsonc` (crear si no existe): **desactivar el proveedor por defecto** («su lista de modelos cambia y a veces falla»), agregar llama.cpp como proveedor estilo OpenAI y **registrar cada modelo con valores explícitos** (límite de contexto, máximo de tokens por respuesta, entrada texto+imagen, salida texto) — así cada modelo declara lo que soporta.
- Organización sugerida: una carpeta-raíz «al estilo ChatGPT» para conversaciones temporales y archivos sueltos; los proyectos reales como carpetas aparte.
- Detalle: cambiar de modelo en caliente descarga uno de VRAM y carga el otro (un solo modelo cargado a la vez); los logs indican qué modelo respondió cada solicitud. El «sin razonamiento» que muestra OpenCode es cosmético — el modelo ejecuta su CoT en el motor.
