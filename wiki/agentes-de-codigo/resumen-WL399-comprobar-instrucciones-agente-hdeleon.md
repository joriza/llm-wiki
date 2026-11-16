# WL-399 — Así compruebo que la IA leyó mis instrucciones

- **Fuente**: `raw/agentes-de-codigo/2026-09-11-asi-compruebo-que-la-ia-leyo-mis-instrucciones-dev-ia-ai.md` (`qRCNuOG9bh8`, https://www.youtube.com/watch?v=qRCNuOG9bh8)
- **Canal**: hdeleon.net ([[hdeleon-net]], 2.ª fuente WL)
- **Publicado**: 2026-09-11 · **Duración**: 01:10 · **Idioma**: es (subtítulos automáticos)
- **Dominio previsto**: agentes-de-codigo
- **Tramo**: 65 (relevo 5 de 12 del pedido L34)

## Qué trata

Micro-tip (Short de 1:10) para verificar que el agente realmente carga el archivo de instrucciones (AGENTS.md / .github copilot-instructions / CLAUDE.md — cada empresa exige nombre y ubicación distintos):

- Añadir al final del archivo una instrucción marcada como «superimportante» con una firma improbable (su ejemplo: «dime "listo precioso" al final de todo lo que hagas»).
- En un prompt de prueba cualquiera, si el agente responde con la firma, el archivo de instrucciones está cargado; si no, no lo está — independientemente del proveedor (Copilot/Anthropic/OpenAI).
- Recomienda hacer la prueba con un modelo barato («un 5.5 GPT», no el tope de gama).

## Señales de calidad

- Tip de 1.ª mano, trivialmente verificable y de utilidad práctica; sin cifras ni afirmaciones de 2.ª mano.
- Cierre autopromocional humorístico («sígueme para más consejos sin sentido como este») — excluido de la síntesis.
- La «firma canaria» es una técnica conocida (sentinel/canary en instrucciones de sistema); el video la populariza sin nombre ni contexto.

## Cruces (consolidación diferida, L12)

- [[hdeleon-net]] +1.
- [[agentes-de-codigo]] / [[odd-metodologia]]: verificación de que el harness carga las instrucciones (mismo espíritu que los checks de contexto de skills — WL-390, WL-350 skills-publicables).

## Consolidación (relevo 2 del pedido L35, 2026-11-16)

Consolidado en `agentes-de-codigo/`. [[hdeleon-net]] +1 (5 WL tras relevo 2: +415). Cruces: [[agentes-de-codigo]], checks de skills (WL-390/350).
