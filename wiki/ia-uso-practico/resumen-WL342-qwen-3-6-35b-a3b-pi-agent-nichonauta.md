# WL-342 · Qwen 3.6 35B A3B en Pi-Agent: más inteligente y rápido con MoE

- **Fuente**: [`raw/ia-uso-practico/2026-09-21-qwen-3-6-35b-a3b-en-pi-agent-mas-inteligente-y-rapido-con-moe.md`](../../raw/ia-uso-practico/2026-09-21-qwen-3-6-35b-a3b-en-pi-agent-mas-inteligente-y-rapido-con-moe.md) — vídeo de YouTube `MFf8WPXHESw`
- **Canal**: Nichonauta
- **Publicado**: 2026-09-21 · **Duración**: 13:50
- **Tipo**: demo/tutorial de ejecución local de modelos (llama.cpp + agente de código)
- **Dominio destino sugerido**: ia-uso-practico/ia-local (cruce directo con WL-333)

## Tesis

Frente a los fine-tuning de modelos pequeños «para uso agéntico» (Nemotron 14B, video anterior del canal), conviene un modelo oficial más grande con mezcla de expertos (Qwen 3.6 35B A3B, 3B parámetros activos): los expertos se descargan a RAM/CPU, la velocidad se mantiene (~40 tok/s en una RTX 3060 de 12 GB) y la inteligencia es claramente superior — en el mismo agente (Pi-Agent) y con el mismo prompt, el fine-tuning rival no logró ni el one-shot que este consigue a la primera.

## Puntos clave

- **Setup** [00:36]: llama.cpp server lanzado con presets.ini (flags por modelo + globales), como alternativa al .bat separado para intercambiar modelos en tiempo de ejecución; RTX 3060 12 GB con parte del modelo en GPU y el resto en RAM (~28 GB de RAM en uso durante la prueba).
- **MoE como solución de GPU pequeña** [03:57]: 3B activos frente a 4B densos — «más grande» no significa más lento si los expertos están en CPU; en código la velocidad sube por MTP (multi-token prediction) [02:06, 08:23], y la velocidad apenas cae al crecer el contexto.
- **Capacidad de visión** [05:25]: el mmproj de visión se carga en CPU/RAM (dispositivo «none» en presets.ini) para no robar VRAM al generation de texto, reservándolo para uso esporádico.
- **Prueba práctica** [04:28]: gestor de contraseñas (HTML/CSS/JS/Bootstrap) en Pi-Agent — one-shot correcto a la primera, ~40+ tok/s, sin errores de herramientas; iteración posterior: rediseño «estilo hacker» CRT (el modelo reescribe style.css completo al detectar que el cambio es profundo), corrección de textos grises poco legibles al pedírselo. Matiz honesto: no está al nivel de modelos punteros (menciona «Mistral/Agencia?/Fable» — ASR poco claro), pero es funcional.
- **Conclusión comparativa** [13:05]: mejor un fine-tuning externo pequeño (Nemotron 14B, sin MTP ni mmproj y degradado en lo demás) que la versión oficial MoE con MTP y visión; sugerencia: una herramienta tipo Playwright para auto-prueba del agente mejoraría el resultado a la primera.

## Evaluación

- Demo de 1.ª mano con números medidos en video (tok/s, RAM) y comparación directa mismo-agente/mismo-prompt — continúa la línea comparativa del canal (WL-333 BF16 vs Q4_K_XL mismo modelo). Config reproducible (presets.ini, capturas).
- Cierre con llamada a like/suscripción excluido; sin patrocinio.
- ASR garbiñeado en nombres: Quen→Qwen, Neoorse/Neohorse/Néo Horse→Nemotron, Yama CPP→llama.cpp, mitos/Astra/fable sin resolución fiable (no normalizado a nombre específico), Pen→Pi — normalizados solo en el resumen.

## Cruces

- WL-333 (benchmark Qwen 3.6 35B A3B BF16 vs Q4_K_XL, mismo modelo — contraparte de cuantización), WL-102 (modelos grandes en GPU pequeña), cluster [[hardware-para-ia-local]] y playlist llama.cpp del canal (entidad Nichonauta +1, a actualizar en consolidación).
- Pi-Agent como harness local: cruces con [[agentes-de-codigo]] (WL-340 stack harness).
