# WL-448 — Atomic AI Tutorial Completo 🚀 Potencia tus Modelos de IA con Subtareas

- **Fuente original**: `raw/agentes-de-codigo/2026-08-30-atomic-ai-tutorial-completo-potencia-tus-modelos-de-ia-con-subtareas.md` ([Vídeo](https://www.youtube.com/watch?v=iCokaxKK8_I))
- **Canal**: Nichonauta
- **Publicado**: 2026-08-30 · **Duración**: 12:03
- **Dominio provisional**: ia-uso-practico/ia-local (inferencia local, herramientas — clúster Nichonauta/llama.cpp)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Tutorial de primera mano de **Atomic AI** (`github.com/nichonauta/atomicai`, fuente interna del propio canal): un **proxy** que actúa como proveedor intermediario entre el cliente (OpenCode, chat, cualquier cliente OpenAI-compatible) y el servidor real (llama.cpp en el demo), descomponiendo cada solicitud en **subtareas atómicas no divisibles**, ejecutándolas en orden y componiendo la respuesta final. La idea: en modelos pequeños (2B a 4 bits) canjear **memoria por procesamiento** — tokens de razonamiento «gratis» a buena velocidad suplen la falta de habilidad.

## Pasos mostrados

1. Descarga/clon del repo; entorno virtual (3 comandos: crear, activar, instalar dependencias localmente).
2. `.env` copiado del ejemplo: URL de llama.cpp, API key placeholder, modelo `gemma-4-e-2b`, profundidad máxima de descomposición (3 en el demo; recomendado 1-2 — 3+ genera demasiados tokens/tiempo; el modelo decide si una tarea ya es atómica).
3. `run.bat` y conexión desde OpenCode («Gestionar modelos → proveedor personalizado», URL con `/v1`).
4. Ajuste manual de `opencode.json`: duplicar el bloque del proveedor llama.cpp cambiando el puerto (8000) — restaura entrada de imágenes y límite de contexto.
5. Pruebas: un «hola» generó 3 solicitudes al servidor real (dividir→ejecutar→responder); la descripción de una imagen se resolvió como tarea atómica (una sola). Observación clave: la «cadena de razonamiento» visible es una cadena sobre la cadena real del modelo — mucha multiplicación de tokens.

## Contexto del clúster (recurrencias del canal)

- Serie de modelos 2B/4B en llama.cpp: Qwen 3.5 4B «supera a Llama 3 mini high en todo» según el autor (2.ª mano/autoevaluación — señalado); KV-cache a Q8 mantiene ~99 % de calidad con la mitad de memoria.
- Continuidad directa con WL-428/431/432/434/436 (batería Nichonauta) y [[atomic-proxy]] si existiera — el canal llama «proxy atómico» a este patrón desde ia-local (ver estado ia-local 2026-11-11).

## Señales de triage

- Fuente interna de primera mano (repo propio del canal); instrucciones reproducibles. Comparativa de modelos declarada por el autor — señalada.
- CTA like/suscripción excluido; preview del siguiente episodio (divisiones efectivas) no evaluada.

## Cruces

- [[inferencia-local]], [[llama-cpp]], [[qwen]], [[gemma-4]], [[deepseek-harness]] (patrón proxy compatible), [[routing-por-coste]] (tokens extra vs modelo mayor); batería Nichonauta +1 (WL-428/431/432/434/436/447-anterior + este).

## Veredicto de triage

Tutorial técnico sólido de herramienta propia; conservar.


## Ver también

- [[deepseek-harness]]
- [[generacion-local-de-imagenes]]
- [[ia-local-texto]]
- [[inferencia-local]]
- [[proxy-atomico]]
- [[routing-por-coste]]
