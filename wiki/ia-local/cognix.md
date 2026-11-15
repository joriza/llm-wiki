# Cognix

- **Tipo**: página de entidad (canal).
- **Dominio**: `ia-local/` (fuentes en varios dominios; esta página consolida el canal; reubicada desde `informatica-teoria/` en la reestructuración aprobada por el usuario, 2026-11-12 — la mayoría de sus fuentes del banco de pruebas vive aquí).
- **Actualizado**: 2026-11-11 (fuente 34/58 del lote ia-local — 3ª fuente del canal en total; 2ª en ia-uso-practico).
- **Fuentes**: [[resumen-url-vs-uri-cognix]] (`informatica-teoria/`) · [[resumen-todos-los-lenguajes-de-programacion-explicados-en-20-minutos-segunda-parte-cognix]] (`historia-informatica/`) · [[resumen-estas-5-librerias-de-python-parecen-demasiado-poderosas]] (`python-practico/`) · [[resumen-estas-usando-el-motor-de-ia-equivocado-y-esta-es-la-razon]] (`ia-local/`) · [[resumen-mac-studio-vs-200-al-mes-en-ia-cual-merece-mas-la-pena]] (`ia-local/`).

**Cognix** es un canal educativo en español de tecnología y programación, con formato divulgativo de «explicado en N minutos»: fundamentos web (la diferencia entre URL y URI), historia de los lenguajes de programación (segunda parte de la serie), y herramientas actuales del ecosistema (las 5 librerías «demasiado poderosas»: Manim, Faker, Gradio, Diagrams, Marimo).

En el dominio **ia-local** (fuentes 32 y 34 del lote ia-local) entrega: (1) **análisis estructural de la pila de inferencia local (5 capas)** desmontando comparaciones simplistas por tok/s entre llama.cpp, Ollama, LM Studio, vLLM, SGLang, TensorRT-LLM, ExLlama, MLX y proyectos experimentales MoE (Free Token, Calibri); (2) **análisis financiero/técnico Mac Studio vs suscripciones cloud** (memoria unificada M5 Max/Ultra, MoE gigantes, API por uso, costo oculto = tiempo).

Consolidación T39 (2026-11-15): **WL-154** ([[resumen-WL154-espie-a-mi-ia-local-y-descubri-algo-inesperado]], auditoría empírica de seguridad de la IA local — captura de paquetes + canarios sobre Ollama/LM Studio/Jan/llama.cpp: el chat sí es privado, pero el telemetría de Ollama, el proxy de Hugging Face activado por defecto de LM Studio y OLLAMA_HOST=0.0.0.0 no; remedios prácticos) — la fuente técnica/seguridad del canal, pareja de las de estructura y economía; metodología experimental de primera mano con datos publicados.

Estilo observado en la wiki: divulgación con analogías (el «traductor universal» de rpy, el «colador» de BeautifulSoup en el mapa del ecosistema) y alcance panorámico — útil para orientarse en un tema antes de profundizar con fuentes técnicas. Cruce con [[jorge-marfil]] (WL-147, seguridad de montajes locales en cinco capas — análisis complementario al empírico de WL-154).
