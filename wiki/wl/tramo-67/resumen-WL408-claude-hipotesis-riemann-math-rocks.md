# WL-408 — CLAUDE rompe la Hipótesis de RIEMANN

- **Fuente**: `raw/wl/tramo-67/2026-09-03-claude-rompe-la-hipotesis-de-riemann-lo-mas-dificil-en-matematica.md` (`myRrOq1G_fg`, https://www.youtube.com/watch?v=myRrOq1G_fg)
- **Canal**: Math Rocks (profe John; 1.ª fuente WL)
- **Publicado**: 2026-09-03 · **Duración**: 21:49 · **Idioma**: es (subtítulos automáticos)
- **Dominio previsto**: general (divulgación matemática) — videoensayo divulgativo con lectura de preprint
- **Tramo**: 67 (relevo 7 de 12 del pedido L34)

## Qué trata

Divulgación del resultado de septiembre 2026: una nueva demostración **incondicional** de que más del **67,25 %** de los ceros no triviales de la función zeta son simples y están sobre la línea crítica (y ≥83,62 % son distintos) — récord previo ~40,75 % (Conrey y posteriores). La hipótesis de Riemann (100 %) sigue abierta.

- **Contexto matemático (con «bolitas y palitos»)**: problema de Basilea y Euler (1735), zeta como producto sobre primos (FTA como identidad analítica), extensión de Riemann 1859 al plano complejo con continuación analítica y ecuación funcional, ceros triviales vs no triviales, por qué la posición de los ceros controla el error del conteo de primos (fórmulas explícitas: cada cero aporta una «onda»). Escalones históricos: Hardy 1914 (infinitos ceros en la línea), Selberg 1942 (proporción positiva), Levinson 1974 (>1/3), Conrey 1989 (>2/5).
- **La noticia**: preprint de **Youness Lamzouri** en arXiv (2-sep-2026) — «Una nueva demostración de que más de 2/3 de los ceros son simples y están en la línea crítica». Cuatro mensajes del abstract: ≥67,25 % simples en la línea, ≥83,62 % distintos, resultado incondicional, y **no es la prueba original de la IA**: la prueba original la descubrió autónomamente un sistema interno de investigación de **Claude** (verificada por Pólya/Furman — ASR distorsiona los nombres), y Lamzouri ofrece una ruta nueva y conceptualmente más simple: reemplaza la maquinaria matricial (forma hermítica de Weil, desigualdad rango-traza) por una **desigualdad en un espacio de Hilbert** — contabilidad de energía (Gram-Schmidt, Bessel, Parseval) donde ningún término individual necesita ser positivo, solo la suma cuadrática total. Motor: versión incondicional del teorema de correlación de pares de Montgomery (Balasubramanian–Conrey–Soundararajan, ASR distorsionado); corrección con función de prueba escalada por 4 log T; constante de Montgomery-Taylor ≈1,327499 → 2−c = 0,6725.
- **Verificación formal**: el apéndice añade una segunda capa de IA que genera **certificados formales en Lean** para la proposición clave y el teorema (la literatura previa entra como hipótesis, no reprocesada desde axiomas).
- **Lectura del video**: «no resolvió la hipótesis de Riemann» — separa descubrimiento (IA), verificación humana, simplificación matemática y formulación mecánica; el resultado cambia el límite de lo demostrable incondicionalmente y quizá la forma de explorar matemática profunda humano+máquina. Barrera conceptual señalada del artículo: no existe núcleo entero no constante con parte real positiva en todo el plano — buscar «mejores núcleos» no elimina el problema; la idea nueva es recuperar positividad a nivel global.

## Señales de calidad

- Divulgación seria con lectura real del preprint en pantalla; el video cita el arXiv y enlaza el artículo en descripción (verificable). El propio video aclara: preprint sin peer-review completo aún.
- ASR fuerte: «Cloud» = Claude, «Lam Suri/Lamsuri» = Lamzouri, «Leven y Pol y Ralph Furman», «Baljut/Golston/Surijaya/Turnash Butternut» distorsionados — normalizados solo aquí (nombres verificados con cautela).
- Promoción de membresías/cursos del canal (álgebra lineal, cálculo, variable compleja) intercalada — excluida de la síntesis. Registro «Math Fucking Rocks» del ASR — artefacto de audio, no contenido.

## Cruces (consolidación diferida, L12)

- Tema IA-matemática: contraste con las críticas a overclaiming de IA (WL-383/402) — aquí el reclamo está bien acotado y el propio video desmonta el titular clickbait.
- [[ia-critica-y-fronteras]] candidata por la frontera descubrimiento-IA/verificación-humana/verificación-formal (Lean) — patrón también presente en agentes de código.
- Math Rocks candidato a entidad (1.ª fuente); cruce con divulgación científica del acervo general.
