# Resumen: Compartir datos en hilos — 13 — Python Avanzado tutorial en español

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-03-05-compartir-datos-en-hilos-13-python-avanzado-tutorial-en-espanol.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «freud»→thread, «reid»→race condition/carrera, «time punto es libre/slip»→time.sleep, «maine»→main) — https://www.youtube.com/watch?v=cFED4bHaK9I — nicosiored, 2021-03-05 (09:17). Lección 13 de la serie «Python Avanzado».

## El problema: condición de carrera al compartir una variable global

Aclaración inicial de alcance: se trabaja con **hilos, no procesos** — en Python los hilos **comparten memoria**, lo que hace trivial compartir datos entre ellos… y también peligroso [00:00-00:36]. El ejemplo: una variable global `valor` que dos hilos incrementan en 1 (método `procesa` con `global valor`: copia a local, `time.sleep` simulando trabajo, luego actualiza la global). Esperado: 2; observado con el sleep: **1** [00:36-03:02].

## Anatomía de la carrera

La **condición de carrera** ocurre cuando dos o más hilos leen/modifican el mismo dato a la vez. Con prints intercalados se ve la secuencia: el `sleep` cede la ejecución al otro hilo **después** de copiar la global (ambos leen 0), y ambos escriben 1 al final — una de las dos incrementaciones se pierde [03:02-06:15]. Sin el sleep, el primer hilo completa todo el recorrido antes de que el segundo empiece y el resultado da 2 [06:15-07:35]. Morál del canal: en funciones reales no hay garantía de duración — «tener suerte» en un caso sencillo no es control; cuando el trabajo es más largo reaparece la corrupción.

## La solución anunciada: sección crítica

La salida es una **sección crítica** que solo permite entrar a un hilo a la vez y libera al terminar — se desarrolla en la lección siguiente de la serie (el video termina ahí, sin mostrar el código con Lock) [08:06-09:17].

## Dónde encaja en la wiki

Primera fuente de concurrencia con hilos del dominio: contrasta con el modelo de procesos y colas de tareas de [[dramatiq]] (allí el estado no se comparte por memoria sino por cola), y es pieza natural para una futura página de concepto de concurrencia en Python si la playlist aporta más fuentes (hay varias de hilos/procesos pendientes).

---

**Ver también**: [[dramatiq]] · [[automatizacion-con-python]].


## Ver también

- [[automatizacion-con-python]]
