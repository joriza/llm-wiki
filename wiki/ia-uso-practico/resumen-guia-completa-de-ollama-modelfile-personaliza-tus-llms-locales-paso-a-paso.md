# Resumen: Guía Completa de Ollama Modelfile — Personaliza tus LLMs Locales Paso a Paso

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-19-guia-completa-de-ollama-modelfile-personaliza-tus-llms-locales-paso-a-paso.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=N7Shyx_7N58 — Apasoft Training, 2026-08-19 (27:18).
- **Nota**: fuente 31/58 del lote ia-local (entrada 36 del playlist). Primera fuente del canal **Apasoft Training** en el lote. Tutorial completo y didáctico sobre **Ollama ModelFile** (equivalente a Dockerfile para modelos).

## Qué es un ModelFile

Un **fichero de configuración** (texto plano) que toma un modelo base (del registro Ollama o un GGUF local) y le inyecta **personalidad y comportamiento** mediante metadatos — **sin modificar el modelo original** (los GGUF son inmutables). El comando `ollama create` construye el nuevo modelo **sin duplicar gigabytes**: solo añade unos KB de metadatos que apuntan al mismo binario base. Analogía exacta: **Dockerfile → imagen Docker**; ModelFile → modelo Ollama especializado.

## Bloques del ModelFile (referencia oficial `ollama.com/docs/modelfile`)

| Bloque | Qué define |
|--------|------------|
| `FROM` | Modelo base (registro: `llama3`, `mistral`, `gemma:4`… o ruta a GGUF local). |
| `TEMPLATE` | Estructura del prompt (etiquetas de control: `system`, `user`, `assistant`) — **debe coincidir con el template del modelo base** para que no se confunda. |
| `SYSTEM` | Instrucciones de comportamiento permanentes: rol, restricciones, tono, formato de respuesta. |
| `ADAPTER` | Capas LoRA/QLoRA fusionadas encima del modelo base (ajuste fino eficiente, ~1 % parámetros). Requiere archivo de adapter (Hugging Face). |
| `LICENSE` | Términos legales del modelo empaquetado. |
| `PARAMETER` | Hiperparámetros de inferencia/contexto: `temperature`, `num_ctx`, `top_k`, `top_p`, `repeat_penalty`, etc. |
| `MESSAGE` | **Few-shot prompting**: historial predefinido (pares `user`/`assistant`) para fijar tono, formato, estilo — más efectivo que `SYSTEM` solo para patrones concretos (ej. «responde siempre en JSON»). |

## Flujo de trabajo

1. Escribir `Modelfile` (nombre convencional, cualquier ruta).
2. `ollama pull <modelo-base>` si no está local.
3. `ollama create <nombre-nuevo> -f ./Modelfile` (rápido: solo metadatos).
4. `ollama run <nombre-nuevo>` → usa el modelo especializado.
5. `ollama show <nombre> --modelfile` → ve el ModelFile completo (hereda lo no sobrescrito del base).

## Ejemplo real del video: experto en Python

```dockerfile
FROM llama3:8b
PARAMETER temperature 0.2
SYSTEM "Eres un programador senior de Python, devuelve código limpio, moderno, con type hints y bien comentado, ve directo al grano, sin introducciones ni explicaciones innecesarias."
MESSAGE user "¿Cómo calculo el factorial de un número?"
MESSAGE assistant "def factorial(n):\n    if n <= 1:\n        return 1\n    return n * factorial(n-1)"
MESSAGE user "Crea una función que reciba lista de ventas (producto, precio) y devuelva total y producto más caro."
MESSAGE assistant "def ventas_total_y_mas_caro(ventas):\n    total = sum(p for _, p in ventas)\n    mas_caro = max(ventas, key=lambda x: x[1])\n    return total, mas_caro[0]"
```

**Resultado**: el modelo especializado devuelve **solo código** (con ejemplos de uso), sin conversaciones ni explicaciones; el `llama3:8b` original devuelve mucho texto, comentarios y explicaciones.

## Herencia automática

Lo que **no** defines en tu ModelFile se hereda del modelo base (`ollama show --modelfile` lo muestra): `TEMPLATE`, `LICENSE`, parámetros no tocados. Esto evita repetir configuración estándar.

## Cruces en la wiki

Entidad principal: **Ollama** (ModelFile como mecanismo de especialización sin costo de almacenamiento). Concepto relacionado: [[ia-local-texto]] (Ollama como runner local). Herramienta base: [[llama-cpp]] (Ollama usa llama.cpp por debajo). Canal nuevo: Apasoft Training.