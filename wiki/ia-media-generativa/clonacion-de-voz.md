# Clonación de voz

- **Tipo**: página de concepto.
- **Dominio**: `ia-media-generativa/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 2+ resúmenes de la playlist «IA-Recursos».
- **Ver también**: [[generacion-local-de-imagenes]] (misma escalera de acceso gratuito) · [[ia-china]] (MiniMax) · [[alejavi-rivera]].

## El concepto

Replicar una voz humana desde muestras de audio, con las mismas tres vías de acceso del resto del corpus: **local e ilimitado** (open source), **nube gratuita** y **creativa** (canción). El tema incluye dos invariables que las fuentes repiten: la calidad del clon es calidad del input, y el consentimiento es parte del flujo, no un añadido.

## Los tres métodos (fuente guía)

1. **VoiceBox — local y open source**: plataforma «clonar, dictar y crear» (macOS/Windows/Linux, instalación a un clic) con modelos de TTS y transcripción; clonación desde micrófono, audios subidos o sonido del sistema con transcripción automática. Desplegable en VPS con Docker (42/57).
2. **Nube**: **MiniMax Audio** (pelea con ElevenLabs; clonaciones ilimitadas pero solo 3 guardadas; subir 5 audios limpios grabados en local porque la compresión de la plataforma degrada) y **MyVocal.AI** (pide 25 muestras de escenarios; TTS con emociones; truco: el modelo anterior genera bien en español dejando el selector en inglés) (42/57).
3. **Suno AI — canción**: covers gratuitos subiendo un clip de 7 s con `remix → covers` (misma voz y entonación); la clonación para cantar requiere plan (~8 USD/mes), muestras **cantadas** (la voz cambia al cantar) y verificación de identidad por lectura de frase (42/57).

## Invariables de calidad y ética

- **La calidad del clon es calidad del input**: micrófono bueno + **Adobe Enhance Speech v2** (gratis, quita ruido/eco como si fuera de estudio) + varios ejemplos (3 en vez de 1 mejora mucho) (42/57).
- **Consentimiento**: solo clonar la propia voz o con permiso explícito — «una voz también es confianza… úsalo con cabeza, con permiso, con criterio y con propósito» (42/57); Suno verifica identidad por las mismas razones legales.

## Cruces con el resto del corpus

- **MiniMax** (IA china) ofrece Voice Design (describir una voz → 3 generadas) y guardado de voces clonadas gratis (14/57).
- La voz sintética como insumo de producción: ElevenLabs como etapa de voz en las fábricas de vídeo de Claude + Google Flow (43/57) y del skill de Claude Code + Remotion (37/57); voz natural local (Whisper) como alternativa barata en agentes personales (22/57).

## Tesis transversal

La clonación de voz siguió en 2026 el mismo patrón que la generación de imágenes: de servicio premium de suscripción a **capacidad local gratuita** con escalera de acceso — con la diferencia de que aquí la ética del consentimiento es parte del propio flujo de trabajo (verificación de identidad, muestras del propio usuario).

## Fuentes de este concepto

- [[resumen-como-clonar-la-voz-en-segundos-1puzfg1cdbu-alejavi-rivera]] (42/57, fuente guía) · [[resumen-ia-china-reventar-todo-alejavi-rivera]] (14/57, MiniMax) · [[resumen-claude-google-flow-plan-gratuito-valeria-londono]] (43/57, voz como etapa de producción) · [[resumen-que-es-clawdbot-futuro-asistentes-virtuales-dot-csv-lab]] (22/57, voz local en agentes).
