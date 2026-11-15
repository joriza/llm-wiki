# FAV-431 — Cómo un Ingeniero Creó a los Developers — C (fatdev)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=C2OMJXfRNnI) — Canal **fatdev**, publicado 2026-05-03, 16:47, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-dennis-ritchie-lenguaje-c-fatdev.md`
- **Dominio**: `informatica/` (subcarpeta Informatica/Transversal).

## Dennis Ritchie y C: el suelo invisible del software

Relato narrativo del mismo estilo que el video de Git del canal (FAV-430), bien documentado:

1. **Todo lo moderno es pintura sobre C**: kernels de Linux/macOS/Windows en C; CPython es un intérprete escrito en C que ejecuta Python; V8 es C++. El «stack moderno» es una capa sobre un lenguaje de 1972.
2. **El accidente (Unix)**: Multics cancelado en Bell Labs con prohibición expresa de otro SO; Ken Thompson reescribe un SO entero en un mes (verano 1969) en una PDP-7 abandonada — motivación honesta: jugar videojuegos. Kernighan bautiza «Unix» como burla de Multics.
3. **La revolución (C)**: Unix atado al assembly de la PDP-7 muere con cada máquina nueva. Ritchie («un bulldog», según su compañero) ve el problema real: el código vive encadenado al hardware. En 1973 reescriben Unix en C — primer SO serio en un lenguaje portable: el software sobrevive al hardware.
4. **El regalo accidental**: AT&T, monopolio telefónico, tenía prohibición judicial de vender software → Unix se regala a universidades con código fuente («tal y como está, sin soporte, pago por adelantado»). En 4 años está en cada laboratorio del mundo; una generación aprende C antes que nada.
5. **K&R (1978)**: 228 páginas contra los 600-1000 de la época; en la página 6 nace «Hello, World» como concepto — 50 años siendo lo primero que se escribe en cualquier lenguaje.
6. **La inercia**: 1991 Linus escribe Linux en C; 1993 Windows NT en C; NeXTSTEP (base de macOS/iOS) lleva la herencia Unix. Cada lenguaje que se vendió como «reemplazo de C» terminó construido por dentro en C o su familia: C nunca fue reemplazado, fue **ascendido a infraestructura invisible**.
7. **La semana de octubre de 2011**: muere Steve Jobs (5/10) con luto planetario; muere Dennis Ritchie (12/10) solo, anunciado por Rob Pike en Google+ con 22 palabras. La simetría: sin Ritchie no hay C, sin C no hay Unix, sin Unix no hay NeXT/macOS/iPhone — las velas se las llevó Jobs. Su monumento: cada terminal, cada llave, cada `return` de C++, Java, JavaScript, Go o Rust.

## Valor

Historia motivacional que explica el PORQUÉ de la gramática mental común de casi todos los lenguajes actuales; complementa la historia de Git del mismo canal.

## Cruces

- Canal **fatdev**: 2.ª fuente (FAV-430 Git) → umbral ≥2, entidad candidata para consolidación.
- Clúster **historia-informatica**: Unix/Bell Labs/AT&T/K&R — cruza con el dominio historia-informatica (von Neumann, Backus/FORTRAN); posible traslado o página de concepto en consolidación.
- FAV-430: el gancho final del video («el chaval finlandés que programó Linux en C») es exactamente el tema de fatdev sobre Linux/Git.
