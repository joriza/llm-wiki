# WL-559 — Conectores DC firmes o flojos (5525 en 5521)

- **Fuente original**: `raw/wl/tramo-89/2026-08-21-conectores-dc-firmes-o-flojos-5525-en-5521.md` ([Vídeo](https://www.youtube.com/watch?v=x2RaF_BHb_o))
- **Canal**: acaele
- **Publicado**: 2026-08-20 · **Duración**: 01:17 (Short técnico)
- **Dominio provisional**: electronica-practica (conectores DC)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Short técnico sobre la confusión clásica de los conectores barrel DC 5,5×2,1 mm (5521) vs 5,5×2,5 mm (5525):

- Cada ficha entra firme en su jack; **no son intercambiables**: el 2,1 no entra en el jack 2,5, pero **el 2,5 sí entra flojo en el jack 2,1** (0,4 mm de diferencia en el pin) → chisporroteo, desconexión fácil.
- **Truco de bolsillo**: llevar siempre una ficha 5521 — si entra, el equipo es 5521; si no entra, es 5525.
- **Corriente**: el consumo máximo lo determina el componente más angosto — el jack 5525 acepta hasta 12,5 A pero el más angosto limita a 7 A.
- Moraleja: «si baila un poquito, ese contacto no sirve».

## Señales de triage

- **1.ª mano, dato técnico verosímil y verificable**: dimensiones estándar del barrel DC; la asimetría de compatibilidad (2,5 en jack 2,1 flojo) es el comportamiento conocido del conector. Cifras de corriente (12,5/7 A) declarativas sin medición mostrada — señaladas como datos del fabricante.
- Genuinamente útil, sin humo ni patrocinios (auto-referencia al canal «mini PC DC ATX» como contexto de serie).
- ASR mínimo («chispa» por chisporroteo); raw intacto.

## Cruces

- **electronica-practica** (conectores/alimentación): par directo con el clúster de alimentación DC-ATX del canal (candidato a entidad si sigue entrando); eco de WL-543 (tolerancias y acoples como origen de fallos — «la fricción vive en los bordes») y WL-555 (reparación con contacto incierto).
- Truco de identificación por pieza de bolsillo ↔ práctica de diagnóstico de WL-555 y la metodología de verificación de la wiki.

## Veredicto de triage

Útil menor de alta densidad: dato técnico real, truco accionable y advertencia de corriente — señalados los amperajes como declarativos. Consolidación diferida (L12): electronica-practica, página de conectores DC candidata si hay 2.ª fuente.
