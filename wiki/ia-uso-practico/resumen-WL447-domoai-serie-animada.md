# WL-447 — La IA que Hace Tu SERIE de Dibujos Animados (DomoAI)

- **Fuente original**: `raw/wl/tramo-74/2026-08-31-la-ia-que-hace-tu-serie-de-dibujos-animados-domoai.md` ([Vídeo](https://www.youtube.com/watch?v=hhQaeBhTsgo))
- **Canal**: Javier Amblar: Estrategia · IA · Negocio
- **Publicado**: 2026-08-31 · **Duración**: 23:01
- **Dominio provisional**: ia-uso-practico (herramientas generativas de vídeo — demo práctica)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Demo de primera mano de **DomoAI** para producir una serie animada educativa (profesor que explica la construcción de las pirámides) con continuidad de personajes entre episodios.

## Flujo de trabajo mostrado

1. **Character sheets**: generación del profesor y personajes secundarios (faraón, obrero, capataz) con estilos anime seleccionables; prompts redactados con Claude.
2. **Escenarios** sin personas (la primera pasada «se formó un escándalo»); descarte manual de referencias fuera de época (casas europeas en el Nilo).
3. **Composición previa barata**: integración personaje+escenario con Nano Banana Pro (edición de imágenes) ANTES de generar vídeo — «practica en lo barato, genera lo caro»: regla de ahorro de créditos central del video.
4. **Audio primero**: texto-a-voz con etiquetas de emoción («emocionado, aguantando las lágrimas pero firme») o voz propia escaneada; el audio se inyecta como referencia para no regenerar el vídeo por un error de una letra.
5. **Vídeo con Omni Reference + modelo «Sidans 2.5»** (nombre ASR sin verificar — probablemente SeaArt/Sidan; señalado): hasta ~50 referencias (imágenes, audios, vídeos) en un solo lugar; 17-30 s por escena, 480p para pruebas (250-530 créditos) y upscaling final a 4K.
6. **Modo relax**: generación gratuita en cola (disponible en plan estándar y pro, pero no en todas las funciones — el vídeo largo no lo ofreció); transparencia del autor sobre cuándo gastó créditos.

## Señales de triage

- Demo de primera mano con costes y tiempos concretos (4-5 min por escena, créditos por resolución) — buena calidad práctica; resultados mostrados honestamente (errores de TTS: «cobro» por «cobre»; límite de 35 s que corta el cierre).
- Marco promocional: enlace de afiliado a DomoAI en la descripción («enlace especial») — excluido de la síntesis; CTAs excluidos.
- Nombre del modelo de vídeo por ASR sin verificación — señalado.

## Cruces

- Cluster herramientas IA generativas: WL-349/350 (demos de producto IA), WL-274/278 (routing), WL-350 (skills/MCP). Entidad candidata: Javier Amblar ya existe ([[...]] según consolidación previa — texto plano por umbral si <2).
- Tema «series educativas IA para niños en YouTube» como modelo de negocio — conecta con [[brecha-junior-ia]] solo marginalmente.

## Veredicto de triage

Demo útil y concreta con reglas de ahorro aplicables; conservar.
