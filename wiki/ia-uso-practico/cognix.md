# Cognix

- **Tipo**: página de entidad (canal).
- **Dominio**: `historia-informatica/` (fuente inicial) / `ia-uso-practico/` (fuente 32).
- **Actualizado**: 2026-11-11 (fuente 32/58 del lote ia-local — 2ª fuente del canal).
- **Fuentes**: [[resumen-todos-los-lenguajes-de-programacion-explicados-en-20-minutos-segunda-parte-cognix]] (historia-informatica) · [[resumen-estas-usando-el-motor-de-ia-equivocado-y-esta-es-la-razon]] (ia-uso-practico).

**Cognix** es un canal de divulgación técnica en español que explica conceptos de programación, historia de la informática y arquitectura de IA local con profundidad y claridad. La fuente inicial (2026-10-12) cubrió la segunda parte de «Todos los lenguajes de programación explicados en 20 minutos» (Assembly/Kathleen Booth, FORTRAN/Backus, COBOL/Hopper, BASIC/Dartmouth, Pascal/Wirth, SQL, Perl, Lua/PUC Rio, Ruby/Matz, Swift, Kotlin). La segunda fuente (2026-09-06, **ia-local**) entrega un **análisis estructural de la pila de inferencia local (5 capas)** desmontando comparaciones simplistas por tok/s entre llama.cpp, Ollama, LM Studio, vLLM, SGLang, TensorRT-LLM, ExLlama, MLX y proyectos experimentales MoE (Free Token, Calibri).

## Estilo y enfoque

- **Nivel conceptual**: separa capas (formato → runtime → motor servidor → gestión → UI) antes de comparar herramientas.
- **Anti-hype**: explica por qué un benchmark de 1 request no mide lo que vLLM/SGLang resuelven (concurrencia, agentes, prefix caching, Radix Attention).
- **Decisión práctica**: da regla de elección por cuello de botella (flexibilidad → llama.cpp; API cero-fricción → Ollama; escritorio → LM Studio; concurrencia → vLLM/SGLang; Apple → MLX; MoE gigante → Free Token/Calibri).
- **Historial**: la fuente de historia de lenguajes (2026-10-12) ya usaba el mismo enfoque: compilador como apuesta, interoperabilidad decide adopción, longevidad selectiva.