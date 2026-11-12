# HolaMundo

- **Tipo**: página de entidad (persona/creador de contenido).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: [[resumen-herdr-es-increible-aprendelo-gratis-certificado-holamundo]] (playlist «IA-Recursos», 2026-09-15 — monográfico 47:47) · [[resumen-ia-local-programacion-agentes-gratis-privado-cualquier-pc]] (lote ia-local, fuente 58, 2026-11-10 — guía end-to-end LM Studio + modelos + VS Code + Pi).

## Identidad

Canal de tecnología en español conducido por Nicolás, con academia propia (certificados gratuitos de sus talleres — la autopromoción del curso se excluye de la síntesis). En este lote aporta un **curso completo de Herdr**, el multiplexor de terminal con integración nativa de agentes, que funciona como referencia didáctica del tema: instalación por plataforma, paneles/tabs/workspaces, atajos, `config.toml`, fuzzy finder, plugins y conexión remota.

## Temas recurrentes

1. **Multiplexores de terminal y arnés de agentes**: el modelo conceptual heredado de tmux (sesión → ventanas → paneles) más lo que Herdr añade para agentes: notificación de qué agente terminó o quedó bloqueado, server en segundo plano (detach/reattach con procesos vivos), detección automática de Claude Code/Codex/OpenCode, plugins con advertencia de revisar el código (~1123 en el marketplace) y modo `--remote` que instala y aplica la configuración local en el servidor (54/57).
2. **El mini PC como arnés doméstico**: un mini PC siempre encendido al que se conecta el portátil — los modelos inteligentes planifican y un modelo local (~35B o MoE ligero) ejecuta, abaratando tokens y dejando a los agentes trabajar sin límite de tiempo; crítica explícita al meme de dejar el portátil «entreabierto» para que los agentes sigan (54/57).

## Tesis transversal

La persistencia es la propiedad clave: el agente vive en la **máquina que no se apaga**, no en el portátil — mismo patrón que el VPS con Docker de otras fuentes del lote, en versión doméstica.

## Fuentes procesadas en la wiki de este autor

- [[resumen-herdr-es-increible-aprendelo-gratis-certificado-holamundo]] (2026-09-15).

## Véase también

- [[multiplexores-agentes]] — el concepto consolidado (Herdr, Herder/Orca).
- [[agentes-de-codigo]] — infraestructura 24/7 para agentes.
