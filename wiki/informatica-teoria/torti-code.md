# Torti Code

- **Tipo**: página de entidad (canal de YouTube).
- **Dominio**: `informatica-teoria/`.
- **Actualizado**: 2026-11-11 (consolidación del lote informatica-teoria).
- **Fuentes**: 7 resúmenes en el dominio (2026-05-13 a 2026-10-05).

## Identidad

Canal de divulgación de desarrollo de software en español. Cada video toma un tema de fondo (testing, POO, patrones de diseño, concurrencia, Git, Kafka, documentación) y lo enseña **desde una analogía cotidiana sostenida de principio a fin** (el edificio para los tests, el restaurante para la concurrencia, la mesa de editorial para Git, el cuaderno de la panadería para Kafka, el parque para Diátaxis), con ejemplos de código mínimos repetidos en varios lenguajes (JavaScript, Python, Java, Go; a veces C#) y cierre con veredicto pragmático.

## Temas recurrentes

1. **Fundamentos con la distinción correcta**: su sello es corregir la confusión de moda — los 4 pilares de la POO mal definidos de memoria ([[resumen-poo-el-error-de-confundir-sus-4-pilares-torti-code]]), concurrencia vs. paralelismo con el criterio **IO bound vs. CPU bound** ([[resumen-concurrencia-vs-paralelismo-explicado-como-debieron-ensenartelo-torti-code]]), adapter vs. facade y proxy vs. decorador ([[resumen-6-patrones-de-diseno-que-ya-usas-sin-saberlo-torti-code]]).
2. **Ingeniería serena, sin religión**: pirámide de testing 70/20/10, «TDD para lógica de negocio crítica; test-after para el resto; no test es un problema» ([[resumen-todo-lo-que-sabes-de-testing-esta-al-reves-torti-code]]); Git sin ganador universal merge/rebase, «preserva versiones, no garantiza que el resultado funcione» ([[resumen-git-desde-cero-commits-ramas-merge-y-rebase-torti-code]]).
3. **Sistemas y sus límites**: Kafka como registro de eventos (offsets, consumer groups, particiones, at-least-once + idempotencia) con una sección explícita de «cuándo NO usarlo» ([[resumen-que-es-kafka-para-que-sirve-y-como-funciona-torti-code]]); documentación como respuesta escrita a quien no puede preguntarte, con Diátaxis, ADRs y agentes de IA ([[resumen-como-escribir-documentacion-util-y-cuando-no-hacerlo-torti-code]] → [[documentacion-diataxis]]).
4. **IA como copiloto, vos como piloto**: tesis transversal — la IA genera bien cuando vos ya sabés qué pedirla y cómo verificarlo (race conditions en concurrencia, casos borde en testing, el «por qué» que la IA no puede saber y a veces inventa).

## Prácticas declaradas en sus fuentes

- Excluye de la síntesis la autopromoción (tarjetas a otros videos del canal, series en dos partes — p. ej. la parte 1 de patrones con Singleton/Observer/Factory/Strategy/Decorator/Builder no está en la wiki).
- Las fuentes registran garbiñeos recurrentes del ASR en sus transcripciones («Cafka», «Fasad», «get init»), normalizados en los resúmenes.

## Fuentes procesadas en la wiki de este canal

- [[resumen-concurrencia-vs-paralelismo-explicado-como-debieron-ensenartelo-torti-code]] (2026-05-13).
- [[resumen-todo-lo-que-sabes-de-testing-esta-al-reves-torti-code]] (2026-05-25).
- [[resumen-6-patrones-de-diseno-que-ya-usas-sin-saberlo-torti-code]] (2026-06-24, 2ª parte de la serie).
- [[resumen-poo-el-error-de-confundir-sus-4-pilares-torti-code]] (2026-07-21).
- [[resumen-git-desde-cero-commits-ramas-merge-y-rebase-torti-code]] (2026-09-28).
- [[resumen-que-es-kafka-para-que-sirve-y-como-funciona-torti-code]] (2026-10-03).
- [[resumen-como-escribir-documentacion-util-y-cuando-no-hacerlo-torti-code]] (2026-10-05).

### Ventana Vs + Docencia T4 (2026-11-15, 7 fuentes más en `informatica/`)

- [[resumen-FAV-433-big-o-vida-real-torti-code]] (Big O con ejemplos de la vida real).
- [[resumen-FAV-439-8-estructuras-de-datos-torti-code]] (8 estructuras de datos).
- [[resumen-FAV-440-solid-en-5-minutos-torti-code]] (SOLID en 5 minutos).
- [[resumen-FAV-441-programar-10x-mas-rapido-torti-code]] (programar 10× más rápido).
- [[resumen-FAV-458-ordenar-un-millon-de-datos-torti-code]] (ordenar 1 millón de datos).
- [[resumen-FAV-459-sabes-solid-te-faltan-4-principios-torti-code]] (DRY/KISS/YAGNI/acoplamiento).
- [[resumen-FAV-460-map-filter-reduce-torti-code]] (map/filter/reduce).

**Total: 14 fuentes** — sigue siendo el canal dominante de la wiki. Los conceptos SOLID+DRY/KISS/YAGNI/acoblo y monolito-vs-micro se consolidaron en [[arquitectura-software]].

### Backlog WL (2026-11-16, consolidación T49 — tramos 42-43, 3 fuentes)

- [[resumen-WL286-arquitectura-hexagonal-torti-code]] (WL-286, informatica-teoria/): puertos y adaptadores con la analogía del banco — dependencias hacia dentro, pruebas en memoria ~500× más rápidas y cambio de base barato; costos (11 vs 3 archivos) y cuándo NO usarlo.
- [[resumen-WL287-indice-base-de-datos-torti-code]] (WL-287, informatica-teoria/): índice B-tree con analogía del archivo escolar, planificador y casos trampa (funciones, comodín, orden de compuestos; incidente GitLab 2021) sobre PostgreSQL 18.
- [[resumen-WL294-balanceador-de-carga-haproxy-torti-code]] (WL-294, informatica-teoria/): balanceo con HAProxy real (proxy inverso, roundrobin, health checks) y sus límites (el check solo comprueba lo que verifica; el balanceador como punto único de fallo).

**Total: 17 fuentes.** El patrón de la casa se mantiene: analogía cotidiana sostenida + demo propia con números declarados y honestidad metodológica.

## Véase también

- [[documentacion-diataxis]] — concepto consolidado a partir de su fuente sobre documentación.
- [[pedro-lino-caceres]] — el otro canal dominante del dominio, con enfoque de redes y laboratorios.
**Actualización 2026-11-16 (consolidación T61 — total 4 fuentes)**: WL-334 ([[resumen-WL334-serverless-cuando-conviene-torti-code]], general/ — FaaS con analogía de dark kitchen: arranque en frío, escala a cero, cobro por ms×memoria, límites de estado y criterios de conveniencia; cifras AWS sin enlaces, señaladas). Registro consistente: divulgación técnica con analogía desmontada al cierre.
