# WL-464 — Frigate + Home Assistant: cámaras locales sin nubes y suscripciones

- **Fuente original**: `raw/wl/tramo-76/2026-06-25-frigate-home-assistant-camaras-locales-sin-nubes-y-suscripciones.md` ([Vídeo](https://www.youtube.com/watch?v=n2IySV8mBKQ))
- **Canal**: Home Assistant y Domótica Fácil
- **Publicado**: 2026-06-25 · **Duración**: 17:13
- **Dominio provisional**: electronica-practica (domótica/videovigilancia local — guía técnica)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Guía de compra e integración de cámaras de seguridad **locales y sin suscripciones**: cinco pilares de compra, trampas del mercado y el stack **RTSP/ONVIF + PoE + Frigate + Home Assistant**.

## Los cinco pilares

1. **RTSP + ONVIF obligatorios**: RTSP como «esperanto del vídeo» (visualización local sin nube); ONVIF para eventos (persona/coche/mapache) y automatizaciones locales. Sin ambos → descartada.
2. **Cable (PoE) antes que WiFi**: una sola cable de red lleva datos y corriente; WiFi saturado (críos + consola + robot) corta justo en el momento crítico; WiFi aceptable en alquiler o cámaras secundarias.
3. **El cuento del 4K**: resolución alta con sensor pequeño = noche mala y saturación de red/disco; «1080p/2K con buen sensor» es suficiente — el sensor manda sobre los megapíxeles.
4. **IA en tres niveles**: nube (lenta, suscripción, privacidad — Reolink/Arlo citados como ejemplo de nube), integrada en cámara (mínimo aceptable), y **Frigate** (NVR software libre en HA/mini-PC: distingue personas/animales, matrículas, caras, 100 % local — da IA incluso a cámaras «tontas»; jugada ganadora: IA integrada como primer filtro + Frigate como analista).
5. **Grabación local**: nube del fabricante (descartada) < microSD (el ladrón se lleva la prueba) < NVR dedicado (Reolink kits) < **Frigate** (control total); más SAI/UPS para sobrevivir el corte de luz «truco más viejo del manual del ladrón».

## Recursos

- **CCTV Database** (cctv-database.com): proyecto abierto con 1.300+ cámaras de ~70 marcas filtrables por los pilares; 1.000+ con archivo de configuración listo para Frigate.
- Guía de 20 cámaras del autor (lead magnet hacia programarfacil.com — promoción excluida de la síntesis; curso de HA también promocionado).

## Señales de triage

- Guía técnica de primera mano, consejo sólido y estándares correctos (RTSP/ONVIF/PoE/Frigate); estilo humorístico-vulgar con analogías; sin datos dudosos — buena calidad para su género.
- Lead magnets (herramienta «secreta», guía) dirigidos a captación de email — marco comercial declarado, excluido del contenido técnico.
- ASR: subtítulos manuales (menos garbiñeos); nombres «POI/POI» = PoE, «FreeGate» = Frigate, «Rines» = Ring, «Reolim» = Reolink — normalizados.

## Cruces

- Cluster domótica/self-hosting: [[inferencia-local]] afín (IA local Frigate ↔ LLMs locales), [[kit-usb-portable]] (filosofía sin nube), WL-147 (seguridad de montajes locales), [[obsidian-memoria-agentes]] marginal.
- Frigate como caso de IA local especializada: cruza con [[routing-por-coste]] (detector dedicado + LLM) — tema del canal recurrente.

## Veredicto de triage

Guía práctica sólida y aplicable; conservar.


## Ver también

- [[inferencia-local]]
- [[obsidian-memoria-agentes]]
- [[routing-por-coste]]
