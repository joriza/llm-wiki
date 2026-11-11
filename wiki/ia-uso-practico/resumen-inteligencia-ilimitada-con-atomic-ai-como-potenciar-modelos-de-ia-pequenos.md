# Resumen: Inteligencia Ilimitada con Atomic AI — cómo POTENCIAR Modelos de IA Pequeños

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-18-inteligencia-ilimitada-con-atomic-ai-como-potenciar-modelos-de-ia-pequenos.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=tanYJCxZJr0 — Nichonauta, 2026-08-18 (11:02).
- **Nota**: fuente 26/58 del lote ia-local (entrada 54 UNKNOWN del playlist). Es el **deep-dive de instalación y uso** de [[proxy-atomico]]: la fuente 15 cubrió la teoría; esta la pone en práctica con el repositorio real. Cierra el teaser de la fuente 25 («en un siguiente vídeo… nuestro intermediario Atomic Decomposition o Atomic AI»).

## Qué es (según el canal, con más detalle que la fuente 15)

Un **endpoint intermediario entre el cliente y el proveedor de modelo** — «no es un skill, no es un MSP, no es un prompt». Repositorio: `github.com/nichonauta/atomicai`. Se interpone en medio y **transforma cada solicitud individual en múltiples solicitudes reales hacia el proveedor**, invisible para el cliente; compatible con MSPs, skills o lo que quieras. Sirve para cualquier uso, no solo para desarrollo de código. Tesis: cambiar **consumo de VRAM por consumo de procesamiento** — un montón de generación de tokens, multiplicando hasta por 6 la velocidad (tema de los siguientes vídeos, no de esta).

## Instalación paso a paso

1. Clonar el repositorio o bajar el zip (sin necesidad de GitHub).
2. Crear carpeta, descomproimar, abrir CMD.
3. Línea 1: crear **entorno virtual** (dependencias aisladas, no afecta al Python global).
4. Línea 2: activar el entorno virtual (comando distinto en Linux/Mac).
5. Línea 3: instalar todos los requerimientos (todo en la misma carpeta).
6. Copiar `.example` → renombrarlo a `.env` y configurar: **proveedor** (local u online), **URL** (en este caso llama.cpp), **API key** (cualquiera, no tiene una real) y **modelo** (Gemma 4 E2B como adelanto). Parámetro de **profundidad** (en este caso 1).
7. `run.bat` doble clic → ejecutar.
8. Lanzar `llama server` aparte (el canal tiene un .bat preconfigurado para intercambiar modelos).

## Conexión desde el proveedor personalizado (DeepSeek Harness, fuente 25)

Configurar como proveedor **personalizado** con nombre Atomic AI, URL `http://localhost:8000/v1` (puerto del proxy, estilo OpenAI), API key `Atomic AI`, modelo `Gemma 4e2b`. Ajuste simple para empezar a probar (no configuró entrada de imágenes ni ventana de contexto total en este paso).

## El caso de uso real: mejorar un HTML de diapositivas

- **Primera consulta directa** (sin proxy, por llama.cpp): pide diapositivas HTML explicando IA generativa paso a paso. Respuesta sencilla, proporcional al tamaño del modelo.
- **Problema de los modelos pequeños**: «prestan menos atención a detalles finos».
- **Segunda consulta, con Atomic AI** (nueva conversación): «mejora al máximo el archivo HTML con más información, mejor presentada y visualmente más atractiva, paso a paso».
- **El proxy desglosa en subtareas** (fase 1: dividir en lista de subtareas → todas marcadas como atómicas al llegar al nivel de profundidad configurado; fase 2: ejecutar cada tarea por separado, editando lo que haga falta). Con profundidad 1: lista de 2-5 tareas.
- **Resultado**: notablemente mejor — no solo por iterar el modelo, sino por iterar más a fondo con el proxy. «Gastando más tokens, sí, pero generando mejor respuesta».

## El límite de profundidad no es lo que parece

El número que se pone en `.env` es el **máximo** al que puede llegar el árbol, no una garantía: el modelo puede decidir que una tarea ya es atómica y no seguir dividiendo. Con profundidad 1 la mejora ya es visible; con más, mejor aún. **Gotcha del proxy**: cambiar la profundidad requiere **reiniciar el servidor**.

## Próximos vídeos del canal (teaser)

Antes de profundizar al máximo: cómo generar tokens **extremadamente rápido, multiplicando por 6 o más** la generación por segundo, vía Speculative Decoding y especialmente **N-Gram** — porque muchos de los tokens que genera el proxy van a ser los mismos. Conecta directo con [[llama-cpp]] (sección N-gram) y con la iteración automatizada de [[proxy-atomico]].

## Cruces en la wiki

Entidad principal: [[proxy-atomico]] (instalación real, repositorio, caso de uso y gotchas). El cliente que lo usó en esta fuente: [[deepseek-harness]]. El modelo: [[gemma-4]] (E2B). El backend: [[llama-cpp]]. El contexto del Reto 2B: [[desarrollo-con-modelos-locales]]. Canal: [[nichonauta]].