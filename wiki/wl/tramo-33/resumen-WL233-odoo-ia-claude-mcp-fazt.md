# WL-233 — ¡Por fin! Conecta Odoo a la IA con Claude MCP

- **Fuente original**: `raw/wl/tramo-33/2026-10-07-por-fin-conecta-odoo-a-la-ia-con-claude-mcp.md`
- **Video**: [¡Por fin! Conecta Odoo a la IA con Claude MCP](https://www.youtube.com/watch?v=Wznzbz4rbtA)
- **Canal**: Fazt · **Publicado**: 2026-10-07 · **Duración**: 16:48 · **Ingesta**: 2026-11-15 (tramo 33)

## Qué trata

Tutorial de integración de **Odoo (ERP de código abierto) con agentes de IA vía MCP**:

- **Contexto Odoo**: plataforma que unifica contabilidad, CRM, documentos, sitio web/e-commerce, facturación, inventario, manufactura y RRHH en módulos extensibles. Alta guiada de una instancia de prueba (módulos e-commerce, CRM, facturación, documentos, empleados) con onboarding asistido por IA (plantillas de sitio generadas según el rubro).
- **Habilitación del MCP**: instalar/actualizar el módulo «Servidor MCP e IA» en Aplicaciones; crear una **API key** en Perfil → Preferencias → Seguridad (alcance MCP, vigencia elegible: día/mes/año). La configuración del cliente se delega a la IA: pegar la URL de la documentación y las credenciales en un chat de Claude dentro de un directorio de trabajo.
- **Granularidad de herramientas**: por defecto solo expone ~5 herramientas de **lectura**; cada acción adicional (crear página, obtener HTML, crear/actualizar registros, describir reportes contables, cargar datos de muestra…) se activa una a una en Ajustes → Técnico → Acciones del servidor, marcando «Disponible en MCP». El autor pasa de 5 a 13 herramientas, incluyendo escritura.
- **Casos demostrados**: registrar y actualizar contactos desde el chat (dedupe: detecta un contacto homónimo y crea con ID distinto); carga de 3 clientes dictados en texto libre no técnico → crea contactos y oportunidades del CRM con presupuesto calculado; flujo completo desde un correo entrante (crear oportunidad, agendar visita en calendario, checklist, buscar clientes cercanos), con manejo de errores interactivo (NIT inválido → sugerencia, conversión de moneda no habilitada → confirmación paso a paso).
- **Advertencia del autor**: no confiarse del todo — guiar los primeros chats con ejemplos del flujo propio; sugiere convertir esos pasos aprendidos en un **skill** para no repetir instrucciones.

## Observaciones de triage

- Tutorial técnico de primera mano sobre el **MCP oficial de Odoo** (documentación oficial mostrada); los detalles del módulo y sus límites son claims del fabricante vistos en pantalla, no contrastados.
- Interacción real: la IA confiesa no saber el precio real de un componente («con los precios del mercado es muy probable que sea la tarjeta gráfica») — buen ejemplo del límite de alucinación en datos que no están en el ERP.
- ASR: «MSP» = MCP, «Cloud» = Claude, «YouTube» (por «Odoo») = error de reconocimiento — normalizado solo aquí.
- **Cruces**: [[agentes-de-codigo]] (MCP como puente agente↔aplicación), serie MCP del tramo (WL-230 skills, WL-232 OpManager con MCP), WL-234 (coding agents), Odoo como herramienta (página candidata, texto plano: «Odoo ERP», sin página existente).

## Dominio destino sugerido (pendiente de consolidación)

- **ia-uso-practico/agentes-de-codigo** (o general si se prioriza el ángulo ERP/gestión) — integración MCP agente↔ERP.
