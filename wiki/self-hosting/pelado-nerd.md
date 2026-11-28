# Pelado Nerd

- **Tipo**: página de entidad (canal/persona — Pablo).
- **Dominio**: `self-hosting/`.
- **Creada**: 2026-11-17 (consolidación T6, tramo 98 — umbral ≥2: 4 fuentes).
- **Fuentes**: [[resumen-WL278-vibecoding-kimchi-pelado-nerd]] (`agentes-de-codigo/`) · [[resumen-bloquea-ads-malware-pi-hole-pelado-nerd]] y [[resumen-WL343-link-shortener-pelado-nerd]] (`self-hosting/`) · [[resumen-WL624-openclaw-vs-hermes-pelado-nerd]] (tramo 98, en `wl/` — comparativa de agentes personales tras 7 meses de OpenClaw) · [[resumen-WL747-isp-bittorrent-pelado-nerd]] y [[resumen-WL750-jellyfin-radarr-sonarr-pelado-nerd]] y [[resumen-WL751-apps-servidores-pelado-nerd]] (tramo 106, en `wl/` — BitTorrent cifra pero no anonimiza; migración al stack *arr con Jellyfin y veredicto honesto Jellyfin-vs-Plex; inventario 2022 de sus Raspberry — el documento histórico del stack FlexGet que WL-750 abandona).

## Identidad

Pablo, técnico argentino de **homelab y agentes personales con demos de uso real**: cada herramienta se instala y se vive (Pi-hole para toda la casa, acortador propio en Raspberry Pi, OpenClaw 7 meses antes de compararlo con Hermes), con tono coloquial rioplatense y muestras de fallos reales.

## Sello observado en sus fuentes

- **Demostración sobre specs**: el vibecoding WL-278 son tres demos sin tocar código (memoria externa `.kimchi`, code reviewer externo — video patrocinado, señalado); WL-624 es la migración completa OpenClaw→Hermes con lo que falló (migrate-secrets) y el trade-off central «lento-transparente vs. rápido-silencioso»; WL-747 enseña su propia IP real en iknowwhatyoudownload.com con las descargas que la página le atribuye.
- **Hallazgos de consumo útiles**: Hermes crea skills por sí solo ante tareas repetitivas y las reusa (WL-624); versiones de los agentes cambian «todos los días» — la comparativa queda fechada por versión (Hermes 0.221 / OpenClaw 202609).
- **Patrocinios recurrentes y declarados**: HostGator (WL-624), señalados en cada resumen y excluidos de las síntesis. WL-747 aclara explícitamente que la página demostrada no está patrocinada.

**Registro**: confianza media-alta — 1.ª mano constante, patrocinio siempre declarado. Cruce natural con [[self-hosting]] (dominio) y [[agentes-de-codigo]] (WL-278/624).

**Ver también**: [[pi-hole]] · [[resumen-WL343-link-shortener-pelado-nerd]] · [[resumen-WL278-vibecoding-kimchi-pelado-nerd]] · [[resumen-WL624-openclaw-vs-hermes-pelado-nerd]] · [[self-hosting]].

**Actualización 2026-11-28 (consolidación T37 — tramo 110, WL-782, 8.ª fuente)**: [[resumen-WL782-agente-propio-strands-pelado-nerd]] (agentes-de-codigo/) — primer video del canal en el territorio agentes de código (después del vibecoding WL-278): agente propio con **Strands** (SDK Python de AWS) en 4 iteraciones sobre Ollama/Qwen3 4B local, con la virtud poco común de **mostrar los fallos en vivo** (alucinación por prompt vago, búsqueda por dos nombres que falla, un día confundido) y atribuirlos a la causa correcta (modelo chico, no el SDK). Aporte transferible: **datos duros y estables → script determinista**, no agente probabilístico (no consume tokens ni depende de que el modelo «le pegue»); y el cierre pragmático — para un proyecto chico y específico, un agente propio de ~50 líneas gana a instalar un harness completo. Consistente con su sello de demostración sobre specs; cruza [[agentes-de-codigo]] y la serie agentes-carpetas (WL-771/772).
