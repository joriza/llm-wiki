# WL-274 — «OpenRouter está usando un modelo de IA DEBILITADO (y podrías estar usando el endpoint equivocado)» (Cognix)

- **Fuente original**: `raw/ia-uso-practico/2026-10-08-openrouter-esta-usando-un-modelo-de-ia-debilitado-y-podrias-estar-usando-el-endp.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=AwWRZgbLExU · Canal Cognix · Publicado 2026-10-08 · 16:10 · Subtítulos automáticos es
- **Tramo**: 40, fuente útil 2/5 (posición 86 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): ia-uso-practico/ia-local (inferencia vía API, enrutamiento de proveedores; [[cognix]]; cruces inferencia-local y agentes-de-codigo)

## Qué es

Investigación (16 min) de Cognix que desmonta la teoría popular de que OpenRouter «debilita» los modelos con copias cuantizadas de 4 bits: la respuesta «el modelo fue cuantizado» es mayormente falsa; el problema real es de **enrutamiento por precio** entre proveedores de inferencia con contextos, límites de salida y soporte de herramientas muy distintos.

## Puntos clave

- **Cómo funciona OpenRouter**: capa de enrutamiento sobre ~54 proveedores (Novita, DeepInfra, Together, Morph…) sin ejecutar los modelos; cobra ~5,5 % de comisión. Para un modelo popular puede haber 20-40 endpoints distintos. El enrutamiento por defecto pondera por **inverso del cuadrado del precio** — el más barato gana cuadráticamente.
- **La cuantización, desmontada**: de 335 endpoints para 27 modelos de pesos abiertos, 54 sirven a 4 bits y 120 (35 %) declaran precisión «desconocida». Pero muchos laboratorios ya publican sus pesos originales en MXFP4/FP8 (Kimi 3, GPT-OSS 120B, DeepSeek); un endpoint «FP4» a veces sirve los **pesos originales sin modificar**. Caso contrario real: GLM 5.3 (original FP8) tiene 11 endpoints FP4 que degradaron y mantuvieron el precio, sin trasladar el ahorro de ~2 GPUs B200 por copia.
- **La brecha real**: Artificial Analysis midió GLM 5.2 por endpoint — Novita 100 % vs DeepInfra 73 %, **mismo etiquetado FP4, 27 puntos de diferencia**: no son los bits. La causa: límites de contexto (27 endpoints con menos de la mitad de la ventana; caso Novita 12k vs 131k original), tokens máximos de salida recortados (un modelo de razonamiento que se queda sin presupuesto de pensamiento **no avisa** — entrega una respuesta a medio razonar que «parece tonta») y 26 endpoints que no pueden llamar herramientas.
- **El enrutamiento por precio está sesgado**: el modo «Exacto» (enrutar por competencia en llamadas a herramientas) bajó errores de GLM 5 de ~8 % a ~1 % (88 %), y desde marzo está activo por defecto — pero solo para solicitudes con herramientas (~15 % de usuarios). Además Tarún Chitra mapeó que el orden usa precio de lista (ponderación ~95:5 entrada/salida vs uso real ~6:1) e ignora el precio de caché: el endpoint propio de DeepSeek con 94,5 % de aciertos de caché aparece décimo en precio de lista cuando la factura real lo pondría primero; ~3,5 M USD/año de valor extraído por este desajuste.
- **Mitigación práctica**: objeto `provider` con `order` (lista de proveedores verificados), `require_parameters: true`, tokens máximos explícitos y `quantizations` mínimo; advierte que ordenar por precio excluye del auto-exacto. Recomendación: fijar proveedores para chat/caché, dejar herramientas con auto-exacto. Diagnóstico rápido: el **registro de actividad** de OpenRouter muestra qué endpoint sirvió cada solicitud.
- **Tesis de cierre**: «es un problema de agentes disfrazado de problema de chatbot» — a volumen (pipelines, agentes), la configuración por defecto cuesta calidad y dinero a la vez.

## Salvedades de triage

- Cifras de segunda mano pero bien referenciadas (Artificial Analysis, Epoc AI, anuncio de OpenRouter, hilo de ingeniero de DeepInfra, investigación de Tarún Chitra) — verificables; transcripción automática con nombres ruidosos («Endpspoints», «Kimika 3», «Zo AI»).
- Datos con fecha de publicación (octubre 2026); los endpoints y precios de OpenRouter cambian rápidamente — a re-verificar en consolidación.

## Cruces sugeridos

- Entidad [[cognix]] (6.ª fuente — a actualizar en consolidación).
- Cluster inferencia-local (WL-239/240/253/254) y conceptos [[inferencia-local]]: coste/calidad de inferencia por API como cara remota del mismo problema.
- [[agentes-de-codigo]]: los agentes que envían prompts largos por turno dependen del precio de caché ignorado por el enrutador.
