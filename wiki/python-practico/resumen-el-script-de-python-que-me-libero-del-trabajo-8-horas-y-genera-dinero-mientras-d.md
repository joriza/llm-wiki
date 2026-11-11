# Resumen: El Script de Python que Me Liberó del Trabajo 8 Horas (y genera dinero mientras duermes)

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2026-01-01-el-script-de-python-que-me-libero-del-trabajo-8-horas-y-genera-dinero-mientras-d.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «Pasapi/Fasapi»→FastAPI, «Pllywright»→Playwright, «Sketle»→Schedule) — https://www.youtube.com/watch?v=Clx5JvcJfYY — Código Espinoza - Automatiza tu Vida, 2026-01-01 (11:49).
- **Nota**: fuente 2/7 del lote python-practico. Los montos de facturación citados (Upwork, Patreon, afiliados de hosting) son afirmaciones del canal no verificadas; el Patreon y los enlaces de afiliado quedan excluidos de la síntesis.

## La tesis: automatizar tareas aburridas como negocio

Según el canal, los freelancers de Python que más facturan no construyen productos complejos: **automatizan tareas que las empresas odian** (limpiar planillas, scrapear sitios, generar reportes, correos masivos), a tarifas de 20-80 USD/hora. La tesis comercial del cierre: «no vendas tu tiempo, vende sistemas» — un script escrito una vez genera ingresos recurrentes (sus rangos: reportes automáticos 150-2000 USD/mes por cliente; scraping como servicio 100-300; limpieza de datos 20-50 por proyecto). Las cifras son del propio canal, no verificadas.

## El pipeline de las 6 librerías

1. **[[polars|Polars]] — limpiar y procesar datos**: reemplazo de Pandas cuando el archivo supera ~100.000 filas (el canal: hasta 10× más rápido según benchmarks 2024). Demostración completa: leer CSV/Excel → renombrar columnas con guiones bajos → filtrar montos > 0 → transformar (`str.to_date`, `str.to_lowercase`) → `drop_nulls` → agregaciones (`group_by` + `sum`, `n_unique` con alias) → exportar CSV limpio [01:39-02:30].
2. **[[playwright|Playwright]] — extraer de sitios difíciles**: reemplaza a Selenium (más rápido y estable, mismo código para Chrome/Firefox/Safari). Demostración: login automático (llenar formularios + click), esperar selectores que tardan en cargar, extraer datos con `page.evaluate` y cerrar el navegador [02:57-04:13]. Caso de negocio citado: monitoreo diario de precios de proveedores con aviso si cambian >5 %.
3. **[[fastapi|FastAPI]] — convertir el script en servicio**: exponer el script como API web en ~10 líneas — endpoint POST que recibe un archivo, lo limpia con Polars y devuelve JSON (estado, filas originales/limpias, columnas) + endpoint de health-check. Integrable con Make/n8n para clientes sin Python. El canal cita el crecimiento de GitHub: 15.000 estrellas (2020) → 70.000 (2025) [04:43-06:19].
4. **Schedule — ejecutar sin intervención**: `schedule.every().day.at("07:00").do(tarea)`, variantes por día de semana e intervalos (`every(4).hours`), con loop infinito `run_pending()` + `sleep(60)` [06:46-08:04]. Sobre un VPS de ~5 USD/mes (Railway/Render/DigitalOcean citados) queda la «automatización 24/7».
5-6. **python-docx + ReportLab — reportes profesionales**: documentos Word con títulos, párrafos con f-strings, tablas (encabezados + llenado por celdas); ReportLab para PDFs con gráficos y logos. Caso citado: despachos contables pagando 200-400 USD/mes por generadores automáticos de reportes [08:04-09:40].

## La cadena completa

`Polars` (limpia) → `Playwright` (extrae) → `FastAPI` (expone) → `Schedule` (ejecuta solo) → `python-docx`/`ReportLab` (entrega documentos) — el concepto completo está consolidado en [[automatizacion-con-python]]. Consejos del cierre: los primeros clientes salen de grupos de LinkedIn y comunidades de pequeños negocios; no vender «programación» sino «eliminar 3 horas diarias del equipo».
