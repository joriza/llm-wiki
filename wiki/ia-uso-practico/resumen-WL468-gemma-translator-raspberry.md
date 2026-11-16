# WL-468 — Build the Gemma Translator: No Internet Required

- **Fuente original**: `raw/wl/tramo-77/2026-08-23-build-the-gemma-translator-no-internet-required.md` ([Vídeo](https://www.youtube.com/watch?v=tyELRiuEG40))
- **Canal**: DroneBot Workshop
- **Publicado**: 2026-08-23 · **Duración**: 27:02
- **Dominio provisional**: ia-uso-practico/ia-local (IA local en hardware de borde — build de dispositivo)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Construcción paso a paso del «Gemma Translator» de Google (proyecto abierto, creado con Antigravity): un **traductor de voz autónomo sin internet** sobre Raspberry Pi 5 (8 GB) + micrófono USB + altavoz USB.

## Arquitectura (3 componentes)

1. **Voz→texto: Moonshine** (Useful Sensors), modelos por idioma diseñados para borde; corre en CPU (no usa GPU ni aceleradores).
2. **Traducción: Gemma 4 E2B** (2B efectivos, ~2,6 GB) vía servidor ligero «RTLM» (ASR — probablemente llama.cpp/LM Studio); el LLM de propósito general actúa como traductor mediante un prompt JSON estricto («no devuelvas nada más»).
3. **Texto→voz: Moonshine Voice** (TTS neuronal, grafema→fonema por idioma).
- Front-end React (UI kiosco en Chromium); captura manteniendo tecla Z → HTTP → transcripción → traducción → síntesis → reproducción.

## Puntos prácticos del build

- Requisitos: Pi 5 8 GB (precio «ridículo» actualmente — advertencia al comprador), microSD ≥32 GB; internet solo para instalar y para la **primera traducción de cada idioma** (descarga de modelos).
- Inconvenientes documentados: bug en setup.sh (hashes que no se devuelven — corregido a mano, puede estar parcheado), Wayland→X11 obligatorio, UI formateada para pantalla 480×320 (escalado por factor 3), navegador arranca antes que el servidor (error transitorio al boot).
- Latencia asumida como coste del dispositivo autónomo.
- **Ampliación de idiomas**: los 6 nativos (en/es/ja/zh/ko/ar) se amplían a 12 vía Moonshine; cuello de botella: solo vietnamita y ucraniano son entrada+salida, el resto solo salida; editar menú (app.jsx) y matrices TTS/STT en server.py + rebuild.
- Demo final sin Ethernet: EN→ES («Welcome to the workshop» → «Bienvenidos al taller») y EN→FR tras añadir francés.

## Señales de triage

- Build de primera mano completo con errores documentados — calidad alta de tutorial; ASR «RTLM»/«Moonshine» sin verificación externa (nombres de producto — señalados).
- CTAs (hoja de trucos, boletín, foro, suscripción) excluidos; enlaces de componentes (micrófono/altavoz) como afiliado probable — excluidos.

## Cruces

- [[inferencia-local]] (Gemma 4 E2B en Pi 5 — par con la batería Nichonauta de Gemma 4 en llama.cpp), [[gemma-4]] (+1), [[kit-usb-portable]] (dispositivo autónomo sin nube), WL-400 (ESP32+Whisper+DeepSeek — mismo patrón voz→LLM→voz), [[routing-por-coste]] marginal.
- Entidad de canal candidata: DroneBot Workshop (1.ª fuente, canal de electrónica clásico).

## Veredicto de triage

Tutorial excelente de IA local en borde; conservar.
