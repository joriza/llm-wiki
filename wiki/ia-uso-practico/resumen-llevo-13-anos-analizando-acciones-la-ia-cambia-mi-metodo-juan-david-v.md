# Resumen: Llevo 13 años analizando acciones. La IA acaba de cambiar mi método.

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=cE6AF_kNCRA) (fuente 46/57 del lote IA-Recursos)
- **Canal**: Juan David V — Aprende a invertir
- **Publicado**: 2026-07-29 · Duración 24:31
- **Raw**: `raw/inteligencia-artificial/2026-07-29-llevo-13-anos-analizando-acciones-la-ia-acaba-de-cambiar-mi-metodo.md` (subtítulos automáticos, transcripción literal)

## Idea central

Preguntarle a la IA «cuáles son las mejores acciones para invertir» es la peor forma de usarla. Su alternativa: configurar una **skill** (pequeña aplicación que enseña a la IA paso a paso cómo hacer una tarea) que aplica metodologías de análisis institucional sobre datos actualizados de una fuente confiable, y clasifica cada acción en una de cuatro categorías: **atractivas/deep dive**, **watchlist**, **mixta/neutra** y **descartar**.

## Metodología (los tres criterios)

Al comprar una acción hay que evaluar: empresa de excelente calidad, finanzas saludables y buen precio. El skill se apoya en:

- **Calidad del negocio**: marcos de Joel Greenblatt, MSCI y el fondo cuant AQR (crecimiento sostenido de ventas y utilidades, ROIC, recompra de acciones, etc.).
- **Salud financiera**: modelos Piotroski, Altman Z-Score y Beneish (niveles de deuda, probabilidad de quiebra, probabilidad de manipulación de resultados).
- **Precio**: modelos de flujo de caja libre descontado y ratio P/E, P/B, etc.

## Paso a paso

1. **Descargar e instalar el skill**: hecho para **Claude** (según él, la que mejor funcionó y la única que permite distribuir skills listas para usar); se instala en Settings → Skills una sola vez, con la capacidad de ejecución de código y creación de archivos activada.
2. **Datos de confianza (lo más importante)**: la IA es tan buena como la información que recibe; mandarla a buscar 20 indicadores × 1.000 acciones por internet alucina o quema los límites de tokens. En su lugar: exportar un Excel del screener de **Investing Pro** (plan Pro+, ~$20/mes) con filtros: entidad=company (solo acciones, no ETFs), región=Estados Unidos y Primary Trading Item activado.
   - ¿Por qué solo EE. UU.? Los modelos fueron creados y calibrados con datos del mercado americano; en otras bolsas habría que ajustar parámetros según sus propios autores.
   - Primary Trading Item evita duplicados de empresas extranjeras con ADR que añaden ruido.
3. **Correr el skill**: conversación nueva, adjuntar el Excel + mensaje fijo («Te adjunto mi export del screener de Investing Pro. Usa el skill de Aprende a invertir y corre el screening completo»). Con cuenta paga recomienda Opus; en gratuita funciona Sonnet en esfuerzo medio. En minutos analiza ~1.000 empresas con más de 20 indicadores y genera: un resumen en el chat con el embudo (en su demo: 1.000 → 69 de calidad → 18 a precio atractivo), un **dashboard interactivo** y un Excel con semáforos por indicador, comparación precio vs valor justo y columna de alertas («demasiado barata para ser verdad», «revisar ROIC o margen»).
4. **Siguientes pasos (cualitativa)**: la lista **no** es para comprar a ciegas; es solo la parte cuantitativa. La cualitativa la hace cada uno: noticias y análisis de fuentes confiables, historial de consistencia (criterio n.º 2 de la lista pública de Berkshire Hathaway desde 1982: «poder de generación de utilidades consistente y demostrado»), y detalle del reporte de la empresa en Investing Pro — que puede descargarse y dárselo a Claude para que discuta, contraste y ayude a formular las preguntas correctas sin responderlas por ti.

## Ejemplos y contraejemplos

- **BlackBerry (2011)**: sus mejores ventas históricas llegaron 4 años después del iPhone (ingresos récord ~$20.000 M, +33%; utilidades +47%); los números miraban al pasado, el mercado ya se lo estaba comiendo el iPhone. Cinco años después los ingresos cayeron >90%.
- **Adobe (presente)**: perfecta por los números hasta el punto de disparar la alerta de «demasiado barata»; el temor real es que la IA generativa desactualice su negocio — el mismo patrón BlackBerry en el presente. Eso solo se investiga cualitativamente.
- **Moderna**: pico pandémico atípico, no tendencia; «un año excepcional no es señal de empresa consistente».
- La alerta «revisar ROIC o margen» (rentabilidad actual bajo el promedio de 5 años) es una alerta temprana de pérdida de ventaja competitiva — aunque puede ser solo un mal año o una inversión grande.

## Por qué excluye bancos y utilities

Los métodos generales las medirían mal: en los bancos los depósitos son «deuda» (Altman marcaría a JPMorgan como empresa en riesgo de quiebra), y en servicios públicos el ROIC está limitado por regulación y la deuda alta es normal del sector. Greenblatt hace lo mismo en su fórmula mágica. Excepciones conservadas: Visa, Mastercard y PayPal (plataformas tecnológicas de pagos, no bancos). Lección: «no todas las empresas se pueden medir con la misma regla; los principiantes aplican la misma fórmula a todo, los profesionales primero entienden el negocio y después eligen la regla».

## Cruces y observaciones

- Patrón compartido con otras fuentes del lote: la IA no sustituye el criterio, trabaja sobre datos verificados y el juicio final es humano (comparable con la tesis de la fuente 37/57 de NotebookLM y el SpecJudge de [[joaquin-ruiz]]: anotar el porqué con evidencia).
- Es una de las pocas fuentes del lote que aplica IA a un dominio no-dev (inversión cuantitativa), y la única centrada en **skills como producto distribuible** de conocimiento experto — paralelo directo con las skills de Claude Code que tratan [[agentes-de-codigo]].
- Patrocinio: descuento exclusivo de hasta 25% de Investing Pro + descuento de temporada, repetido insistentemente [12:23-14:37]; el plan necesario es Pro+ («Pro más»), el que él usa desde hace 4 años. Excluido de la síntesis.

## Notas sobre la fuente

Transcripción de subtítulos automáticos (yt-dlp), literal, con fuerte duplicación de frases (artefacto del VTT) que el raw conserva; los nombres garbiñados del original — «Cloud»/«Clot» por Claude, «Sonet» por Sonnet, «Joel Greenb» por Joel Greenblatt, «Potrowski» por Piotroski, «Vanish» por Beneish, «Birchet Hataway» por Berkshire Hathaway, «ROIK/Mode» por ROIC/margen — se normalizan aquí y arriba.
