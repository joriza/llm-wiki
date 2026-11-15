# FAV-437 — ¿Realmente Necesitamos Tantos Lenguajes de Programación?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=cwZc_5WrYP4) — Canal **Gilada**, publicado 2026-07-04, 28:05, ES-419 (subtítulos manuales).
- **Raw**: `raw/informatica/2026-11-15-por-que-tantos-lenguajes-de-programacion-gilada.md`
- **Dominio**: `informatica/` (subcarpeta Informatica). `list=` ajena ignorada por S4.
- Nota: el canal ya había hecho otro video sobre historia de la informática; este es su secuela con «enfoque de barrio».

## La pregunta: ¿por qué existen tantos lenguajes?

Hay entre **600 y 900 lenguajes** de programación (≈10% de las ~6.000 lenguas humanas). La tesis: no existe lenguaje perfecto porque no existe problema único; cada lenguaje que sobrevive guarda congelada «la forma exacta de la herida que vino a curar». Programar no es lineal: se necesitan filosofías, contextos y manejos distintos.

## El mapa por barrios

- **OOP**: **Simula** (Dahl y Nygaard, Noriega, mediados de los 60) nació para simulación física — modelar el mundo como entidades con datos y comportamientos. **Smalltalk** (Alan Kay, Xerox PARC, años 70) lo llevó al extremo poético: todo es objeto, los objetos se mandan mensajes, «entorno vivo» editable en ejecución; la industria adoptó la OOP de forma más rígida vía **C++** y **Java**.
- **Laboratorio**: **Lisp** (McCarthy, fines de los 50) introdujo la homoiconicidad — código y datos son lo mismo, programas que escriben y ejecutan programas; **Scheme** (MIT, minimalista para enseñar abstracciones). **Prolog**: declarativo — hechos y reglas, el motor deduce. **Haskell**: funcional puro, sin estado mutable ni efectos secundarios; «resolver ecuaciones, no armar rompecabezas».
- **La web caótica**: **Perl** como «pegamento de internet» (sysadmins, CGI, expresiones regulares ilegibles); **PHP** el «ladrillo hueco» — nació como tools para contar visitas a un CV (Rasmus Lerdorf) y creció de forma orgánica; criticado por desprolijo, ganó por despliegue trivial (subir .php por FTP); WordPress y Wikipedia lo sostienen. Moraleja: **gana la que resuelve la urgencia con menor costo de entrada, no la mejor diseñada**. **Ruby on Rails**: optimización por felicidad del programador, convención sobre configuración. **JavaScript** rompió el techo con **Node.js** (servidor); Dart/Flutter para UI multiplataforma.
- **Corporativo**: **Visual Basic** (Alan Cooper) democratizó programar con arrastrar-y-soltar; despreciado por puristas pero sostuvo la economía interna de miles de empresas. Ante la amenaza Java, Microsoft contrató al autor de Delphi y creó **C#** + **.NET** (lenguaje ≠ ecosistema); hoy open source, multiplataforma, backend de bancos y Unity. **PowerShell**: objetos reales en el pipeline, no texto.
- **Datos y ciencia**: **SQL** (años 70, modelo relacional de Codd) — declarativo de dominio específico: das la orden, el motor resuelve cómo; indeseable de enterrar, sigue en bancos/hospitales/gobiernos. **R** para estadística (limpiar datos, modelos, gráficos). **MATLAB** como calculadora de matrices (ingeniería, propietaria y cara). El «problema de los dos lenguajes» (prototipar en Python/MATLAB, reescribir en C) → **Julia**: comodidad de Python con velocidad de C (despacho múltiple, compilación JIT).
- **Pasillos de servicio (invisible pero crítico)**: **Bash**, tejido conectivo de Unix — desplegar, encadenar programas, automatizar servidores. **Lua** (Río de Janeiro): ultraliviano y embebible dentro de C/C++ — lógica de juego (WoW, Roblox, Nmap) sin recompilar. **Erlang** (Joe Armstrong, Ericsson, años 80): centrales telefónicas, modelo de actores + BEAM, filosofía «si se cae, dejalo caerse» — procesos aislados supervisados, hasta 99,9999% de uptime (Elixir/José Valim le da sintaxis moderna sobre la misma VM). **Zig**: control de C sin comportamiento indefinido; `comptime` (ejecución en compilación).
- **Fronteras**: **Solidity** (Ethereum) — código como ley autoejecutable e inmutable: un bug en producción no se parchea, un atacante vacía billeteras en segundos. **WebAssembly**: binario puente para correr C/C++/Rust en el navegador a velocidad nativa (Figma, video en la nube). **Verilog/VHDL**: el código no corre — diseña el circuito; se describen señales eléctricas en paralelo. **QASM**: ensamblador cuántico (qubits, superposición); el propio autor admite que no lo terminó de entender.

## Conclusión

La informática es un reflejo de necesidades humanas contra limitaciones de la materia. «La computadora no es una sola cosa: es una ciudad entera y cada lenguaje es una forma distinta de caminarla.» Aprender a programar = reconocer qué tipo de problema hay y a veces cambiar de idioma para pensar claro.

## Cruces

- Historia de la informática narrada: [[resumen-FAV-430-historia-git-linus-torvalds-fatdev]] (historia Git) y [[resumen-FAV-431-dennis-ritchie-lenguaje-c-fatdev]] (el origen en C que este video da por conocido).
- Clúster **lenguajes**: PHP/Perl/web conecta con [[resumen-FAV-425-express-js-10-minutos-carlos-gonzalez]] (el ecosistema JS de servidor); SQL cruza con [[resumen-FAV-433-big-o-vida-real-torti-code]] (índices de BD como árboles).
- Canal **Gilada**: 1.ª fuente en la wiki — candidata a entidad si reaparece (umbral ≥2, deferida).


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[gilada]].
