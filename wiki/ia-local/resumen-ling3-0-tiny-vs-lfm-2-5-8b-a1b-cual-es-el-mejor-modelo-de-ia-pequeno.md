# Resumen: Ling 3.0 Tiny vs LFM 2.5 8B A1B — ¿cuál es el mejor modelo de IA pequeño?

- **Tipo**: resumen de fuente.
- **Dominio**: `modelos-llm-locales`.
- **Fuente original**: `raw/modelos-llm-locales/2026-08-27-ling3-0-tiny-vs-lfm-2-5-8b-a1b-cual-es-el-mejor-modelo-de-ia-pequeno.md` (video en español; transcripción literal por subtítulos automáticos, «Link»→Ling, «FM»→LFM) — https://www.youtube.com/watch?v=yfo3KCvllCw — Nichonauta, 2026-08-26 (12:57).
- **Nota**: fuente 23/58 del lote ia-local. Actualiza la entidad [[lfm]] con la comparativa directa contra Ling 3.0 Tiny.

## El duelo de MoE chicos (ambos solo texto, ~1B activo)

Setup a igualdad: Ling 3.0 Tiny en **MXFP4 MoE** contra LFM 2.5 8B-A1B en **Unsloth UD-Q4_K_XL**.

| Métrica | Ling 3.0 Tiny | LFM 2.5 8B-A1B |
| --- | --- | --- |
| VRAM total (con 131k/128k contexto) | **5,3 GB** | 6,8 GB |
| Ventana de contexto | 131.072 | 128.000 literal |
| Velocidad | 122 tok/s | 167 tok/s (más rápido) |
| Razonamiento | Extremadamente largo (26k+ de razonamiento, 52k+ generados en el juego) | Largo (13.791 tokens) |

## Los tests y sus resultados

- **QA simple**: Ling correcto a 122 tok/s; LFM más rápido (167) pero **respondió en inglés sin sentido** en una pasada (regenerando, correcto).
- **Trampa de teoría de la mente** (José/pelota/azotea): **ambos fallaron** — respondieron «azotea» cuando José no podía saber dónde estaba la pelota.
- **Landing HTML**: Ling la hizo bien (6.583 tokens, aprovechó hasta la fecha consultada); LFM hizo código «extremadamente corto» sin el cercado correcto — hay que copiarlo a mano.
- **Juego completo en una sola respuesta** (la prueba imposible): LFM produjo errores de sintaxis y «no se ve nada»; Ling generó 52.000+ tokens con razonamiento que se autocorrige sin terminar — «estuvo cerca de conseguirlo a partir de una única instrucción y una única iteración, sin probar, sin corregir», con perspectiva: Sonnet 5 tardó ~30 minutos con uso agéntico completo.
- **El fenómeno del idioma**: el razonamiento gigante en inglés hace que el modelo responda en inglés a pesar del prompt en español.

## El veredicto del canal

«El LFM 2.5 8B-A1B parece un modelo bastante optimizado y bueno para su tamaño… pero **en general, para prácticamente todo, Ling 3.0 Tiny es mejor**: requiere menos memoria, da más calidad y tiene más ventana de contexto — solo genera poquitos menos tokens por segundo, aun así extremadamente rápido.» Consolidado en [[lfm]].

---

**Ver también**: [[lfm]] (entidad-familia, comparativa consolidada) · [[hardware-para-ia-local]].
