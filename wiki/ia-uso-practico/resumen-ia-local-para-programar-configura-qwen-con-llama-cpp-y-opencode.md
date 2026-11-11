# Resumen: IA Local para Programar — Qwen con llama.cpp y OpenCode

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-07-17-ia-local-para-programar-configura-qwen-con-llama-cpp-y-opencode.md` (video en español; transcripción literal por subtítulos automáticos) — https://www.youtube.com/watch?v=I_kc873zAow — Nichonauta, 2026-07-16 (36:09).
- **Nota**: fuente 3/58 del lote ia-local. Es el workflow diario del canal (no una prueba de herramienta): complementa a [[llama-cpp]] (motor) con la capa de decisión y de trabajo real. Consolidado en el concepto [[desarrollo-con-modelos-locales]].

## El criterio de elección de modelo: encaje 100 % en GPU

Hardware del caso: RTX 3060 12 GB (con 64 GB de RAM que **deliberadamente no usa**). La decisión: **el modelo más grande que quepa 100 % en GPU, mínimo a 4 bits** — los modelos más «inteligentes» que requieren CPU/RAM se ejecutan más lento, y la velocidad de generación *y* de procesamiento del prompt es lo que importa en desarrollo diario. Elección: **Qwen 3.5 9B UD-Q4_K_XL (6,14 GB) + mmproj BF16 + variante MTP** — deja ~1,5 GB de VRAM libre para el contexto (regla del canal: dejar mínimo 1 GB libre por los picos de consumo de un segundo, o el proceso muere). Geografía de la familia Qwen: 0.8B/2B/4B/9B/27B/35B-A3B/122B/397B — el 27B/35B conviene en 3.6; el 9B es el más grande que cabe. Gemma 4: mejor para redacción/traducción/escritura, **no** para herramientas ni desarrollo (veredicto REVISTO por la fuente 5/58: la actualización de Google del 2026-07 corrigió plantilla + MTP — ver [[gemma-4]]).

## llama.cpp por encima de LM Studio

Argumento técnico: LM Studio «está basado en una versión más limitada y desactualizada de llama.cpp» y su automaticidad decide cómo dividir el modelo en el hardware **de forma subóptima** (memoria y velocidad). llama.cpp directo da el control explícito (`-ngl 99`, KV a q8_0, MTP, slots, etc. — el comando completo documentado en [[llama-cpp]]). Organización de carpetas recomendada: `bin/` (versiones de llama.cpp, sin obligación de actualizar), `zip/` (instaladores), `gguf/` (un subcarpeta por modelo con el GGUF + su mmproj). Comando de este caso: `-c 131072` (mitad del máximo de 262k), KV a q8_0 (TurboQuant: ~99 % de calidad a mitad de memoria; a Q4 «ya pierde bastante»), MTP prediciendo 2 tokens (medición real: **67 tok/s con MTP vs 49 sin = +40 %** en texto no-código; «en código se acelera aún más»), `-np 1` (un solo slot: las peticiones concurrentes esperan milisegundos en vez de repartir el contexto), `--image-min-tokens 1024`, cache de conversaciones en RAM, alias, salto de línea final en el `.bat`. VRAM final: 10,3 GB — por debajo del techo.

## El agente: OpenCode conectado al modelo local

Setup: OpenCode desktop → «conectar a proveedor» → personalizado/OpenAI-compatible → URL `http://127.0.0.1:8080/v1`, API key cualquiera, nombre de modelo cualquiera («da igual: el que responde es el que está cargado en el servidor»). En ajustes: mostrar resumen de razonamiento, tamaño de ventana de contexto, etc. Complementos recomendados: **MCPs de Context 7** (documentación actualizada de librerías), **Playwright** (que el agente pruebe él mismo en el navegador e itere solo — el caso del video: el bug de una etiqueta `<img>` sin imagen lo encontró el humano pegándole el HTML al modelo; con Playwright el modelo lo habría visto) y **Brave Search**. Y el fallback honesto: OpenCode da cuota gratuita diaria de modelos de pago «para cuando el local se queda corto».

## La prueba real y sus lecciones

Landing page (Bootstrap + Bootstrap icons, estructura css/js/html) con un único prompt vago: generó los 3 archivos rápido (CSS de 221 líneas) pero **no inventó contenido** — «no le dimos detalles» (lección: la calidad de salida es proporcional a la especificación). Iteraciones: colores de FAQ corregidos; el bug del fondo blanco requeriría visión del navegador (→ MCP Playwright); «añade el máximo de efectos y animaciones» (7.000 tokens, reescribió 1.215 líneas) terminó «horrible» — lección: **no pedir 50 cambios de una sola vez**. Verificación responsive manual en teléfono/iPad mini. La filosofía de cierre: «no es para que te haga un Minecraft a la primera, es para trabajar» — crear, corregir, iterar con **tokens ilimitados, gratuitos, rápidos y privados**.

---

**Ver también**: [[desarrollo-con-modelos-locales]] (concepto) · [[opencode]] (entidad-agente) · [[llama-cpp]] (motor) · [[ia-local-texto]].
