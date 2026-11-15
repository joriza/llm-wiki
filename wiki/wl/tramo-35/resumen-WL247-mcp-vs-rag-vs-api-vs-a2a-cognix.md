# WL-247 — MCP vs RAG vs API vs A2A: el mapa de la IA explicado en 19 minutos

- **Fuente original**: `raw/wl/tramo-35/2026-10-05-mcp-vs-rag-vs-api-vs-a2a-el-mapa-de-la-ia-explicado-en-19-minutos.md`
- **Video**: [MCP vs RAG vs API vs A2A: el mapa de la IA explicado en 19 minutos](https://www.youtube.com/watch?v=no3pI3vGS5g)
- **Canal**: Cognix · **Publicado**: 2026-10-05 · **Duración**: 19:17 · **Ingesta**: 2026-11-15 (tramo 35)

## Qué trata

Explicación en capas (agente ficticio «Atlas», asistente de viajes) de cómo encajan API, RAG, MCP y A2A en el stack de un agente de IA — cada pieza aparece cuando Atlas «choca contra una pared»:

1. **API como base**: contrato entre programas (qué pedir, formato, respuesta predecible). Un LLM inserto en un sistema de APIs necesita instrucciones exactas por endpoint — «un empleado talentoso frente a paneles sin etiquetas». El parche de fuerza bruta (describir cada función al modelo) no escala: con 10 herramientas las instrucciones se inflan y cada cambio de esquema puede fallar en silencio.
2. **Pared 1 — conocimiento**: el modelo no sabe datos privados/cambiantes (vencimiento del pasaporte, puntos, política de viajes); el fine-tuning no sirve para hechos que cambian. **RAG**: fragmentar → indexar (keywords/embeddings híbridos) → aplicar permisos → recuperar → poner evidencia en contexto. Matiz fino: datos precisos (pasaporte, saldo) deben venir de fuente de verdad protegida; material no estructurado va a búsqueda semántica. RAG da contexto pero **no capacidad ni autoridad**; además el material recuperado tiene riesgos (política desactualizada, documentos maliciosos con instrucciones inyectadas, sobre-exposición de datos personales).
3. **Pared 2 — acción**: function calling (pedido estructurado → host verifica → herramienta ejecuta → resultado vuelve) es el motor básico del agente, pero cada conector es código a medida que hay que mantener. **MCP** (Anthropic, nov. 2024, estándar abierto): «el USB-C de las apps de IA» — con la advertencia de que el estándar no garantiza seguridad ni compatibilidad total; servidores MCP anuncian herramientas con esquemas legibles por máquina; host↔cliente↔servidor sobre JSON-RPC (stdio local, HTTP streaming remoto). Dos aclaraciones contra el marketing: **MCP no reemplaza a la API** (funciona por encima de ella) y también expone recursos y prompts, pero no busca ni genera.
4. **Pared 3 — coordinación**: demasiadas herramientas → malas elecciones y fallos; patrón de especialistas (agente de viajes, de finanzas, de aerolínea). **A2A** (Google, abril 2025): descubrimiento, mensajería, gestión de tareas entre agentes de equipos/empresas distintos; la **agent card** es lo que el agente *afirma* ser — no prueba confiabilidad; el descubrimiento debe ser por fuentes confiables (dominio oficial, directorio aprobado) con autenticación y permisos explícitos.
5. **Flujo completo**: pedido único «reserva Tokio» → RAG trae solo lo necesario (marca lo riesgoso en vez de adivinar) → MCP consulta calendario/tarifas con validación y logging → tarifa sobre el límite → envía solo itinerario+precio a finanzas por A2A → aprobación acotada a ese viaje/monto/vencimiento → re-verifica precio, espera confirmación humana → reserva sin duplicar, recibo, calendario, itinerario. «Un solo pedido, cuatro roles claros».

## Observaciones de triage

- Divulgación técnica precisa y bien secuenciada; fechas verificables de la historia (MCP nov. 2024, A2A abril 2025) correctas respecto del registro de la wiki.
- Énfasis recurrente y correcto en seguridad: mínimo privilegio, servidores de confianza, aprobación humana para gastar dinero, RAG como vector de inyección.
- ASR con garabeos normados en este resumen: «MFP/ADO/JZ RPC/RAC» → MCP/A2A/JSON-RPC/RAG.

## Cruces (en texto plano, candidatas)

- **MCP**: cablear en consolidación con la página existente `hardware-agentico-mcp-first` y el cluster `agentes-de-codigo` (WL-153/WL-165/WL-185/WL-203/WL-214).
- **RAG + seguridad**: cruces WL-147/WL-132 (seguridad IA local, Jorge Marfil), WL-150 (privacidad).
- **Multi-agente/A2A**: WL-167 (varios agentes en paralelo, SKIP-DUPLICATE ya procesada), WL-234 (agentes).
- Canal **Cognix**: 5ª fuente WL — entidad de canal candidata confirmada (WL-209/WL-240/WL-154/WL-246/WL-247).

## Dominio destino sugerido (pendiente de consolidación)

- **ia-uso-practico/agentes-de-codigo** — mapa conceptual del stack de agentes (MCP/RAG/A2A); alternativa: ia-critica-y-fronteras si se agrupa como divulgación, pero el contenido es de arquitectura aplicada.
