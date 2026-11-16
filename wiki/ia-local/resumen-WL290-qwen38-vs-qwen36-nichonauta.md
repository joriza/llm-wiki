# WL-290 — «Qwen 3.8 me decepcionó ⚠️ La VERDAD tras la comparación con Qwen 3.6» (Nichonauta)

- **Fuente original**: `raw/ia-local/2026-09-24-qwen-3-8-me-decepciono-la-verdad-tras-la-comparacion-con-qwen-3-6.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=Zx9hXpCemZQ · Canal Nichonauta · Publicado 2026-09-24 · 09:03 · Subtítulos automáticos es
- **Tramo**: 42, fuente útil 5/5 (posición 102 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): ia-uso-practico/ia-local (cruces [[inferencia-local]], WL-283/WL-288 mismo canal)

## Qué es

Comparativa empírica local (9 min, Nichonauta) de Qwen 3.6 35B-A3B a precisión completa (BF16) contra Qwen 3.8 Flash Next con cuantización «casi sin pérdida», en ~10 tareas de generación (SVG animados, landing page, reloj HTML con hora real, simulador de fluidos, calculadora, explicación simple).

## Puntos clave

- **Setup declarado**: el 3.8 consume 8,4 GB de VRAM (más el resto del sistema); el 3.6 sin cuantizar solo 8,5 GB — por tamaño activo menor, «aunque no esté cuantizado, consume menos»; cuantizable a Q8 sin diferencia apreciable más que de tamaño.
- **Velocidad**: el 3.6 generó ~2.600 tokens a ~14 tok/s con MTP activo; el 3.8 ~3.077 tokens a ~9 tok/s — su cuantización no incluye MTP; sin MTP el autor estima velocidad similar.
- **Resultados**: en las pruebas, el 3.8 (más nuevo, más grande, más tokens de razonamiento incluso en esfuerzo bajo) no superó al 3.6; varios fallos del 3.8 (pelota que no rebota, flor sin crecer, simulador de fluidos con gravedad al revés y lento).
- **Veredicto matizado**: «el modelo 3.8 claramente es superior, pero no con esfuerzo de razonamiento bajo» — el problema principal no es la cuantización sino el esfuerzo bajo; exige esfuerzo extra-alto, lo que lo hace mucho más lento. Entre 3.6 a 4 bits y a 16 bits casi no hay diferencia («casi prefería el 3.6 a 4 bits»). «El modelo no es malo, la cuantización tampoco, pero para funcionar bien requiere mucho razonamiento».
- Tesis útil para inferencia local: más parámetros + más cadena de razonamiento ≠ mejores respuestas si el presupuesto de esfuerzo es bajo; el coste real está en el esfuerzo de razonamiento, no solo en el tamaño.

## Salvedades de triage

- Pruebas de una sola máquina, sin repetición ni rúbrica objetiva (juicio visual del autor); tokens/s dependen del hardware — declarado por el propio autor; nombres de variantes (GSQ-Arco, Flash Next) del ecosistema que el canal ya trató en WL-253/254.

## Cruces sugeridos

- Cluster [[inferencia-local]] (WL-239/240/253/254): mismo canal que WL-253 (Strata/Flash Next) y WL-254 (presupuesto de caché); WL-288 (regresión GPT-6 — misma percepción con metodología menor; ambas en [[percepcion-de-regresion-de-modelos]]); WL-283 (compilación llama.cpp, mismo canal).
