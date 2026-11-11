# DeepSeek Harness

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 24/58 del lote ia-local; la fuente 30/58 del playlist ampliará esta página).
- **Fuentes**: [[resumen-nuevo-deepseek-harness-completamente-gratis-usando-gemma-4]].

**DeepSeek Harness** es el agente-harness **open source de DeepSeek**: «el cuerpo» de un sistema de IA — se encarga de ejecutar tareas y proyectos — mientras el «cerebro» (el modelo) se elige aparte. Se abre con una línea de terminal y trae **integración nativa con Ollama** (pregunta el modelo al lanzar y ofrece instalarlo si falta) además de proveedores cloud (OpenRouter/OpenAI/Anthropic) y Ollama cloud de pago.

## Setup local 100 % gratuito (según la fuente)

Ollama desktop + CLI → `ollama pull gemma4` (12B ~8 GB; 26B ~20 GB; 31B) → contexto en Ollama a 128k-256k → comando de integración nativa o `ollama launch deepseek harness` → elegir modelo. Modelos adicionales vía «buscar otros modelos disponibles» o desde Hugging Face. Benchmarks de Gemma 4 citados por el canal (no verificados): herramientas 86,4 %, código 80 %, LiveCodeBench 2150, matemáticas ~90 %.

## El hallazgo clave: el preset optimizado (6× menos tokens)

El preset estándar del Harness inyecta muchas órdenes y «gasta una locura» — caso medido: **10 min, 500.000 tokens entrada + 30.000 salida**. La solución: un **agent preset propio («local data preset»)** con «superficie de herramientas reducida y reglas de operación de la persona» minimizadas y enfocadas a una tarea. Mismo caso: **4 min, 80.000 entrada + 12.000 salida**, resultado igual o más legible.

Reglas operativas del preset que funcionan:

- Acceso **Workspace Write** (no completo — con acceso completo «da vueltas, gasta más y toca cosas que no debe»).
- Crear los presets con un modelo potente (con uno gratuito «da 1000 vueltas»).
- Instalación: descomprimir en `users/<usuario>/.dsh/deepseek harness/agent presets/` + reiniciar.

## Casos de uso probados (Gemma 4 26B local, gratis)

Auditoría de facturación (informe + cartas de reclamación por cliente), análisis de negocio (ganancias/pérdidas por categoría con resumen ejecutivo) y limpieza de base de datos (inválidos listados, CSV limpio generado por el agente) — cada uno en 10-20 minutos, costo cero. Filosofía: «hace un año todo esto costaba dinero — ahora solo cuesta paciencia».

## Cruces en la wiki

Capa agéntica sobre [[ia-local-texto]] (Ollama como runner del cerebro); el cerebro elegido, [[gemma-4]]; el espíritu anti-plomería de [[codigo-de-plomeria]] y el stack de [[desarrollo-con-modelos-locales]].
