# Reglas cableadas vs reglas programadas

- **Tipo**: página de concepto.
- **Dominio**: `informatica-teoria`.
- **Creada**: 2026-11-14 (consolidación de los tramos 5-6 del backlog «Ver más tarde»).
- **Fuentes**: [[resumen-WL081-videojuegos-sin-procesador]] (WL-81, Herschel González — fuente principal), [[resumen-WL069-clarion-generador-aplicaciones]] (WL-69 — el péndulo en el software de gestión), [[resumen-WL067-esp-mosaico-hardware-agentico]] (WL-67 — el péndulo de vuelta en los ASICs/TPU de IA) y [[resumen-WL079-logo-tortuga-escuela]] (WL-79 — la época y la alfabetización del péndulo).
- **Ver también**: [[hardware-agentico-mcp-first]] · [[generadores-4gl-1986-2026]] · [[lenguaje-rust]].

## El péndulo

La informática oscila entre **cablear las reglas en el circuito** (rendimiento máximo, flexibilidad mínima) y **programarlas como instrucciones** (flexibilidad máxima, costo de rendimiento). El péndulo completo según las fuentes: Pong (1972) sin CPU → Gun Fight (1975) con 8080 → GPU → ASICs/TPUs de IA que vuelven a cablear reglas en silicio.

## El caso Pong: reglas como topología (WL-81)

- Sin imagen guardada ni CPU: contadores sincronizados con el barrido del CRT generan la señal de cada elemento **en el momento exacto**.
- Paletas = perillas de resistencia variable → tiempos → posición vertical; pelota = contadores + modificación de tiempos; colisión = circuito que detecta la coincidencia de señales pelota-paleta → cambia la dirección; el ángulo de rebote según la zona de impacto está **cableado**; el estado (dirección) y la aceleración tras los intercambios son eléctricos.
- El bug como diseño: la paleta que no llega al borde superior se dejó a propósito — evita partidas infinitas en máquina de monedas (limitación convertida en diseño).
- Los límites del cableado: el prototipo de Wozniak para Breakout (~44 chips) era brillante e **inmantenible** — Atari hizo una versión de producción distinta; Gun Fight (1975) y Space Invaders (1978) marcan la transición al 8080. La reflexión de la fuente: los procesadores también son circuitos — lo que cambió fue el aprovechamiento (reglas como circuitos → reglas como instrucciones).

## El mismo péndulo en el software (WL-69, WL-67)

- **Clarion (1986)**: describir el negocio una vez en un diccionario y que el generador construya el 80-90 % — el software de gestión también cableó «reglas» en plantillas con puntos de inserción ([[generadores-4gl-1986-2026]]); la advertencia de Barrington («lo automatizado se vuelve lo que alguien debe comprender cuando algo falla») vale igual para el silicio.
- **ESP Mosaic / ArtCraft (2026)**: los ASICs de IA y las plataformas MCP-first son el péndulo de vuelta — reglas e inferencia cableadas en silicio para ganar rendimiento, con el agente programando encima ([[hardware-agentico-mcp-first]]).

## La época (WL-79)

Los años en que Pong cableaba reglas son los mismos en que Logo llevaba la programación a la escuela — dos respuestas opuestas a la misma pregunta (dónde viven las reglas): en el circuito, en el programa o en quien aprende a escribirlo.

## Cruces

- **WL-81 ↔ WL-69/WL-67**: el péndulo circuito↔software↔silicio como patrón recurrente — el tema-candidato más rico del tramo 6.
- **WL-79**: cronología compartida (1966-1978).
- **WL-80** ([[lenguaje-rust]]): el primer bug de seguridad del Rust del kernel apareció exactamente en el bloque `unsafe` — el lugar donde se «cablea» la confianza.
- **WL-84**: la capa física invisible hermana (la señal de video de Pong ↔ la propagación de radio) — «cómo funciona de verdad lo invisible de todos los días».
