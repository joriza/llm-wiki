# Seguridad fuera del modelo

- **Tipo**: página de concepto.
- **Dominio**: `ia-critica-y-fronteras`.
- **Creada**: 2026-11-14 (consolidación diferida de los tramos 4-7 del backlog «Ver más tarde»; tema-candidato registrado en el cierre del tramo 7).
- **Fuentes**: [[resumen-WL093-ia-sin-censura-abliteration]] (WL-93, Jorge Marfil — abliteration: la ablación cuesta <5 $ y casi nunca compensa), [[resumen-WL082-gentle-dot-asistente]] (WL-82, Gentleman Programming — «las reglas FUERA del agente») y [[resumen-WL095-anthropic-mhs-hardware]] (WL-95, IoT Lab — interlocks físicos de MHS).
- **Ver también**: [[gentleman-programming]] · [[hardware-agentico-mcp-first]] · [[destilacion-conocimiento-oscuro]] · [[anatomia-de-un-rumor]].

## El concepto

La seguridad de un sistema con IA no se garantiza dentro de los pesos del modelo: se muda a la **capa alrededor** — clasificadores, permisos, revocación, interlocks físicos. Tres fuentes independientes convergen:

- **WL-93 (técnica)**: la negativa de un modelo es UNA dirección en sus activaciones — ablación por <5 $ y «nunca se niega». Consecuencias: la censura del modelo no es un candado («config por defecto, no candado» — NIST sobre GLM); y tampoco vale abliterar «para más capacidad»: TruthfulQA −2/−10, red teamers no las usan. La defensa real: filtrado de datos de doble uso y seguridad en la capa de orquestación.
- **WL-82 (arquitectura)**: Gentle Dot — «si la regla vive dentro del agente, se la puede saltear»; la controla la app Rust, no el modelo: permiso de sesión con vencimiento, botón de pánico, lista negra, confirmación de lo riesgoso; conectores tras un proxy MCP que esconde lo prohibido; credenciales que el agente no lee «porque el SO no lo deja».
- **WL-95 (hardware)**: MHS de Anthropic — interlocks físicos («la seguridad no depende de que la IA recuerde»); la IA coordina y genera scripts deterministas, el control rápido va abajo (PLCs/OPC UA).

## Relación con el mito del «20 % más tonta» (WL-93 + WL-70)

La creencia de que quitar la censura «vuelve 20 % más tonta» al modelo es un rumor cuantificado sin benchmark — caso de [[anatomia-de-un-rumor]]: el coste real es ~1 punto de MMLU, pero gana 4/5 en salidas de encargo y pierde la fiabilidad (13/17 exceden límites).
