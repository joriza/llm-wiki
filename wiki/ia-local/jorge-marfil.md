# Jorge Marfil

- **Tipo**: página de entidad (canal).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (consolidación lote ia-local — 2 fuentes).
- **Fuentes**: [[resumen-ia-local-ahora-va-6x-mas-rapida-en-tu-pc-normal]] (Strata, 2026-10-04) · [[resumen-la-ia-mas-potente-ya-funciona-en-un-pc-normal]] (Qwen 3.8 Flash Next en 3060, 2026-10-31).

Canal en español de análisis técnico de IA local, estilo **«desde cero para que lo siga cualquiera»**: explica VRAM/RAM/expertos con analogías (la cocina: encimera = VRAM, despensa = RAM, trastero = SSD) y **mide en su propio hardware** mostrando también lo que falla.

## Aportes distintivos

1. **Auditoría de titulares**: desmontó el «6× más rápido» de [[strata]] — compara versiones distintas de cuantización; misma versión = 2-4× escribiendo, **14-26× leyendo** (lo que importa para agentes). Regla: ante «N× más rápido» preguntar *¿qué versión contra cuál? ¿escritura o lectura?*
2. **Laboratorio con trampas** (metodología replicable): 3 proyectos rotos a propósito con especificación honrada, señuelos (tests que contradicen la spec, archivos antiguos con comentarios, notas que llaman «intermitente» a un fallo, docs que contradicen el contrato) y **comprobaciones ocultas**. Resultado: **Qwen 3.8 Flash Next 3-bit en una 3060 usada: 17/17 = Claude Opus 5**; Qwen 3.6 35B: 14/17 (arreglos «a lo bruto» y un fallo que pasa los tests y erra 1/1000 — «los tests en verde no demuestran nada»).
3. **Barrido de RAM** (12→61 GB): 24 GB para contestar bien, **40 GB para leer prompts largos**, >48 es pagar por nada.
4. **El ajuste gratis**: 6 hilos (1/núcleo) en vez de 12 → +48 % (el 65 % del tiempo los hilos se esperaban entre sí).

Su servidor personal (RTX 3060 12 GB de segunda mano, Ryzen 6c, 61 GB RAM) es el banco de pruebas de ambos videos.

## Cruces

[[strata]] · [[qwen]] · [[llama-cpp]] · [[hardware-para-ia-local]] · comparar con [[codesimple]] (mismo estilo económico-técnico) y [[cognix]].
