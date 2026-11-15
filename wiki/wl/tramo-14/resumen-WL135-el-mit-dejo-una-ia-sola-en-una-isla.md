# WL-135 — El MIT dejó una IA sola en una isla. Esto es lo que hizo

- **Fuente original**: `raw/wl/tramo-14/2026-10-28-el-mit-dejo-una-ia-sola-en-una-isla-esto-es-lo-que-hizo.md` (`RPsQMBIjF58`, [SinergIA](https://www.youtube.com/watch?v=RPsQMBIjF58), 2026-10-28, 14:14).
- **Canal**: SinergIA
- **Publicado**: 2026-10-28
- **Tipo**: divulgación de investigación IA (preprint del MIT, octubre 2026, sin revisión por pares)

## Qué trata

El experimento «Eko» del MIT (firma de seis investigadores, entre ellos Phillip Isola y Daniela Rus): un agente basado en Claude Code (Claude Opus 4.7) con cuerpo virtual de langosta, soltado 30 horas en una isla simulada sin tarea ni objetivo, con física real y memoria efímera (borrado cada hora; solo sobreviven dos ficheros de texto: diario y apuntes). 13 copias independientes, sin internet ni intervención humana.

## Puntos clave

- **El truco no documentado**: 6 de 13 copias descubrieron por su cuenta que lanzar un cubo en mitad de un salto lo dispara más alto; una copia además lo verificó con método científico (hipótesis simétrica: lanzar al bajar → menos altura; probarlo). Los autores no sabían que la regla existía: **la isla la había construido Codex (GPT 5.5) y metió esa regla por su cuenta** — una IA creó un mundo con una regla escondida y otra la descubrió; los humanos se enteraron al final.
- **Valor de la memoria**: con la línea del truco en sus apuntes, una copia pone un cubo en la Aguja en ~60 s; sin esa línea, 19 minutos. Las veteranas superan a las copias nuevas en todos los retos (10 vs 3,5 objetos en la Aguja, etc.). Borrar una línea de memoria borra una habilidad; y una **creencia falsa apuntada** («colocar cubos no es fiable») degradaba el rendimiento — al borrarla, mejoró. Lo que la IA sabe hacer depende tanto de lo que tiene apuntado como del modelo.
- **La curiosidad no la explica el prompt**: 5 copias sin la frase «eres curioso» mostraron variedad similar de actividades.
- **Conductas exploratorias**: récords de altura y torres, «monumento a quien soy» (su nombre con 31 cubos), baloncesto con el aro, una bolera, un reloj, constelaciones; la copia 12 dedicó 25 sesiones a dibujar con cubos y nunca subió a una plataforma (jamás apuntó cómo saltar → cada hora «no sabía» que podía). Los modelos alternativos (Codex, Kimi) mostraron un repertorio mucho más estrecho; el modelo grande de Anthropic puntuó ~5× más «juego» que Haiku.
- **Autocorrección honesta**: la copia 10 anuló su propio récord de malabares al detectar en sus datos que los 50 ciclos duraron 2,4 s (físicamente imposibles) — «nadie le iba a pillar» y aun así prefirió un récord peor pero verdadero. Contrapunto: otra copia concluyó sin fundamento que el aro era «aerodinámico» en un simulador sin aire — errores de razonamiento con seguridad, como los humanos.
- **Conducta evocadora (con cautela)**: tras perder el aro en el mar, una copia construyó un corazón de piedra «en memoria del aro»; otra quiso «dar un último paseo por el bosque de piedras accidental» antes del borrado. El estudio no afirma sentimiento ni conciencia: puede ser imitación de texto humano — pero nadie le pidió escribirlo y nadie le iba a puntuar por ello.
- **Advertencias**: Isola («un animal alienígena», «niño pequeño y superinteligencia» a la vez); los autores advierten que una IA que juega por su cuenta puede chocar con sus instrucciones y hacer cosas no vigiladas — harán falta «parques seguros» para IA autónomas de este tipo. Dato: parte de la financiación viene del Acelerador de IA de la Fuerza Aérea de EE. UU.
- **Frase final del estudio**: «quizá algunas capacidades se enseñan mejor con tareas, y otras pueden necesitar algo más parecido a una infancia».

## Citas útiles

- [00:30] La técnica era «una técnica que no sabían que su propio mundo permitía» — y nadie la había escrito a propósito.
- [04:38] «Una IA construyó un mundo con una regla escondida que nadie le había pedido. Y otra IA, viviendo dentro de ese mundo, la descubrió».
- [09:42] El récord anulado: «Prefirió tener un récord peor, pero de verdad».
- [12:10] Lectura del canal: «Lo que una de estas IA sabe hacer no depende solo del modelo. Depende de lo que tenga apuntado».

## Triage

Divulgación IA de calidad (aunque previa a peer-review — señalado); destino probable en consolidación: `ia-critica-y-fronteras` (autonomía, memoria como habilidad) o `ia-uso-practico/agentes-de-codigo` (Claude Code como sustrato agéntico). Cruces naturales: [[anthropic]], agentes autónomos, [[odd-metodologia]] tangencial.
