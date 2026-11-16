# WL-248 — Hice la misma app en Python, Electron y Tauri: la más liviana no es la que todos dicen

- **Fuente original**: `raw/informatica/2026-10-12-hice-la-misma-app-en-python-electron-y-tauri-la-mas-liviana-no-es-la-que-todos-d.md`
- **Video**: [Hice la misma app en Python, Electron y Tauri: la más liviana no es la que todos dicen](https://www.youtube.com/watch?v=vvCCnOivQhE)
- **Canal**: Código Espinoza - Automatiza tu Vida · **Publicado**: 2026-10-11 (metadatos: 2026-10-12) · **Duración**: 04:17 · **Ingesta**: 2026-11-15 (tramo 35)

## Qué trata

Benchmark empírico («dejé de opinar y lo medí») de la misma app — un punto de venta para almacén: catálogo de 12 productos, buscador, carrito con IVA, cobro, resumen del día — implementada tres veces:

- **Versiones**: Python con Tkinter (153 líneas, 1 archivo), Electron y Tauri compartiendo la misma UI HTML/JS (~130 líneas); el host cambia: 14 líneas JS (Electron) vs 7 líneas Rust (Tauri). Mismas dos ventas ejecutadas en las tres (total idéntico: 31.309 pesos) para validar equivalencia funcional.
- **Disco**: Python+PyInstaller 12,3 MB; Electron 125 MB instalador / **296 MB instalada** (trae un Chrome completo dentro — por eso); Tauri 1,4 MB porque usa el WebView del sistema (WebView2/Edge en Windows, WebKit en Linux). **Trampa señalada**: Tauri como AppImage «todo incluido» pesa 80 MB — «lo liviano de Tauri no es magia, el navegador lo instaló otro».
- **RAM** (script propio: 5 aperturas, suma de todos los procesos): Python 28 MB (1 proceso), Electron 221 MB (6 procesos), **Tauri 310 MB — la que más**, contrarrestando el consenso de internet. Honestidad metodológica: medido en Linux sin GPU (dibujo por software); ajustando el modo de dibujo baja a ~190 MB y en Windows el motor es otro — «lo que no cambia: Tauri pesa poco en disco pero en memoria sigue siendo un navegador».
- **Arranque** (hasta cabecera dibujada): Python 0,63 s, Electron 0,43 s, Tauri 1,25 s (castigado por el dibujo software). Lección de empaquetado: el modo single-executable de PyInstaller descomprime a carpeta temporal en cada apertura — entregado como carpeta, Python abre en 0,37 s (**el más rápido de los tres, mismo código**).
- **Recomendación final**: Python/Tkinter para apps internas y puntos de venta en PCs modestas (mínima RAM, cero aprendizaje nuevo); Electron si el equipo es web y la app debe verse idéntica en todo (pagando disco/RAM); Tauri si lo que importa es el instalador mínimo y el cliente usa Windows moderno (ojo: hay que aprender algo de Rust).
- Cierra invitando a reproducir la prueba (código y script en la descripción) y anticipa un segundo benchmark Tkinter vs Flet vs PyQt.

## Observaciones de triage

- Medición de primera mano con metodología declarada (script, 5 aperturas, criterio de quietud) y limitaciones reconocidas explícitamente — buena calidad de triage; los números son específicos de su máquina Linux sin GPU y así lo aclara.
- Título algo clickbait («no es la que todos dicen») pero contenido entrega exactamente esa corrección con datos.
- Cierre con autopromoción suave del benchmark previo (Tkinter/Flet/PyQt) — señalado.

## Cruces (en texto plano, candidatas)

- Benchmark de lenguajes/frameworks: WL-216 (benchmark de lenguajes, VPS), WL-217 (lenguaje Águila), WL-155 (lenguajes esotéricos), WL-246 (patrones de API) — tema «medir antes de opinar» recurrente.
- Multi-plataforma/navegadores embebidos: conecta con la crítica general a Electron ya presente en WL-160 (DevOps panorama).

## Dominio destino sugerido (pendiente de consolidación)

- **general** — programación/benchmarks de desarrollo (micro-video técnico de 4 minutos).


## Ver también

- [[codigo-espinoza]]
- [[frameworks-web-python]]
- [[historia-lenguajes-programacion]]
- [[micro-saas-con-python]]
