# Automatización con Python: el pipeline de 6 piezas

- **Tipo**: página de concepto.
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 2/7 del lote python-practico).
- **Fuentes**: [[resumen-el-script-de-python-que-me-libero-del-trabajo-8-horas-y-genera-dinero-mientras-d]].

## El concepto

Automatizar tareas repetitivas de oficina — limpiar planillas, extraer datos de sitios, generar reportes, enviar correos — como **producto**, no como favor: un script se escribe una vez y se vende como sistema recurrente (rangos del canal: reportes automáticos 150-2000 USD/mes por cliente, scraping 100-300, limpieza bajo demanda). El consejo comercial: no vender «programación» sino «elimino 3 horas diarias de tu equipo»; primeros clientes en grupos de LinkedIn y comunidades de pequeños negocios. Las cifras de ingresos son del canal, no verificadas.

## El pipeline: cinco pasos encadenados

1. **Extraer** → [[playwright]]: navegación real con login, espera de selectores y `page.evaluate` para sitios con JavaScript.
2. **Procesar** → [[polars]]: lectura CSV/Excel, limpieza (rename, filtros, `drop_nulls`, transformaciones de texto/fecha) y agregaciones (`group_by`, `sum`, `n_unique`).
3. **Exponer** → [[fastapi]]: el script como API REST (endpoints de proceso + health-check, respuestas JSON), integrable con Make/n8n para clientes sin Python.
4. **Programar** → Schedule: `schedule.every().day.at("07:00").do(tarea)` + loop infinito con `run_pending()` y `sleep(60)` sobre un VPS de ~5 USD/mes — «un empleado que nunca duerre».
5. **Entregar** → python-docx (Word: títulos, párrafos con f-strings, tablas por celda) y ReportLab (PDFs con gráficos y logos).

## Las reglas de oro del caso

- Pandas no siempre alcanza: con >100.000 filas, migrar el procesamiento a Polars.
- Selenium quedó superado por Playwright para scraping con login/JS.
- «Un API que solo responde cuando lo llamas no es verdadera automatización»: sin el paso de programación (Schedule), falta el producto.
- Los clientes pagan por documentos entregables, no por CSVs crudos.

## Estado en la wiki

Schedule, python-docx y ReportLab aparecen por ahora solo en esta página y el resumen; si reaparecen en fuentes posteriores del dominio (las fuentes 3-5 son sobre librerías), se les creará página de entidad propia.
