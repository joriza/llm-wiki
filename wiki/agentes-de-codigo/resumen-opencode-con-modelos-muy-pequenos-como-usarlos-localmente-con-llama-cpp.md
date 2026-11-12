# Resumen: OpenCode con Modelos Muy Pequeños — cómo usarlos localmente con llama.cpp

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo`.
- **Fuente original**: `raw/agentes-de-codigo/2026-08-20-opencode-con-modelos-muy-pequenos-como-usarlos-localmente-con-llama-cpp.md` (video en español; transcripción literal por subtítulos automáticos) — https://www.youtube.com/watch?v=d38_pBOYjFk — Nichonauta, 2026-08-20 (07:46).
- **Nota**: fuente 13/58 del lote ia-local. Profundiza el setup de [[opencode]] introducido en la fuente 3: esta vez, configuración por archivo y registro fino de los modelos chicos del «Reto 2B».

## Instalación con pin de versión

OpenCode Desktop **v1.16.2 de los lanzamientos de GitHub** — elegida a propósito porque conserva la interfaz anterior que al canal le resulta más cómoda, y con **actualizaciones desactivadas** en ajustes. La filosofía (coherente con el «Reto 2B»): «actualizar a veces cambia cosas que no querés, a cambio de errores en algo que sí te afecta» — si funciona, que siga funcionando.

## Configuración por archivo: `opencode.jsonc`

Todo vive en `%userprofile%\.config\opencode\opencode.jsonc` (crear si no existe; la primera apertura del app genera los archivos base). Ajustes clave documentados:

- **Desactivar el proveedor por defecto**: «van cambiando los modelos, la lista se actualiza, a veces funcionan bien y a veces no» — el objetivo es 100 % local.
- **Agregar llama.cpp como proveedor estilo OpenAI** con la URL del endpoint local, y **registrar ambos modelos del Reto (Gemma 4 E2B y Qwen 3.5 2B) con valores explícitos por modelo**: límite de ventana de contexto, máximo de tokens por respuesta, entrada «texto + imagen», salida «solo texto». Así OpenCode muestra por modelo qué soporta y qué límites tiene.
- Preferencias: tema Carbon Fox, notificaciones del sistema desactivadas (solo sonido), todo lo avanzado activo.

El truco recurrente del canal para no tipear comandos largos: captura de pantalla (Windows+Shift+S) → pedirla a ChatGPT o al propio modelo local para que la transcriba.

## Organización de carpetas

Una carpeta `documentos/desarrollo/opencode` **como ChatGPT casero**: ahí viven las conversaciones generales y archivos temporales (pedir configuraciones de PC, describir imágenes…), no proyectos. Los proyectos reales se van agregando como carpetas aparte cuando empieza el desarrollo.

## Detalles observados

- **Intercambio de modelos en caliente**: cambiar de Gemma a Qwen descarga uno de VRAM y carga el otro (un solo modelo a la vez, como se configuró); los logs indican qué modelo respondió cada solicitud.
- El «sin razonamiento» que muestra OpenCode es solo un ajuste del app — los modelos están cargados con cadena de razonamiento activa en llama.cpp y la ejecutan igual.
- Visión funcionando: descripción de imagen que primero respondió corta y en inglés → por diálogo se obtuvo la descripción completa en español (iteración normal).
- La interfaz web de llama.cpp queda como la vía simple de prompt directo; OpenCode como la vía agéntica con contexto del entorno.

## Cruces en la wiki

Actualiza la entidad [[opencode]] (config JSONC, pin de versión, registro por modelo); el stack completo es el de [[desarrollo-con-modelos-locales]] sobre el motor [[llama-cpp]]; los modelos son los del «Reto 2B» ([[gemma-4]], [[qwen]]).
