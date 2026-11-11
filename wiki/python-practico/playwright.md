# Playwright

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 2/7 del lote python-practico).
- **Fuentes**: [[resumen-el-script-de-python-que-me-libero-del-trabajo-8-horas-y-genera-dinero-mientras-d]].

**Playwright** es una librería de automatización de navegadores que, según la fuente, «dejó obsoleto» a Selenium para scraping difícil: más rápida y estable, y **multi-navegador con el mismo código** (Chromium/Chrome, Firefox, WebKit/Safari).

Escenarios que resuelve (donde `requests` no alcanza): contenido cargado con JavaScript, sitios con login, detección de bots.

Patrón de uso demostrado (extraer precios de un portal con autenticación):

```python
from playwright.sync_api import sync_playwright

with sync_playwright() as p:
    browser = p.chromium.launch()
    page = browser.new_page()
    page.goto("https://portal.proveedor.com/login")
    page.fill("#usuario", user); page.fill("#clave", password)
    page.click("#ingresar")
    page.wait_for_selector("table#precios")          # esperar carga tardía
    datos = page.evaluate("() => [...document.querySelectorAll('tr')].map(...)")
    browser.close()
```

Complementos del caso de negocio: correrlo diariamente vía [[automatizacion-con-python|Schedule]] y avisar por correo si un precio cambia >5 %. En el pipeline, Playwright es el paso de **extracción**.
