# WL-724 — Claude + WhatsApp = $12,000/mes (Giuliana Garbini)

- **Fuente original**: `raw/ia-uso-practico/2026-11-21-claude-whatsapp-12-000-mes.md`
- **Dominio definitivo**: `ia-uso-practico` (consolidación T25, tramo 105)
- **Video**: https://www.youtube.com/watch?v=cj0_w4NyRgs
- **Canal**: Giuliana Garbini (1.ª fuente) · **Publicado**: 2026-11-21 · **Duración**: 31:07 · **Idioma**: es (ASR; garbiñeos normalizados solo aquí: «Cloud Code»=Claude Code, «Qualifai»=Coolify, «Chat Wood/Chatfuel»=Chatwoot, «Cloud»=Claude)

## Síntesis

Tutorial técnico completo para montar un asistente de IA que atiende WhatsApp de un negocio las 24 horas: filtrar curiosos y cerrar ventas automáticas. El título promete $12.000/mes, cifra que **nunca se sustancia en el contenido** (clickbait de ingresos — señalado); el video es en realidad un walkthrough de infraestructura, correcto y detallado.

**Chatbot vs. asistente**: el chatbot clásico tiene respuestas pre-cargadas y no sale del guion (y al reclamar hay que empezar de cero); el asistente de IA conversa con contexto del negocio cargado por el dueño y «si no tiene la información cargada, pregunta antes de inventar». Casos de uso: responder consultas 24/7, informes de stock, avisos de faltantes.

**La pila completa** (paso a paso): VPS en Hostinger (KVM 1 alcanza para empezar, región más cercana, Brasil para Sudamérica) con **Coolify** como panel self-hosted; dominio y registro DNS tipo A para la URL de Coolify; **Claude Code** + VS Code + Git + Node en la máquina local (suscripción de pago recomendada, plan de USD 20) para que el agente haga el deploy; **Chatwoot** como bandeja de entrada unificada (transcripción lo garbiñea como «Chat Wood»); **Meta Developers** para la app de WhatsApp Cloud API — aclaraciones útiles: no hace falta cuenta verificada de Meta ni mail profesional; sí un chip/número nuevo (el chip se usa solo para activar y se descarta). Usuario de sistema, **token de vencimiento «nunca»** (token infinito) con todos los permisos, verificación del número vía Postman (importando payloads preparados: phone number ID, WABA ID, subscribe). Conexión Webhook Chatwoot ↔ agente; base **PostgreSQL** desplegada también en Coolify; proveedor LLM a elección en el `.env` (OpenAI por defecto en el video; Claude y Gemini como alternativas) con carga de créditos obligatoria (sin crédito el asistente calla).

**El «toque propio»**: el prompt de sistema (`prompt-sistema.md`) editable para tono y datos del negocio — y un detalle empático con la producción: sacar las negritas y los signos de pregunta iniciales porque «queda muy obvio que es un robot». Credenciales **MCP** de Coolify (URL, password, token read/deploy) para que Claude Code pueda desplegar el agente en el servidor con una sola instrucción: «instalá todo lo que haga falta y mandá el deploy; quiero el webhook listo para conectar con las integraciones de Chatwoot». Prueba final ida y vuelta exitosa.

**Advertencias operativas**: (1) Meta empezó a cobrar en octubre los mensajes orgánicos (con ~1.000 gratis/mes — punto de costo a calcular según volumen); (2) cuidar claves y tokens; (3) probar mucho antes de ponerlo frente a clientes reales. Cierre comercial: consultoría propia por WhatsApp.

## Cruces

- [[agentes-de-codigo]] — caso de uso real de Claude Code como constructor de sistemas completos (deploy vía MCP de Coolify, no solo código: infra, DNS, webhook).
- [[delegacion-cognitiva-ia]] — el dueño delega la *montaje* en el agente pero conserva el conocimiento del negocio en el prompt de sistema: la nueva frontera del «sabés hacer» → «sabés qué querés».

Candidatas para consolidación (aplazada): **Giuliana Garbini** entidad nueva ×1 (tutoriales prácticos de IA aplicada a negocios, con aviso de clickbait de ingresos en títulos); hilo «IA para PYME / WhatsApp comercial» (candidato a concepto si aparece otra fuente); la nota de costos de Meta (mensajes orgánicos cobrados desde octubre 2026) como dato de ecosistema.
