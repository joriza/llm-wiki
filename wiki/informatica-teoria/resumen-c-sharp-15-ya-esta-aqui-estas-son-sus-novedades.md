# Resumen: ¡C# 15 ya está aquí! Estas son sus novedades

- **Fuente original**: [raw/informatica-teoria/2026-11-10-c-sharp-15-ya-esta-aqui-estas-son-sus-novedades.md](../../raw/informatica-teoria/2026-11-10-c-sharp-15-ya-esta-aqui-estas-son-sus-novedades.md) ([vídeo](https://www.youtube.com/watch?v=ryRpsa0TAis))
- **Canal**: hdeleon.net (Héctor de León)
- **Fecha**: 2026-11-10 (11:24, subtítulos automáticos es)
- **Tipo**: tutorial con demostración de código en vivo: las novedades del lenguaje C# 15, lanzadas junto con .NET 11 el mismo día — tipo union, labeled break/continue, jerarquías cerradas, extension indexers y collection expression arguments

## Marca de sesgo

Tutorial técnico directo con humor del canal («antes venías a ver videos de .NET... se fueron quedando calvas», «la MTV de la programación») y promoción final de su plataforma de cursos (Metal Code [ASR], cupón del 30 % por aniversario) — excluida de la síntesis. El guiño inicial a que «ni los modelos de IA conocen estas novedades todavía» es el gancho de actualidad del video. Demostraciones de código correctas en lo esencial, aunque condensadas.

## Puntos clave

1. **Contexto** [00:01-00:39]: sale .NET 11 el día del video y con él C# 15; argumento del canal para conocer las novedades: poder aplicarlas en los prompts con modelos de IA que aún no las conocen.
2. **Tipo union** [00:39-03:05]: un tipo que representa varios tipos posibles pero cuyo valor solo es uno de ellos (ya existente en otros lenguajes); demostración: records inmutables `Success` y `Error` (cada uno con su `Message`) y `union Result = Success | Error`; una función puede recibir entero o string según la unión; la evaluación se hace con la expresión switch existente, discriminando por tipo («success: guardado» / «error: ...»); útil para resultados sin excepciones ni banderas nulas.
3. **Labeled break and continue** [03:05-04:24]: salir de ciclos anidados sin banderas ni dobles breaks; etiqueta `outer:` antes del for externo y, dentro del anidado, `break outer` cuando la condición lo decide (i==3, j==5 corta ambos ciclos de golpe); la etiqueta es libre (`pato` también funciona) — evita lógica extra fuera del ciclo para romper el exterior.
4. **Jerarquías cerradas (closed hierarchies)** [04:24-05:53]: un modificador sobre la clase base (`order status` closed) que bloquea heredarla desde otros ensamblados/bibliotecas, permitiéndola solo dentro del mismo ensamblado; caso de uso de diseño: cerrar la superficie de una biblioteca para que el empaquetado sea predecible y no aparezcan subtipos imprevistos desde fuera (familia de los tipos sumas/exhaustivos aplicada a ensamblados).
5. **Extension indexers** [05:53-08:01]: añadir el indexador (acceso por corchetes) a tipos que no lo tienen; demostración con `IEnumerable<int>`, que no permite `col[0]`: se escribe una clase estática de extensiones con la sintaxis `extensions`, se define el `get` del indexador delegando en `ElementAt`, y ya funciona la lectura por posición; la versión sin genéricos solo sirve para enumerables de int (error con strings) — se arregla con un genérico `T`, quedando el indexador disponible para cualquier tipo de enumerable.
6. **Collection expression arguments** [08:01-10:27]: pasar argumentos al constructor de una colección directamente en la expresión de corchetes; antes: crear `List<int>` con valores simples o reservar capacidad pasando 100 al constructor y agregando elementos con `Add` (muchas líneas repetidas); ahora: `[with Capacity: 100] 10, 20, 30` — constructor + valores en una sola expresión; funciona con cualquier colección cuyos constructores tengan parámetros: ejemplo con `HashSet` especificando en línea el comparador que ignora mayúsculas/minúsculas.
7. **Cierre** [10:27-11:09]: preguntas al público (¿cuál te gustó?, ¿más videos así?), promoción de la ruta de .NET y despedida con humor.

## Advertencias

- Nomenclatura ASR incierta: «close har x» = closed hierarchies, «innumerable» = IEnumerable, «Metal Code» = plataforma de cursos del canal (verificar nombre real); las firmas de sintaxis exactas (`union`, `closed`, `extensions`, `with`) provienen del audio — contrastar con la documentación oficial de C# 15 antes de citar código.
- El video demuestra cada feature con un micro-ejemplo; no cubre detalles de rendimiento, interoperabilidad ni migración — es una primera vista, no una referencia.
- El reclamo «.NET 11 salió este día» y la numeración (C# 15) corresponden al guion del canal — verificar contra el calendario oficial de Microsoft.
- Consolidación aplazada: cruzar con [[resumen-every-programming-language-explained-in-16-minutes-just-explained]] (comparativa de lenguajes del mismo dominio) y con el resumen del roadmap de Rust (WL-14 de este tramo) al cierre.
