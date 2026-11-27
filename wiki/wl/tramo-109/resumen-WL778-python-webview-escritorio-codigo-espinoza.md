# WL-778 — Python + Web = La mejor app de escritorio que crearás

- **Video**: https://www.youtube.com/watch?v=PNPRbeXtFEc
- **Canal**: Código Espinoza - Automatiza tu Vida (×1)
- **Publicado**: 2026-11-25 · **Duración**: 08:12 · **Raw**: `raw/wl/tramo-109/2026-11-26-python-web-la-mejor-app-de-escritorio-que-crearas.md`

## Síntesis

Microtutorial (8:12) de empalomamiento eficiente: convertir una página HTML existente en app de escritorio con **PyWebView** (6.200 estrellas en GitHub, licencia BSD 3, versión demo 6.2.1) en exactamente 10 líneas de Python, sin Electron/Node ni reescribir nada. Demo: cotizador de ferretería (neto + IVA 19 % + total) que guarda en CSV.

- **El mecanismo**: el navegador no escribe directo en el disco (sandbox) — «hace bien». PyWebView abre la página en una ventana nativa e inyecta `window.pywebview`; el JavaScript detecta ese objeto para saber si corre en navegador (mensaje rojo propio, no del navegador) o dentro de la app, y llama funciones de Python (`js_api`) como si fueran JS con `await`, sin servidor ni rutas ni JSON manual. Motores: QtWebEngine en Linux, WebView2 (Edge) en Windows.
- **Trampas declaradas por el propio autor**: modo `"a"` duplica filas al guardar dos veces (debería usar `"w"` o número de cotización); la clase API expone a la página TODO lo público — si cargas contenido de terceros, les regalas el disco (convención `_prefijo` para funciones privadas); el puente no está listo al instante de cargar (esperar el evento `pywebviewready`); cada llamada corre en un hilo aparte — el orden ante escrituras concurrentes lo pone el desarrollador.
- Cierre: comparación medida de peso contra Electron y Tauri con la misma app — queda en otro video (par anticipado).

## Evaluación

- Microlección técnica correcta y honesta: cuenta las 10 líneas una a una, distingue lo que puede el navegador de lo que no, y **declara los defectos de su propio código** — el mejor signo de calidad del relevo. Cruza directamente con WL-747? No — con la comparativa Electron/Tauri/PyWebView ya medida por el mismo autor (par anunciado) y con el género «misma app en 3 stacks» del tramo 100 (cf. resumen existente de Electron vs. Tauri vs. Python en raw/general si procede — se deja para consolidación).
- Garbiñeos ASR normalizados solo aquí: «empalomamiento» = empalme/pegado (contexto), «PyWeb View» = PyWebView, «Webview 2» = WebView2, «el modo A/W» correctos.

## Cableado

- Sin páginas existentes de PyWebView; cruza con la familia de resúmenes de packaging Python (PyInstaller/Nuitka/Briefcase en raw/general) y con WL-747? — no; la comparativa de stacks (Electron/Tauri) es candidata para consolidación junto a la parte 2 anunciada. Cableado honesto vacío.

**Sin patrocinios.**
