# es un documento borrador del autor, no debe tomarse en cuenta.

# Lista Youtube para ver mas tarde
Hacé refresh de la lista WL de YouTube para leerla como está ahora mismo, y 
procesá todas las fuentes desde la cabeza de esa lista fresca, 
en un único sub-agente 
con relevo cada 5 fuentes. 
Si  al verificar la cabeza de algún relevo la lista cambió respecto del cache, 
re-listá y seguí desde la nueva cabeza.
-
dame hasta 65 de los videos que ya se procesaron o que no se van a procesar 
(incluyendo los que quedaron en skip definitivo por no tener subtítulos o estar privados), 
para poder eliminarlos de la lista y curarla. 
Pasame los títulos tal cual los veo en YouTube y los números visibles de mi listado, 
excluyendo los [Deleted video] y [Private video].
-
Realiza consolidacion demorada. 
Pushea a remoto.
-
Terminadas esas tareas, po último, dale la orden a windows para que se apague.
-
Sin push salvo orden, consolidación diferida, sin dominios nuevos.


# Curar lista Youtube "ver mas tarde"

Hacé refresh de la lista WL de YouTube y 
dame hasta 60 de los videos que ya se procesaron o que no se van a procesar 
(incluyendo los que quedaron en skip definitivo por no tener subtítulos o estar privados), 
para poder eliminarlos de la lista y curarla. 
Pasame los títulos tal cual los veo en YouTube y los números visibles de mi listado, 
excluyendo los [Deleted video] y [Private video].
-
Realiza consolidacion demorada. 
Pushea a remoto y 
cierra acá.


# Una lista de youtube (con sub agente)
Procese la lista 
https://www.youtube.com/playlist?list=PLqe2XRWDm9RHSidWrA_4BSEUjj9JqtDr6
Recuerde procesar en un unico sub-agente.
con relevo cada 5 fuentes

# Favoritos de Chrome
He modificado un poco los favoritos. Refresque.
procese la carpeta "Docencia\Material Didactico Varios" y sus subcarpetas.
Procese todos los marcadores que le sean posible, además de los video de youtube.
Recuerde procesar en un unico sub-agente.
con relevo cada 5 fuentes

# Otro Favoritos Chrome
He modificado un poco los favoritos. Refresque.
Analice las carpetas "Gral\tmp-02\Vs", "Docencia\Material Didactico Varios" y sus subcarpetas.
Digame cuantas fuentes incluye


==========================================================================================

he limpiado la wiki manualmente para comenzar de cero.

realice la ingesta de todos los archivos, al finalizar cada archivo 
relice todos los pasos en ciclo; raw → resumen → páginas de concepto/entidad según sus puntos → cruces → commit.
realice la consolidacion, no la difiera
realice de a un archivo por vez sin paralelizar
asegurese de que los archivos sean creados en el disco.
continue con otro archivo raw
y así con todos los archivos a procesar

realice todo lo que pueda en un solo sub-agente para preservar el contexto actual y no saturar el modelo llm

raw → resumen → páginas de concepto/entidad según sus puntos → cruces → commit.


Procese se solo 3 fuentes.
Ejecute todas la ingestas en un solo subagente para preservar el contexto principal.




Analiza los siguiente:
Necesito definir una regla de descargar de subtitulos de youtube, que evite que termine bloqueada mi ip como ya ha sucedido.
Sin aumentar los tiempos de proceso.
Todo el proceso debe realizarse en un solo sub-agente para preservar el contexto principal y ademas restringir que las descargas de subtitulos se realicen solo 1 por vez.
En lugar de descargar todas las fuentes con un tiempo minimo entre descargas. 
Que el ciclo sea.
Descargar 1 subtitulo -> realizar la ingesta -> solo si ha pasado el tiempo minimo entre descargas de subtitulos continuar con la descarga siguiente.
De esta forma, si es posible, permite utilizar el tiempo entre descargas para procesar archivos, si por algun motivo la descarga no es posible, no queda otra que esperar el tiempo que indica el protocolo, pero en una lista con 50 archivos, eso es mucho tiempo muerto ganado.


Revisa el análisis en busca de fortalezas y debilidades, proponé mejoras siempre protegiendo el bloqueo de youtube como foco principal.
Tener en cuenta que segun el modelo que pueda utilizar, algunos permiten sub-agentes otros no. Si no hay forma de determinarlo, quedaría de mi lado al momento de lanzar la ingesta indicar si es con un sub-agente o inline.
Tomar en cuenta que algunas listas pueden contener muchos items, mucho mas que 50, los casos de borde tambien deben analizarse, no son del día a día pero deben ser tomados en cuenta.
El punto central es proteger el bloqueo. Y recien con eso muy en claro, optimizar los tiempos muertos y de proceso.

Me gustan las propuestas siguientes, pero pueden variar luego del análisis.
 1. Ajustes concretos que sugiero a tu regla

 2. Puerta única por reloj en disco, piso 60 s + jitter, timestamp tras cada intento, válida para ambos modos del runner (el modo completo queda fuera del flujo de
    playlists).
 3. Chequeo de IP de salida al arrancar y ante cada 429; cambio inesperado → aborto y aviso.
 4. Ante 429: rotar salida (Proton), no esperar sobre la IP flaggeada; presupuesto proactivo de ~10–15 fuentes por salida.
 5. Marcador .ingested al cerrar cada ciclo → relevo determinista.
 6. Relevo planificado cada ~10 fuentes (o al agotamiento, lo que ocurra primero).
 7. El subagente marca y sigue ante fuentes especiales (off-topic, huecas, clickbait — precedentes 10, 11, 19, 20, 21 del protocolo); solo corta y te consulta ante
    ambigüedad de producto real.


Como suelo ingestar algunas listas que crecen con el tiempo.
Como serían mis pasos correctos para luego de resumir videos de lista "ver mas tarde"
y no mezclar consolidaciones o repetir procesos de ingestas en videos ya procesados.
o quitar o consolidar puntualmente videos de "ver mas tarde"


He modificado un poco los favoritos. Refresque.
procese la carpeta "Gral\IOT Gral" y sus subcarpetas.
Procese todos los marcadores que le sean posible, además de los video de youtube.
Recuerde procesar en un unico sub-agente.
con relevo cada 5 fuentes

---


