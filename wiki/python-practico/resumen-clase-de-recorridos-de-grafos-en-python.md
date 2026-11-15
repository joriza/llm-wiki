# Resumen: Clase de Recorridos de Grafos en Python (04.nov.2021)

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-11-04-clase-de-recorridos-de-grafos-en-python-04-nov-2021.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «payton/paita/paita»→Python, «tecsedeque/de/dí»→deque, «apeim/apple/apim»→append, «vélez rey del»→lista del, «post blair»→popleft, «en amplitud»→en anchura, «desa pilar»→desapilar, «huayno/guay/wild»→while, «nuevo/nudos»→nodos, «plane text»→plain text, «print»→Prim (algoritmo), «interfaz zorita»→interfaz (Tkinter)) — https://www.youtube.com/watch?v=4pHDA85H6pw — MICHEL DAVALOS BOITES, 2021-11-04 (40:28). Nota: clase universitaria en vivo (curso de grafos con interfaz Tkinter, contexto clase anterior: lista de adyacencia).

## Listas como pila y cola (y por qué deque)

Pila con lista: `append` apila, `pop()` desapila, `-1` accede al tope; vaciado con `while len(pila) > 0` [00:01-02:06]. Cola con lista: encolar con `append`, desencolar con `del lista[0]` — «fila de la tortillería»: FIFO [02:06-04:03]. La lista de Python es un **arreglo dinámico**: insertar o eliminar en la posición 0 obliga a recorrer todos los elementos (O(n)); el contenedor **`collections.deque`** está implementado como lista doblemente enlazada/circular, con `append`, `appendleft`, `pop` y `popleft` todos en **O(1)** — documentación de collections citada en pantalla («generalización de stacks and queues») [04:03-07:25].

## DFS en profundidad: algoritmo e implementación

El recorrido **en profundidad (DFS) usa pila**; el **en anchura/amplitud (BFS) usa cola** — misma estructura de algoritmo, distinta estructura de datos [07:25-08:38]. Pasos del algoritmo: lista de visitados (evita ciclos infinitos), pila (deque), lista de recorrido, nodo inicial aleatorio; mientras la pila no esté vacía: desapilar nodo → agregarlo al recorrido → apilar y marcar como visitados sus adyacentes aún no visitados [08:38-10:27]. Corrida de escritorio completa sobre un grafo no dirigido y no ponderado de 13 nodos (letras A-M, 13 aristas) [11:08-16:16].

Implementación en la clase Grafo (método `recorrido_profundidad(inicio)` sobre la lista de adyacencia, diccionario): validación de nodo inexistente con warning y retorno de lista vacía; bug real depurado en vivo — faltaba apilar/marcar el nodo inicial antes del while (el algoritmo no entraba al ciclo); los adyacentes se acceden con `[0]` porque cada nodo almacena su nombre en lista [23:05-33:17]. Resultado impreso y contrastado con la corrida manual [33:17-34:20].

## Actividad y cierre

Tarea: implementar **BFS** cambiando la pila por cola (misma estructura) e integrar ambos recorridos a la interfaz Tkinter con validación del nodo inicial [34:20-38:42]. Pregunta de estudiantes respondida: ¿deque o lista? — con pocos nodos da igual; con un millón, la cola sobre lista mueve los elementos en cada desencolar y la diferencia se nota [39:19-39:59]. Próxima clase: algoritmo de Prim.

## Dónde encaja en la wiki

Única fuente de algoritmos/estructuras de datos del dominio: complementa el nivel de lenguaje de [[resumen-videotutorial-8-taller-practico-funciones-modulos-y-paquetes]] con el nivel de complejidad algorítmica (O(1) del deque vs O(n) de la lista). Conecta tangencialmente con los grafos de [[mapa-del-ecosistema-python]] (ecosistema como grafo) y es material de fondo para scraping con crawlers ([[resumen-extrayendo-datos-de-mercado-libre-con-python-web-scraping-parte-8]]): un CrawlSpider es esencialmente un BFS con cola de URLs y «visitados» que evita ciclos — el profesor lo dice sin nombrarlo con la lista de visitados.

---

**Ver también**: [[resumen-videotutorial-8-taller-practico-funciones-modulos-y-paquetes]] · [[resumen-extrayendo-datos-de-mercado-libre-con-python-web-scraping-parte-8]].
