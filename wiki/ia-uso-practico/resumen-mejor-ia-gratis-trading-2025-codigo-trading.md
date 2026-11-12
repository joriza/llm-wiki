# Resumen: La Mejor Inteligencia Artificial Gratis para Trading en 2025

- **Tipo**: resumen de fuente (tutorial/reseña de IA aplicada al trading algorítmico).
- **Canal**: Código Trading (página de entidad pendiente de consolidación).
- **Publicado**: 2025-09-25. **Duración**: 19:03.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=aGaD7noI2xQ).
- **Raw**: [raw/ia-uso-practico/2025-09-25-mejor-ia-gratis-trading-2025-codigo-trading.md](../../raw/ia-uso-practico/2025-09-25-mejor-ia-gratis-trading-2025-codigo-trading.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]] (bots con Grok 4).
- **Disposición de la ingesta**: Nueva.

## Tesis central

No todas las IAs sirven para trading: lo que importa no es «cuál es la mejor en teoría, sino cómo la puedes aplicar» para crear estrategias y llevarlas a MetaTrader 5. Para **programar código** la mejor gratuita actual es **Grok 4**, «muy igualada» con **ChatGPT 5** (Grok supera «por un poquito» en codificación según artificialanalysis.ai); **DeepSeek** funciona mejor «para optimizar cálculos» y **Gemini** «puede reforzar el análisis». La clave práctica: **ser flexible y combinarlas** — «yo a veces empiezo trabajando un bot con una y, si por ahí no va muy bien, la otra me salva, me corrige errores y sigo en esa otra».

## Recorrido del vídeo

- **[00:00–02:00] Opciones gratuitas y advertencia**: el video abre y cierra con advertencia de riesgo («el trading conlleva riesgo significativo de pérdida... no constituye asesoramiento financiero»). Candidatas gratuitas: ChatGPT (su versión gratuita «tiene mucho potencial para programar bots»), DeepSeek («muy rápida y precisa»), Gemini gratuita, y en el podio Grok 4 frente a ChatGPT 5.
- **[02:00–04:00] Métricas**: comparativas de artificialanalysis.ai por temática (inteligencia y velocidad: GPT 5; por **codificación: gana Grok 4**), con la evolución histórica de los modelos (Grok 3 llegó a superar a ChatGPT en su momento; ahora están «muy igualados»). Herramientas: Grok gratuito (grok.com) y MetaTrader 5 (metatrader5.com).
- **[04:00–09:08] Demo: crear el bot**: prompt de ejemplo — «crea un asesor experto para Metatrader 5 que defina la tendencia con el ADX y solo opere a favor de tendencia; gatillo de entrada: compra cuando el RSI esté por debajo de 30 y venta por encima de 70; usa el ADX para stop loss y TP con un multiplicador; todos los parámetros editables por separado». Flujo en MetaEditor: nuevo asesor experto → pegar el código generado (138 líneas) → **compilar: 17 errores y 1 warning** → copiar los errores y pedirle «**reescribe** el código corrigiendo estos errores de compilación» (insiste: hay que decir «reescribe», no «corrige» — si no sabés programar no sabrás corregir) → quedan 2 errores → repetir → compila limpio. Grok tardó ~35 segundos razonando; «con ChatGPT fue más rápido al corregir». En MetaTrader: arrastrar el EA al gráfico con parámetros editables (umbral ADX, niveles de sobrecompra/sobreventa del RSI, multiplicador de SL/TP, lotaje, slippage) y tener el trading automático activo.
- **[09:08–15:59] Backtest y optimización**: probador de estrategias sobre EURUSD M15 (2023–2025): «no ha ido mal... ha ganado poco, pero ha ganado». **Escaneo de mercado** por símbolo (EURUSD, USD/CHF, USD/CAD y oro; se queda con EURUSD). **Optimización genética**: umbral ADX de 5 a 200 (salto 5), niveles RSI de 5 a 50 y de 50 a 100, multiplicador SL/TP de 0,5 a 20 (salto 0,5). Mejor combinación: **ADX 25, RSI 50/55, stop 19/14 — 372 operaciones, factor de rentabilidad 1,49**. Luego optimiza solo el **lotaje** (0,01 → 1-2): de 10.000 a ~83.000 con reducción del 14,48%; una segunda pasada llega a «365%, que es una locura, pero el drawdown es razonable» (28%); «yo aquí me sentiría cómodo con un lote como mucho».
- **[15:59–18:53] Robustez y cierre**: faltan pasos: **test de esfuerzo tipo Monte Carlo** (replicando condiciones reales con retrasos aleatorios — el bot lo supera), periodo de **forward** al optimizar y detectar **sobreoptimización**. Mensaje final: «el futuro del trading está en aprovechar todas estas herramientas y tener la flexibilidad» de cambiar de IA cuando una se atasca. Regalo: «super prompt secreto del trading» (guía de 10 pasos para diseñar bots, link en descripción) y promoción de su formación de pago.

## Puntos clave

1. **Ranking práctico 2025**: para codificar, Grok 4 > ChatGPT 5 (muy igualados); DeepSeek para cálculos/optimización; Gemini como refuerzo de análisis [01:02-02:00, 16:59-17:32].
2. **El ciclo real es conversación-compile-fix**: el código generado nunca compila a la primera (17 errores); la técnica es pegar los errores del compilador y pedir «reescribe el código» [05:35-08:39].
3. **Sin optimización no hay evaluación**: backtest base apenas positivo → escaneo de mercado → optimización genética por parámetros → por lotaje [09:31-15:20].
4. **La trampa del sobreajuste**: el propio canal advierte sobre forward testing, Monte Carlo y sobreoptimización; «el beneficio es solo un 3% en 3 años... eso nos permite aumentar el lotaje» con drawdown como límite [14:09-16:27].
5. **Advertencia de riesgo explícita** al inicio y cierre: informativo, no asesoramiento financiero [00:29, 18:31].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («Deepsek» por DeepSeek, «Kuwin», «Grock/Gr 4/cu» por Grok 4, «R6» por RSI, «DX» por ADX, «artificialananalisis» por Artificial Analysis, «condeno» por contenido). Este resumen los normaliza.
- Contenido con interés comercial del canal (formación de pago «código.trading» y prompt de regalo como captación); se registra como tal.
- El rendimiento mostrado proviene de backtests históricos; la propia fuente advierte que «no garantizan resultados en el futuro».
- Fuente 3/57 de la playlist «IA-Recursos»; tercera entidad de canal nueva del lote (Código Trading), aplazada a consolidación.
