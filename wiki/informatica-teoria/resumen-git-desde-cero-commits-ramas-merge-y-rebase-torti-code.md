# Resumen: Git desde cero — commits, ramas, merge y rebase

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-09-29-git-desde-cero-commits-ramas-merge-y-rebase.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=qLadfs6N8aU — Torti Code, 2026-09-28 (11:02).
- **Nota**: fuente 19/20 del lote informatica-teoria; novena fuente del canal Torti Code en el dominio. Nota de metadatos: fecha de publicación 2026-09-28, un día distinta al nombre del archivo — mandan los metadatos. Consolidación (2026-11-11): [[torti-code]].

## El marco: Git como mesa de editorial

Marco narrativo: Ana cambia el final de un cómic mientras Bruno corrige el beginning — trabajan la misma historia sin borrar lo del otro; Git puede fusionar sus cambios, y si hacen cambios incompatibles en el mismo pasaje, se detiene (no sabe cuál cuenta mejor la historia). Analogía de la mesa de editorial: la página en el escritorio es el **working file**; el cajón donde Ana guarda una copia sellada de su versión es el **staging area** (también llamado *index*); la edición sellada con número y referencia a la edición anterior es el **commit**. Los pincelazos nuevos después de sellar no entran en esa edición.

## Cómo Git guarda cambios

- `git init` crea el repositorio. `git status` muestra qué archivo cambió y qué está en staging; `git diff` muestra lo **no** staging; `git add` pone el contenido actual en el índice; `git diff --staged` revisa qué entrará en el próximo commit; `git commit` registra esa versión.
- No hay que commitear todo lo que se toca: **se elige qué stagear**. Un archivo puede mostrarse con dos estados a la vez en `git status`: la versión staging y otra modificación todavía «en la mesa»; si commiteás ahora, entra solo la primera.
- El misterio más común resuelto: **guardar el archivo en el editor no significa que haya entrado en el próximo commit**.
- Cada commit es un **snapshot** (foto del contenido preparado del proyecto), recuerda su **commit padre** y lleva un **mensaje** que explica el cambio — por eso se puede recorrer la historia con `git log` y recuperar versiones anteriores. Git **reusa el contenido que no cambió**: no hace copia física completa del proyecto en cada commit.
- Cada commit tiene un **identificador calculado a partir de su contenido y datos**: si cambiás quién es su padre, ya no es el mismo commit — idea decisiva para entender la diferencia entre merge y rebase.

## Ramas y trabajo paralelo

Ana quiere cambiar el final sin frenar las correcciones del beginning: en la editorial pega una pestaña de color sobre la última edición («new end») y Bruno mantiene otra para la edición principal. En Git, **una rama es esa referencia móvil a un commit**, no una carpeta que duplique el proyecto. `git branch` lista las ramas y marca la activa; con `git switch` se crea y cambia de rama (Git pone los archivos de trabajo en la versión a la que apunta esa rama, mientras no sobrescriba cambios locales pendientes). Al hacer un commit, la rama activa **avanza**; la del otro queda donde estaba hasta que él commitee. Los dos commits comparten pasado pero la historia **divergió**: la pregunta ya no es dónde están los archivos sino cómo construir una versión que contenga ambos resultados.

## Merge, conflictos y rebase

- **Merge**: en la mesa quedan tres versiones — el ancestro común, la última de Ana y la última de Bruno (uno cambió el final, el otro el beginning); se combinan sin adivinar nada. Git compara el **ancestro común** de cada lado y construye el resultado; las dos líneas distintas aparecen juntas. Como ambas ramas avanzaron, Git registra un **merge commit con dos padres**. Si una rama simplemente estaba adelantada, basta mover la referencia sin commit extra (fast-forward).
- **Conflicto**: Ana escribe que el protagonista encuentra una brújula; Bruno reemplaza el mismo pasaje. Git marca el conflicto y **se detiene**: no decide «gana el que llegó primero» ni mezcla palabras al azar. Alguien lee ambas versiones, escribe el resultado, prepara el archivo resuelto y termina el merge con un commit.
- **Límite importante**: que un merge no muestre conflictos **no prueba que la historia o el programa funcionen** — puede combinar dos cambios en lugares distintos que juntos causan un error. La decisión final y la verificación siguen siendo humanas.
- **Rebase**: si Ana quiere poner su trabajo sobre la última versión de main, el rebase toma sus commits **uno por uno y los reaplica** sobre la nueva base — crea commits con **identificadores nuevos** (por la regla del identificador). Si una reaplicación choca, se detiene para resolver y continúa. Ambos caminos pueden producir el mismo contenido final pero **dejan historias distintas**: merge preserva ambas líneas y muestra su unión; rebase rehace los commits sobre la nueva base y deja una secuencia **lineal**.
- No hay ganador universal: para una rama local sin compartir, rebase puede ordenar el camino; pero **si otras personas ya basaron trabajo en los commits que estás reemplazando, se preserva la historia compartida** — reescribirla les dificulta la integración.

## Stash y cómo deshacer

- **Stash**: Ana deja una tabla a medio dibujar y llega una corrección urgente del título; no quiere sellar la tabla incompleta solo para cambiar de tarea — el editor la guarda temporalmente y despeja la mesa. En Git, `git stash` aparta los cambios locales (sin agregar un commit a la historia); al volver, `git stash pop` intenta reaplicarlos sobre los archivos actuales (puede haber conflictos si cambiaron entretanto).
- **git restore**: descarta cambios sin stagear de un archivo ya seguido, volviendo a la versión del índice.
- **git reset --soft**: para rehacer un commit aún no compartido — mueve la referencia de la rama al commit anterior manteniendo el contenido listo para corregir y commitear de nuevo. Otros modos: **--hard** también sobrescribe el índice y los archivos de trabajo — **puede hacer perder cambios nunca commiteados: no usarlo por reflejo**.
- **git revert**: si el error ya está en una rama compartida, mover la referencia hacia atrás dejaría a otros con una historia distinta; revert agrega un **nuevo commit que revierte el efecto** del equivocado — el error sigue visible en la historia, y también la corrección: se sabe qué decidió el equipo sin reescribir trabajo que otros ya commitearon.

## Compartir trabajo con el remoto

Hasta acá Git trabajó en la computadora de Ana; el archivo compartido de la editorial es el **remote** (GitLab puede hospedarlo, pero Git funciona sin GitLab y guarda la historia localmente). Al **clonar** se obtiene una copia local del repositorio remoto. **push** envía los commits; **fetch** trae commits y referencias nuevos **sin integrarlos** a tu rama; **pull** hace fetch y luego integra (con merge o rebase según configuración y opción — por eso conviene entender ambos mecanismos antes de tratar a pull como un botón mágico). Si alguien empujó a la rama remota desde tu última copia, primero se integra su trabajo; **forzar tu versión sobre la compartida puede borrar sus commits de la vista**. Ana publica su rama y abre un **pull request**: propone el cambio para que Bruno vea diferencias, comente y revise los checks antes de decidir el merge. El pull request es una **función de la plataforma alrededor de Git, no un nuevo tipo de commit** — Git registra y transporta versiones; el equipo revisa si el cambio tiene sentido.

## Síntesis final

Git mueve contenido entre tu archivo, el staging y una **historia de commits a la que apuntan las ramas y que se puede compartir**. Preserva versiones, pero **no garantiza que el resultado funcione** (puente al video de testing del canal). Receta: trabajo a medio hacer → stash; arreglar un commit local → reset; ya compartido → revert; luego push y review en la plataforma.

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen. El ASR garbiña comandos y nombres de forma recurrente («get init», «Jet», «Gitlab/GitJab» = GitLab, «Gitul» = git pull, «stashpop» = stash pop); reconstruidos por contexto.
- Cruces temáticos con el mismo lote: documentación y pull requests (fuente 16/20, mismo canal), testing como verificación post-merge (fuente 6/10, mismo canal).
- Autopromoción (tarjeta al video de testing del canal) excluida de la síntesis. Sin patrocinios externos.
