# FAV-459 — Sabes SOLID pero te faltan estos 4 principios

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ZjfopQLBH1E) — Canal **Torti Code** («Torti»), publicado 2026-07-13, 14:41, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-sabes-solid-te-faltan-4-principios-torti-code.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).
- Nota: 7.ª fuente del canal Torti Code (umbral ya registrado, entidad deferida). Complemento directo de [[resumen-FAV-440-solid-en-5-minutos-torti-code]]: los 4 principios de diseño que SOLID no cubre.

## Los 4 principios (con analogías y genealogía)

- **DRY — Don't Repeat Yourself** (Hunt & Thomas, *The Pragmatic Programmer*, 1999): cada pieza de conocimiento vive en un solo lugar, una sola fuente de verdad. La receta de salsa copiada en 20 platos; la regla del impuesto del 19% escrita a mano en cinco lugares — se actualizan cuatro, el quinto queda atrás, y contabilidad descubre un bug silencioso semanas después. Herramienta: helpers, módulos de utilidades, librerías internas. **Matiz de senior**: DRY mal entendido fusiona cosas que solo se parecen por casualidad; regla de tres (Martin Fowler) — la tercera repetición real refactoriza.
- **KISS — Keep It Simple** (Kelly Johnson, Lockheed: los jets deben repararse en campo por un mecánico promedio): el lápiz vs el bolígrafo espacial presurizado (fábula que captura el espíritu). Ejemplo: saber si un número es par — `n % 2 == 0` vs convertir a binario y comparar el último dígito. KISS no es código tonto: es no meter abstracciones, capas y patrones que el problema todavía no pide.
- **YAGNI — You Aren't Gonna Need It** (Extreme Programming; la frase nació en conversación Chet Hendrickson ↔ Kent Beck, resumida por Ron Jeffries): el cuarto amueblado «por si llega el bebé». Implementar para un futuro previsto es peso muerto que hay que leer, probar y arrastrar — y cuando el futuro llega, el requisito es distinto y la adivinanza se tira. «Construir para un futuro que no llegó no es ser previsor, es regalarte deuda».
- **Acoplamiento y cohesión** (Larry Constantine, diseño estructurado; *Structured Design* con Ed Yourdon, 1979): LEGO vs Super Glue. Meta de oro: **bajo acoplamiento entre módulos, alta cohesión dentro de cada uno**. Dolor en cascada: pedidos llama directo a pagos que mete la mano en inventario → cambiar el proveedor de pagos rompe pedidos y el reporte (efecto dominó). Antídoto: contratos/interfaces + **inyección de dependencias** — como herramienta diaria: Spring (Java), NestJS (Node), contenedor de .NET.

## Dónde viven en sistemas reales

- DRY → carpetas de utilidades y librerías compartidas entre proyectos. KISS → las APIs que amas usar (pocos puntos de entrada, hacen lo que dicen). YAGNI → el MVP. Bajo acoplamiento → microservicios y sistemas modulares: cada servicio habla por contrato y un equipo reescribe el suyo sin que los demás se enteren.

## El cierre sobre IA

La IA suelta tiende a entregar «un castillo»: capas, abstracciones y opciones para casos que nunca pediste — justo lo contrario de KISS/YAGNI. Conocer estos principios permite pedir «lo más simple y desacoplado que resuelva el problema» y **reconocer sobreingeniería disfrazada de buena práctica**. Mismo human-in-the-loop que [[resumen-FAV-440-solid-en-5-minutos-torti-code]]: la IA teclea, el arquitecto evalúa.

## Cruces

- Canal **Torti Code**: 7.ª fuente — par directo con [[resumen-FAV-440-solid-en-5-minutos-torti-code]] (el «set completo»), [[resumen-FAV-433-big-o-vida-real-torti-code]], [[resumen-FAV-439-8-estructuras-de-datos-torti-code]], [[resumen-FAV-441-programar-10x-mas-rapido-torti-code]].
- **Acoplamiento/microservicios por contratos** ↔ [[resumen-FAV-448-monolito-vs-microservicios-thedebugduck]] (los contratos son lo que hace viable el microservicio — y lo que el monolito modular emula).
- **YAGNI/MVP y simplicidad** cruza con el clúster vibe coding ([[resumen-FAV-434-vibe-coding-cinco-agujeros-otro-mas-de-sistemas]]): la IA amplifica la sobreingeniería cuando nadie la frena.


## Consolidación (2026-11-15)

- Clúster y canal consolidados: [[arquitectura-software]] · entidad [[torti-code]].
