# TMP01-016 — Cómo separar instrumentos de una canción con Audacity (gratis)

- **Fuente**: [Video en YouTube](https://www.youtube.com/watch?v=6Ta3l8BgBKo) — canal **El Rincón de Cabra**, publicado 07/02/2025, 5:26, ES (subtítulos automáticos; transcripción descargada para la ingesta pero NO archivada en `raw/` por límite de superficies autorizadas de este tramo — citar la URL como fuente original).
- **Dominio**: `ia-uso-practico/` — tutorial práctico de herramienta con IA (separación de pistas de audio), 1.ª mano con demo en pantalla.

## Qué enseña

Separar los instrumentos de una canción (voz, batería, bajo, otros) gratis, con **Audacity + plugin de IA**:

1. Instalar Audacity (audacityteam.org; Windows/macOS/Linux).
2. Instalar el plugin gratuito **Inteligencia Artificial de Audacity basada en OpenVINO** (audacityteam.org/download/openvino; versión completa).
3. Habilitarlo en Edición → Preferencias → **Módulos** → `mod-openvino`, aceptar y reiniciar Audacity.
4. Con un tema cargado, ejecutar la función de separación: el plugin genera pistas separadas — tema principal, **drums** (ASR: «drooms»), **bass**, **other** y **voces** («bocas» en ASR).
5. Escucha por pista con Solo; para conservarlas: seleccionar y **Exportar audio** (WAV/MP3) de lo marcado como solo.

## Señalado

- Tutorial directo con demo y resultado audible (verbosidad didáctica; cta de suscripción excluida del resumen).
- Nombres de producto con errores de ASR normalizados solo aquí (OpenVINO, drums/bass/vocals).
- El plugin (Music Separation de OpenVINO) también trae otras funciones (generación de música/texto a voz, etc.) que el video solo menciona de pasada.

## Cruces

- Hilo de ia-uso-practico: IA embebida en herramientas de escritorio gratuitas (par con TMP01-013: IA que reemplaza trabajo manual tedioso); conectable con ia-media-generativa si se acumulan fuentes de audio/música con IA.
- Tema técnico afín: inferencia local en la PC del usuario (OpenVINO corre en local) — [[inferencia-local]].
