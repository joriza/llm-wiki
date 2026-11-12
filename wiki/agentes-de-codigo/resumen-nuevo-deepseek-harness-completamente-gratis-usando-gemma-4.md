# Resumen: Nuevo DeepSeek Harness completamente gratis usando Gemma 4

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo`.
- **Fuente original**: `raw/agentes-de-codigo/2026-08-26-nuevo-deepseek-harness-completamente-gratis-usando-gemma-4.md` (video en español; transcripción literal por subtítulos automáticos, «Gema»→Gemma, «comian»→comando) — https://www.youtube.com/watch?v=15-3woX7mUE — Tomas Montiel | IA y Automatizaciones, 2026-08-26 (24:11).
- **Nota**: fuente 24/58 del lote ia-local. El preset «local data» del canal queda referenciado (es su regalo descargable), no consolidado como página propia.

## La metáfora que estructura todo: cuerpo gratis, cerebro a elección

**DeepSeek Harness** (el agente-harness open source de DeepSeek) es «el cuerpo»: gratis, se abre con una línea de terminal, y tiene **integración nativa con Ollama** — sin instalar nada raro: al lanzarlo pregunta con qué modelo y ofrece instalarlo si falta. El «cerebro» era lo que se pagaba (OpenRouter/OpenAI/Anthropic). La solución del video: **Gemma 4 local vía Ollama** — «dejar de pagar por el cerebro», con los datos quedándose en casa.

## Instalación paso a paso

Ollama desktop **+ CLI** (ambos) → `ollama pull gemma4` (12B ~8 GB para equipos con GPU/RAM de 8 GB; 26B ~20 GB para 14-16 GB; 31B requiere más — el canal usa el 26B) → contexto en Ollama subido a 128k-256k → comando de integración nativa (o `ollama launch deepseek harness`) → elegir Gemma 4. Modelos adicionales: «buscar otros modelos disponibles» dentro del Harness (agregó Qwen 2.5 así) o desde Hugging Face. Benchmarks de Gemma 4 citados por el canal (no verificados): herramientas 86,4 %, código 80 %, LiveCodeBench 2150, matemáticas ~90 %.

## El hallazgo principal: el preset optimizado (6× menos tokens)

El problema medido: el preset estándar del Harness «se le inyectan muchas órdenes» — su caso de facturación: **10 minutos, 500.000 tokens de entrada + 30.000 de salida**. Su solución: un **agent preset propio («local data preset»)** — «procesador optimizado para tareas de procesamiento de datos con modelos locales pequeños, **superficie de herramientas reducida** y reglas de operación de la persona», reglas minimizadas y enfocadas a una sola tarea. Mismo caso con el preset: **4 minutos, 80.000 entrada + 12.000 salida** — «es una locura el cambio», con resultado prácticamente igual e incluso más legible. Dos consejos operativos: acceso **Workspace Write** en vez de completo (con acceso completo «da vueltas increíbles, gasta más y toca cosas que no debe»), y crear los presets con un modelo potente (con un modelo gratuito «da 1000 vueltas») e instalarlos copiándolos a `users/<usuario>/.dsh/deepseek harness/agent presets/` + reiniciar.

## Los tres casos de uso probados (Gemma 4 26B local, gratis)

1. **Auditoría de facturación**: extractos subidos, el agente como «encargado de administración» → informe (78.000 facturado, 31.000 cobrado, vencidas detalladas) + cartas de reclamación redactadas por cliente. ~10 min.
2. **Analista de negocio**: auditoría completa (ganancias/pérdidas por categorías: cableados, domótica, cuadros de protección) con resumen ejecutivo y recomendaciones (revisar diversificación de clientes). ~20 min.
3. **Limpieza de base de datos**: clientes duplicados/antiguos → informe de ejecución con los registros inválidos listados (teléfonos, emails, NIF) y el CSV limpio generado por el propio agente (escribió el código él solo).

Filosofía de cierre: «hace un año todo esto costaba dinero — ahora solo cuesta paciencia».

## Cruces en la wiki

El Harness con Ollama es la capa agéntica sobre [[ia-local-texto]]; el cerebro elegido es [[gemma-4]]; el hallazgo del preset optimizado (superficie de herramientas reducida) refina el stack de [[desarrollo-con-modelos-locales]] y el espíritu anti-plomería de [[codigo-de-plomeria]] (el Harness es el cuerpo que elimina plomería; el preset evita la plomería de configuración). La entidad [[deepseek-harness]] se creará con este resumen y se ampliará con la fuente siguiente del mismo tema.

---

**Ver también**: [[deepseek-harness]] (entidad-herramienta) · [[gemma-4]] (el cerebro local) · [[ia-local-texto]] (Ollama como runner) · [[desarrollo-con-modelos-locales]] · [[codigo-de-plomeria]].
