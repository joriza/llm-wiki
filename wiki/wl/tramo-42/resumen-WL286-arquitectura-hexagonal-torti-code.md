# WL-286 — «¿Qué es la arquitectura hexagonal y qué gano con ella?» (Torti Code)

- **Fuente original**: `raw/wl/tramo-42/2026-09-20-que-es-la-arquitectura-hexagonal-y-que-gano-con-ella.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=lsSe7kOkVjE · Canal Torti Code · Publicado 2026-09-20 · 13:24 · Subtítulos automáticos es
- **Tramo**: 42, fuente útil 2/5 (posición 98 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): general/informatica-teoria (cruces WL-252/WL-275, [[bases-de-datos]])

## Qué es

Explicación didáctica (13 min, analogía bancaria) de la arquitectura hexagonal (puertos y adaptadores): qué es núcleo, puerto y adaptador, sus dos consecuencias prácticas (pruebas en memoria, cambio de base de datos barato) y sus costos reales, con demo en tres lenguajes (Python/JS/Go) de una misma tienda.

## Puntos clave

- **Analogía del banco**: la regla «no sacar más de lo que tienes» vive en un solo lugar del centro; las cuatro puertas (cajero, app, ventanilla, corresponsal) solo llenan «la papeleta» — el contrato. Siempre se adapta el de afuera al de adentro; la regla no aprende de nadie.
- **Vocabulario**: núcleo (reglas, no importa nada externo), puerto de entrada (contrato único de petición), adaptadores de entrada (terminal, web), puertos de salida (contratos escritos por el núcleo: persistir, notificar), adaptadores de salida (SQLite, Postgres, consola/correo, **doble de prueba en memoria**). El ensamblado (inyección) es un solo archivo de arranque con una línea por adaptador.
- **Historia**: Alistair Cockburn, 2005, «ports and adapters»; el hexágono no significa nada (podría ser un octágono). Lo único esencial: **todas las dependencias apuntan hacia dentro** — de ahí salen las dos consecuencias.
- **Consecuencia 1 — pruebas**: la misma regla probada 800 veces: en memoria 12 ms vs 0,6 s con SQLite vs 5,8 s con Postgres real (~500×); la base de datos real se prueba aparte y menos.
- **Consecuencia 2 — cambio de base**: SQLite→Postgres = adaptador nuevo de 37 líneas + 2 líneas en el arranque; núcleo y pruebas intactos (caso Netflix 2020: cambio de fuente de datos en 2 h, «una línea»). Contraejemplo acoplado: la regla copiada en terminal y web diverge (umbral 5 vs 10), y cambiar de base toca tres archivos.
- **Costo y límites**: 11 archivos vs 3; indirección y latencia extra — la guía de patrones de AWS lo dice: solo se justifica con múltiples E/S o E/S que van a cambiar; un script, un CRUD sin reglas o la tiendita de una ventanilla no lo necesitan. Si una regla depende del canal (límites por cajero), va en el adaptador, no en el núcleo. Clean/Onion Architecture = la misma flecha hacia dentro (lo confirma Robert Martin); el patrón no dicta capas internas.

## Salvedades de triage

- Medición de pruebas propia y bien contextualizada (200×4 corridas, números declarados) — demo didáctica, no benchmark de producción; el caso Netflix es de 2.ª mano sin enlace — verificar.

## Cruces sugeridos

- WL-252/WL-261 (transacciones y reglas de negocio en SQL — contraste: dónde vive la regla), WL-275 (asyncio/concurrencia Python), WL-285 (SQL Server), patrones API WL-246 (adaptadores de entrada REST/GraphQL/gRPC/WebSockets anunciados en el cierre).
