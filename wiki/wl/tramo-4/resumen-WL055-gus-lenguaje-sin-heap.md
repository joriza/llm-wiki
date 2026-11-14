# Resumen: Este nuevo lenguaje acaba de superar a C++ (Gus)

- **Fuente original**: `raw/wl/tramo-4/2026-11-12-este-nuevo-lenguaje-acaba-de-superar-a-c.md` (WL-55, tramo 4)
- **URL**: https://www.youtube.com/watch?v=AB7DSx6JT1Q
- **Canal**: El Bit Informado
- **Publicado**: 2026-11-12 · **Duración**: 23:45 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## El proyecto

**Gus** («ganso»), lenguaje de sistemas sin heap: Wouter van Oortmerssen («Aardappel» = «patata» en neerlandés) — creador de Amiga E, False (inspiración de Brainfuck), Lobster, motor Cube/Sauerbraten, FlatBuffers en Google, paso por Crytek (Far Cry), Gearbox (Borderlands 2), WebAssembly y LLVM. El detalle que lo hace histórico: **el compilador (~30.000 líneas de C++) lo escribió casi por completo la IA** («Fable», modelo de Anthropic) a partir de su diseño humano; él diseñó lenguaje+compilador+estilo, la IA implementó compilador, benchmarks, ejemplos y documentación, y resolvió decisiones no definidas «en largas conversaciones de ida y vuelta».

## El modelo de memoria (la idea)

Sin heap, sin GC, sin conteo de referencias, sin lifetimes: **pilas de datos gestionadas por el compilador** (arena/bump allocation elevada a modelo del lenguaje entero). Reglas y consecuencias:

- Liberar una estructura anidada completa = **una sola escritura** (devolver el marcador de la pila).
- Cada pila reserva 2 GB de direcciones virtuales (memoria física solo a medida que se usa); regla clave: **un solo valor redimensionable vivo por pila, siempre arriba** → nunca se mueve → **las referencias sobreviven a un millón de inserciones** (en el benchmark, Gus usa referencias tipadas donde Rust debe usar índices).
- **Datos anidados contiguos** sin punteros internos: el pedido de ejemplo ocupa **29 bytes sin asignaciones vs 160 bytes/1 asignación (C++ string+vector) vs 153 bytes/4 (Rust)** — localidad de caché: «muchos programas no son lentos porque calculen mucho, sino porque esperan a la memoria».
- **Enums en modo variable**: cada valor ocupa lo de su variante (4× menos memoria y 2× más rápido que un enum de Rust en el benchmark propio).
- **Referencias relativas** (offsets de 1/2/4 bytes): nodos de árbol de 12 bytes; y «tu estructura de datos ya es tu formato de archivo» — guardar = 1 escritura, cargar = 1 lectura + verificación.
- **Hilos sin memoria compartida** (cada worker compila como programa separado, datos por colas tipadas con copia) — «no hay forma de escribir condiciones de carrera». Errores con `return from` comprobado en compilación.
- Compilación a **un único archivo C** (hereda GCC/Clang, portable, con TinyCC embebido para ejecución instantánea tipo scripting); stdlib de 14 módulos (SDL 3, Box3D, GUI, audio).

## Los números (con los matices que otros videos omiten)

- Portada: **3,3× vs C++ idiomático**, 1,16× vs C++ optimizado a mano, 1,12× vs mejor Rust seguro; memoria 1,9×/1,3×/1,2× menos.
- Con Clang las cifras suben (3,54× / 1,26× / 1,19×) — «la documentación no explica del todo por qué portada y tabla no coinciden». Corrección del canal a otros videos: «C++ optimizado 26 % más lento» es mala lectura de 1,26×.
- **La lectura honesta**: el 3,3× es contra el C++ lleno de asignaciones y punteros — justo lo que Gus elimina por diseño; contra rivales expertos, 12-26 %. Y **el proyecto publica los benchmarks donde pierde** — honestidad poco común.
- La pregunta incómoda: los 16 benchmarks los eligió el autor con ayuda de la IA que escribió el compilador — «números como promesa, no como verdad demostrada»; pendiente de prueba independiente con programas reales grandes y desordenados.

## Las limitaciones (documentadas por el propio proyecto)

Decidir dueño/ubicación de cada dato; recursividad sin datos que crezcan entre llamadas; sin salto aleatorio en arrays de tamaño variable; sin excepciones que escapen ni punteros a funciones; sin herencia ni despacho dinámico; compilación entera (sin partes); y el caso raro: referencia sobreviviente a un hueco devuelto lee «los datos de su siguiente dueño» — error de lógica (no corrupción: siempre valor válido del tipo correcto) pero difícil de encontrar. Precedente histórico en HN: la **gestión de memoria por regiones en ML (años 90)** acabó considerada callejón sin salida por sobrecosto de memoria — Gus no es lo mismo (obliga a pensar en la estructura) pero es un aviso.

## La recepción y la meta-lectura

- Primer hilo de HN **retirado a pedido del propio autor** («le faltaban elementos importantes»); el segundo explotó con Wouter respondiendo en persona: críticas técnicas (la comparación con vector<string> ignora SSO de C++; ¿hash map con textos variables?; memoria que crece si no reutilizás con cuidado).
- **John Carmack** (24/10, X): «combinar varias pilas de datos con referencias relativas lleva la idea de *puedes hacer muchas cosas así* a *básicamente todo es posible*» — y parsear archivos/red «suele ser 100× más lento de lo necesario»; cargar estructuras directamente, verificándolas, «es el punto clave». Círculo que se cierra: Wouter fue fundador de FreeFire? (ASR: «Freedom») e hizo editor de mapas de Doom.
- **Las dos lecturas**: escéptica — la IA que escribe compilador+benchmarks+docs puede haber optimizado para sus propios benchmarks; 30k líneas generadas necesitan años de uso real. Optimista — el cuello de botella histórico para crear lenguajes era la implementación (años de trabajo; «muchísimas buenas ideas murieron en un cajón») y **Gus era literalmente una idea en un cajón**: si la IA hace el trabajo pesado, el límite ya no es quién puede programar sino quién tiene ideas buenas y el criterio para guiar la máquina. Y la clave: no es lo que pasa cuando cualquiera le pide a una IA que invente un lenguaje — es un diseñador con 30 años explicándole exactamente qué quiere y por qué. **La IA puso las manos; la cabeza sigue siendo humana.**
- Veredicto del canal: no va a sustituir a Rust ni C++ a corto plazo (semanas de vida, sin ecosistema, sin pruebas en producción); usarlo para algo pequeño y exigente en cálculo (parsers, grandes volúmenes, Raspberry Pi). Y la pregunta final: «¿cuántas ideas más hay en cajones?».

## Notas críticas

- **El mejor video técnico del tramo**: explica arena allocation, localidad de caché y SSO sin simplificar de más, corrige lecturas erróneas de otros videos, cita la crítica de HN (incluido el precedente ML de los 90) y las limitaciones del propio README, y cierra con la meta-lectura IA-compilador. Nombres ASR: «Gus/Ganso» (repo Goose?), «Arda Pel/Aardappel», «Watsi/Wad» (lenguaje Wad para mapas de Doom), «Fable» (modelo Anthropic 2026), «Freedom» (Team?FX? — verificar).
- La afirmación «OpenCode y Claude Code corren sobre Bun» del video anterior (WL-46) reaparece aquí como patrón: proyectos de una sola cabeza + IA implementadora.

## Cruces

- **Dominio destino previsto: `informatica-teoria/`** — clúster Rust/C++ con WL-14/26/46 (lenguajes de sistemas, seguridad de memoria, borrow checker vs alternativas).
- **WL-46 (Fazt Code)**: complementario — allí «Rust no para todo»; aquí una alternativa concreta al borrow checker (arenas + compilador que deduce) con el precedente ML-90s como advertencia.
- **WL-52 (Gentleman Programming)** y **WL-46**: el patrón «diseñador humano + IA implementadora» como nueva forma de construir software de sistemas — tercera instancia del tema.
- Tema-candidato: **arena-allocation como modelo de lenguaje** y **software-de-sistemas construido por IA** — ambas primeras en la wiki.
