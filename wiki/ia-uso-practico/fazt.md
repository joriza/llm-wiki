# Fazt

- **Tipo**: página de entidad (persona/creador de contenido).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 3 resúmenes de la playlist «IA-Recursos» (2026-04-18 a 2026-09-09).

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

## Véase también

- [[agentes-de-codigo]] — el arquetipo «minimalista extensible» y el tour de repos están consolidados ahí.
- [[multiplexores-agentes]] — Herdr/Orca dentro de la categoría.
- [[agregacion-apis]] — OmniRouter como gateway de cuentas gratuitas.
