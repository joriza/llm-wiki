# Routing por coste (inferencia vía API)

- **Tipo**: página de concepto.
- **Dominio**: `ia-uso-practico/`.
- **Creada**: 2026-11-16 (consolidación T48, tramos 38-41 — umbral ≥2 verificado por conteo real).
- **Fuentes (2, umbral ≥2)**: [[resumen-WL274-openrouter-endpoint-debilitado-cognix]] (WL-274, Cognix — enrutamiento interno de OpenRouter) · [[resumen-WL278-vibecoding-kimchi-pelado-nerd]] (WL-278, Pelado Nerd — modo multimodelo automático del cliente Kimchi).
- **Ver también**: [[inferencia-local]] (ia-local/ — la cara local del mismo problema coste/calidad) · [[agentes-de-codigo]] (los agentes, principales perjudicados) · [[percepcion-de-regresion-de-modelos]] (ia-uso-practico/ — WL-298, clasificadores baratos vs LLM como caso límite de la misma economía: pagar el modelo mínimo que resuelve la tarea).

## El concepto

Cuando un harness o router elige entre varios proveedores/modelos de inferencia **ponderando por precio**, la economía del router no coincide con la calidad percibida por el usuario: el endpoint más barato gana aunque sirva el modelo con menos contexto, menos tokens de salida o sin soporte de herramientas.

## Lo documentado (WL-274)

- OpenRouter enruta sobre ~54 proveedores ponderando por **inverso del cuadrado del precio**; para un modelo popular hay 20-40 endpoints con contextos, límites y soporte de herramientas desiguales.
- La etiqueta de cuantización no explica la brecha: Artificial Analysis midió 100 % vs 73 % para el **mismo etiquetado FP4** — la causa real son límites de contexto, salida recortada (un modelo de razonamiento sin presupuesto de pensamiento **no avisa**) y endpoints sin herramientas.
- El sesgo de precio de lista ignora el precio de caché: ~3,5 M USD/año de valor extraído (mapeo de Tarún Chitra); mitigación con `provider.order`, `require_parameters` y el registro de actividad como diagnóstico.
- Tesis: «es un problema de agentes disfrazado de problema de chatbot».

## La cara práctica (WL-278)

- El cliente Kimchi implementa el patrón en positivo: **modo multimodelo automático** — un modelo rápido y barato planifica, otro más caro codea — con desglose de gasto por modelo (~2 USD la sesión de tres proyectos).
- Contraste con el caso negativo: la selección consciente por tarea (lo que hace Kimchi) frente a la selección ciega por precio (la que critica WL-274 en OpenRouter).

## Tesis transversal

El coste de la inferencia vía API no lo fija el precio de lista sino **qué se degrada por el camino** (contexto, salida, herramientas, caché): enrutar por precio sin verificar el endpoint cuesta calidad y dinero a la vez; la alternativa madura es enrutar por tarea con presupuestos explícitos.

## Actualización 2026-11-16 (consolidación T61 — Jev)

El concepto se materializa con el **lanzamiento de Jev** (clasificador «TypeScript de la IA», primitivos null/choice/score): presentación técnica WL-332 ([[resumen-WL332-jev-typescript-de-la-ia-dos-dager]] — insight clave: la «0 % alucinaciones» es type-safety de tipos, no exactitud semántica; escepticismo sobre demos de humo), demo de 1.ª mano WL-346 ([[resumen-WL346-que-es-jev-ai-return-gis]] — benchmark casero 626 ms, tokens de salida gratis, «formato ≠ certeza» dicho por el propio demostrador) y cobertura a <24 h WL-353 ([[resumen-WL353-jev-lanzamiento-ia-edteam]] — primitivos coincidentes entre fuentes independientes). Coherente con la tesis original del concepto (WL-274/278/298): clasificador barato para lo estructurado, LLM para lo ambiguo. Antecedente conceptual: WL-298 (clasificadores baratos vs LLM).

**Actualización 2026-11-16 (consolidación relevo 1 del pedido L34)**: [[resumen-WL388-codigo-ia-produccion-hdeleon]] (WL-388, mismo canal de producción real) — API comercial de clasificación 25-30 ¢/documento → llamada directa a un modelo mini (~2 ¢) con salida forzada a JSON schema; la misma tesis Jev de WL-298/346/353 llevada a producción con 1.000 llamadas/día.

**Actualización 2026-11-16 (T76)**: +1 fuente — WL-433: coste de la frontera generativa (H3 Max 480p ~0,05 USD/vídeo → stream 24/7 ≈ 130 k USD/mes; el coste decide si la generación continua es producto o demo). WL-436 tangencial: elección de runtime por rendimiento/hardware (llama.cpp vs FreeToken).
**Actualización 2026-11-16 (consolidación T90, pedido L39)**: +2 fuentes — WL-494 ([[resumen-WL494-qwen-4-real-o-rumor-jorge-marfil]], `ia-local/`: sesión API inventada de 2M entrada + 200k salida en Qwen 3.8 Flash ≈ $0,40 vs tarjeta propia — «el modelo es tuyo» como argumento no-económico del routing) y WL-501 ([[resumen-WL501-hermes-0-23-equipo-agentes-julio-barroeta]], `agentes-de-codigo/`: el «Group Router» de Hermes 0.23 como routing por coste en la práctica — LLM auxiliar rápido/barato decide quién responde en salas multiagente, con frenos de sala como presupuesto; el autor se quedó sin crédito dos veces probando «todos contestan»).
