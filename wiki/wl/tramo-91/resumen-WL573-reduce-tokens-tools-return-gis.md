# WL-573 — Reduce tus tokens a la mitad con este consejo

- **Fuente original**: `raw/wl/tramo-91/2026-08-10-reduce-tus-tokens-a-la-mitad-con-este-consejo-shorts-ia-dev.md` ([Vídeo](https://www.youtube.com/watch?v=OIQYiXr5-f8))
- **Canal**: return(GiS);
- **Publicado**: 2026-08-10 · **Duración**: 00:57 (Short)
- **Dominio provisional**: agentes-de-codigo (optimización de tokens)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Short (57 s) de optimización práctica en VS Code Copilot: **las definiciones de todas las tools/MCP habilitadas viajan en el system prompt** — dejar activas las que no se usan («Microsoft Learn», «GitHub Advanced Security», «Work IQ» deshabilitadas en el ejemplo) genera gasto innecesario de tokens en cada llamada; el panel «Configure Tools» permite ver gráficamente qué se envía y seleccionar solo las tools básicas del IDE necesarias para la tarea concreta. Título: «reduce tus tokens a la mitad» (la mitad es gancho, no medición).

## Señales de triage

- **Consejo técnico correcto y verificable**: el contexto de tools del sistema va al prompt es mecanica real de los agentes; el ahorro depende de cuántas tools tengas habilitadas — la cifra «a la mitad» del título no está medida — señalada.
- 2.ª fuente del canal (WL-546 WebMCP); coherente con su línea de «entender la mecánica antes de usar».
- Raw intacto; sin patrocinios; ASR «MCTP» por MCP.

## Cruces

- **[[routing-por-coste]] +1 (aplicación directa: solo cargar las tools necesarias)**, [[agentes-de-codigo]] (configuración de harness), [[delegacion-cognitiva-ia]].
- Par con WL-546 (mismo canal), WL-541 (la pirámide: cada tool es contexto), WL-399 (verificar el harness); el «system prompt inflado por tools» ↔ la práctica de skills mínimos de la wiki de Gentle.
- WL-556 (Context7 solo cuando hace falta) — mismo principio: contexto selectivo.

## Veredicto de triage

Útil menor de alta densidad: un consejo accionable correcto con cifra de gancho sin medir — señalada. Consolidación diferida (L12): [[routing-por-coste]], [[agentes-de-codigo]], return(GiS); 2.ª fuente → entidad.
