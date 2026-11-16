# WL-424 — El cliente perdió todos sus datos por mi app de Python (y cómo evité que vuelva a pasar)

- **Fuente original**: `2026-09-08-el-cliente-perdio-todos-sus-datos-por-mi-app-de-python-y-como-evite-que-vuelva-a.md`
- **Video**: [El cliente perdió todos sus datos por mi app de Python](https://www.youtube.com/watch?v=X2eMvB_qp7c)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-09-07 · **Duración**: 08:55 · **Idioma**: es (subtítulos automáticos)
- **Tramo**: 70 (relevo 10/12, pedido L34) · **Dominio previsto**: python-practico

## Qué trata

Caso real de primera mano (relato en primera persona con código en pantalla): una app de ventas en Python + SQLite perdió 11 meses de datos (3.800 registros) tras un corte de luz a mitad de una escritura. El archivo binario de SQLite quedó corrupto («database disk image is malformed») y no existía ninguna copia de respaldo.

## Cadena causal — tres decisiones de 30 segundos

1. **Base de datos junto al ejecutable** (el patrón del 90 % de los tutoriales): reinstalar, actualizar o mover la carpeta puede pisar la base con una versión vacía del instalador.
2. **Escritura sin transacciones explícitas y sin journal real**: el modo rollback journal clásico modifica el archivo principal directamente; un corte a mitad de insert deja páginas viejas y nuevas mezcladas en el mismo bloque de disco.
3. **Cero respaldos**: una sola copia, en la única máquina que se quedó sin luz.

Ninguna decisión rompía por separado; juntas hacían la pérdida «matemáticamente cuestión de tiempo».

## Recuperación

SQLite trae el comando **`.recover`**: escanea el disco dañado página a página y reconstruye una base nueva con los fragmentos legibles (en la reproducción del caso: 87 % de los registros recuperados; las ventas de los últimos 4 días perdidas para siempre).

## Las cinco medidas (todas presentadas como obligatorias)

1. **Ruta de datos separada del ejecutable** (AppData en Windows o equivalente), que sobrevive a reinstalaciones.
2. **Modo WAL + transacciones explícitas + `synchronous=full`**: escritura primero en registro aparte, volcado en momento controlado; o se guarda todo o nada.
3. **Respaldo automático diario con rotación de 30 días**, sin depender de la memoria de nadie.
4. **Botón de restaurar visible para el cliente**, no escondido en menús del desarrollador.
5. **Prueba de corte simulado antes de dar el proyecto por terminado**: matar el proceso a mitad de escritura (repetido 15 veces en el video, la base reabrió intacta; la venta en vuelo puede perderse, eso es aceptable).

Tesis final: «una app no está entregada hasta que la tiraste abajo a propósito» — la línea de conexión a la base de datos escrita sin pensar en un proyecto nuevo es la que decide si sobrevive a un corte de luz.

## Señales de triage

- **Primera mano**: el autor narra su propio incidente y muestra el código correctivo; la reproducción (87 % recuperado, prueba ×15) es propia y verificable solo por su relato.
- **Marco comercial**: el módulo de respaldo con botón de restaurar se ofrece en Patreon — excluido de la síntesis.
- **ASR fuerte** («clate»=cliente, «Sclit»/«seclate»=SQLite, «wall/wr ahead lock»=WAL/write-ahead lock) normalizado solo aquí.
- Contenido técnico estándar y correcto (WAL vs rollback journal, `.recover`, AppData): sin afirmaciones de datos externos a verificar.

## Cruces (diferidos a consolidación)

- [[codigo-espinoza]] — 3.ª fuente WL (WL-275, WL-386); entidad confirmada.
- [[bases-de-datos]] (WL-285/286/287, WL-252, WL-344): durabilidad, journaling y respaldos.
- python-practico: apps de escritorio empaquetadas, misma serie que WL-386.
- Tema: integridad de datos / tolerancia a fallos — cruza con la tesis de WL-354 (harness/robustez) solo tangencialmente; no cablear.
