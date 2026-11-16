# Fazt

- **Tipo**: página de entidad (persona/creador de contenido).
- **Dominio**: `agentes-de-codigo`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 3 resúmenes de la playlist «IA-Recursos» (2026-04-18 a 2026-09-09) + 2 del lote «IA-Nuevas formas de trabajo» ([[resumen-asi-desarrollo-con-varios-agentes-a-la-par-herdr-claude-code-fazt-code]] — canal Fazt Code, flujo Herdr multi-agente — y [[resumen-5-cambios-en-el-desarrollo-de-software-que-estan-pasando-ahora-2026-fazt]] — panorama Rust-vibe-coding/testing/nubes/orquestación). Total: 5.

Consolidación T40 (2026-11-15, tramos 28-37): **7 fuentes nuevas** — WL-230 ([[resumen-WL230-skills-de-ia-7-tips-fazt]], guía de skills propios en 7 tips), WL-231 ([[resumen-WL231-gpt-6-astra-mundo-3d-fazt]], demo GPT-6 Astra 3D — marco promocional del sponsor Abacus AI, NO verificado), WL-232 ([[resumen-WL232-opmanager-panel-devops-fazt]], tutorial OpManager/ManageEngine — producto sin contraste de alternativas), WL-233 ([[resumen-WL233-odoo-ia-claude-mcp-fazt]], integración Odoo↔agente vía MCP oficial), WL-241 ([[resumen-WL241-software-ha-muerto-fazt]], opinión-ensayo «el software ha muerto» + REA/Arc Craft), WL-250 ([[resumen-WL250-cualquiera-puede-decompilar-apps-rea-fazt]], noticias semana IA) y WL-257 ([[resumen-WL257-stack-overflow-2026-fazt-code]], canal Fazt Code — comentario encuesta Stack Overflow 2026). Total: **12 fuentes** (10 como Fazt, 2 como Fazt Code). El tramo 33 concentró al canal ×4 en una sola ventana; la tendencia del corpus se mantiene: reseñador/tutor del ecosistema con patrocinios y productos declarados en cada resumen.

## Identidad

Desarrollador y creador de contenido hispano (canal orientado a desarrollo web y herramientas). En este lote actúa como **reseñador del ecosistema de agentes de IA**: en lugar de tutoriales paso a paso, recopila y clasifica herramientas recientes, con detalles técnicos concretos (estrellas de GitHub, rendimiento medido, instalación) y una lectura de fondo de por qué el ecosistema se multiplica. Usa patrocinios declarados (Hostinger, Brevo, Don Dominio, fast.dev), registrados como tales en cada resumen.

## Temas recurrentes

1. **El agente minimalista extensible (Pi)**: reseña monográfica del agente que «viene vacío» — multi-proveedor por diseño (OAuth de suscripciones + APIs por variables de entorno), steering vs. cola (Alt+Enter), contexto bajo demanda (`#` vs `!!`), árbol de sesiones (`/tree`) y extensiones TypeScript con marketplace pi.dev; «como Vim, en el lado de los agentes» (26/57).
2. **Configuración portable de agentes (dotfiles)**: el problema de reconfigurar agentes en cada máquina resuelto con el patrón clásico de Linux — repositorio de dotfiles + symlinks (`.claude`, `.codex`, `.config/opencode`), scripts de instalación, herramientas dedicadas (chezmoi, GNU Stow, YADM, Nix Home Manager) y la carpeta `.agents` como formato compartido emergente entre herramientas (47/57).
3. **Tour de repos del ecosistema**: OmniRouter (gateway de ~350 proveedores que salta de cuenta gratuita automáticamente), Herdr/Orca (orquestadores de agentes en terminal y escritorio), un «VS Code para agentes», la distro con IA de DHH, AnyDoc (conversión de documentos), skills de Matt Pocock (GrillMe), DeepSeek Harness, OpenMontage (vídeo por agente) — hipótesis de cierre: los harnesses se multiplican porque ya no hay barrera para construirlos (50/57).

## Tesis transversal

Su hilo compartido con el resto del lote es la **infraestructura como respuesta a la fragmentación**: un agente por herramienta, una carpeta de configuración por agente, una suscripción por modelo — y las herramientas que unifican cada capa (dotfiles, multiplexores, gateways). El motor de fondo: la IA genera código, así que también genera sus propias herramientas.

## Fuentes procesadas en la wiki de este autor

- [[resumen-agente-de-codigo-que-viene-vacio-fazt]] (2026-04-18).
- [[resumen-deja-de-perder-tiempo-configurando-agentes-de-ia-en-cada-ordenador-fazt]] (2026-08-22).
- [[resumen-deje-de-pagar-4-suscripciones-de-ia-por-estos-repos-fazt]] (2026-09-09).
- [[resumen-WL271-ya-nadie-escribe-codigo-fazt]] (WL-271, 2026-10-09 — videoensayo de opinión, NO fuente factual: post viral del vibecoding, DHH, «el trabajo real es entender, revisar y mantener»; patrocinio hosting y especulación sobre costes señalados; consolidación T48 2026-11-16).
- [[resumen-WL293-agente-codigo-a-medida-con-pi-fazt]] (WL-293, ia-uso-practico/, 2026-09-24 — consolidación T49 2026-11-16): tour tutorial de 50 min del harness abierto Pi — percepción externa del ecosistema (contraste con las fuentes de primera mano WL-137/153): multi-proveedor, skills vs MCP, extensiones TypeScript, paquetes, gestión de sesiones, AGENTS.md.

Total: **13 fuentes** (11 como Fazt, 2 como Fazt Code).

## Véase también

- [[agentes-de-codigo]] — el arquetipo «minimalista extensible» y el tour de repos están consolidados ahí.
- [[multiplexores-agentes]] — Herdr/Orca dentro de la categoría.
- [[agregacion-apis]] — OmniRouter como gateway de cuentas gratuitas.
