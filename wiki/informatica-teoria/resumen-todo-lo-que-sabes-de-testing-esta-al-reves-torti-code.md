# Resumen: Todo lo que sabes de testing está al revés

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-05-26-todo-lo-que-sabes-de-testing-esta-al-reves.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=bivlfa5XUvk — Torti Code, 2026-05-25 (17:02).
- **Nota**: fuente 6/10 del lote informatica-teoria (worker 1). Sin enlaces cruzados todavía (consolidación aplazada).

## Los ladrillos, las habitaciones y el edificio completo

Hiciste un cambio, funciona en tu máquina, lo subís a producción — y **se rompe la mitad de las cosas que no tocaste**. Pasa porque no tenés tests, y hay una razón por la que toda empresa seria los exige: **los tests son el seguro de tu código** — te avisan antes del deploy si algo se rompió. Pero al empezar a leer sobre testing te tiran 50 términos (unit, integration, end-to-end, smoke, regression, snapshot, mutation, acceptance, contract). La tesis del video: con **tres tipos** cubrís el 90 % del trabajo.

La analogía del edificio: primero, **inspección de cada ladrillo** individual (¿cumple las especificaciones? ¿es rápido? ¿es barato?) — los **unit tests**; después, **inspección de cada habitación armada** (¿encajan las paredes? ¿conectan los caños?) — los **integration tests**; y al final, inspección del **edificio terminado** (entrás como inquilino, subís en el ascensor, prendés la luz, abrís la canilla: ¿todo funciona junto?) — los **end-to-end**: lentos, caros, la prueba definitiva. Se llama **pirámide** porque implica muchos unit, un medio de integration y pocos end-to-end.

## Unit tests: los ladrillos

Qué prueban: **una unidad chica de código** — una función, una clase — **aislada**, sin tocar base de datos, red ni sistema de archivos. Ejemplo: `calcularDescuento(precio, porcentaje)`, con error si el porcentaje es negativo o mayor a 100. Un unit test bien hecho cubre cinco casos: 10 % sobre 100 → 90; 0 % → 100; 100 % → 0; error con porcentaje negativo; error con porcentaje mayor a 100 — **los casos borde y los errores**. Se muestran los mismos tests en Jest (JavaScript), Pytest (Python) y JUnit (Java) en paralelo.

Por qué importan: son **rápidos** (milisegundos; miles corren en 30 segundos), **aislados** (si falla, sabés exactamente qué función tiene el bug), son **documentación viva** (leés los tests y entendés cómo usar la función) y permiten **refactorizar con seguridad** (si refactorizás y los tests siguen pasando, no rompiste nada). Qué NO testear: código trivial (getters y setters), código que es solo configuración, y librerías de terceros — **no testeás Lodash; Lodash testea Lodash**.

### El patrón: Arrange, Act, Assert

Cualquier test bien escrito tiene la misma estructura, acuñada por **Bill Wake en 2001** y hoy convención por defecto. Como un experimento de laboratorio: primero ponés los reactivos en la mesa (**Arrange** — preparar datos, mocks y dependencias), después mezclás los químicos de a uno (**Act** — ejecutar la función, una sola acción), y al final medís qué pasó (**Assert** — verificar el resultado). Si mezclás tres reactivos de una y algo explota, no sabés cuál fue el culpable — igual con los tests. Regla práctica: si tu test tiene dos acts o assertions no relacionados, probablemente esté testeando dos cosas — **dividilo en dos: un test, una razón para fallar**.

### Mocks: el doble de acción

En el cine, cuando el protagonista debe saltar de un edificio, lo hace un **doble** vestido igual que interpreta la escena exacta que se necesita — la cámara no nota la diferencia. Un **mock** es eso: en vez de la base real, el servicio externo real o el reloj del sistema, le pasás a tu función un doble falso con el mismo nombre de método y el mismo tipo de retorno, que hace exactamente lo que querés para el test. Objetivo: **aislar la unidad bajo prueba** — si el test falla, es por tu lógica, no porque la red estuviera caída o la base tuviera datos viejos. Ejemplo: `getUsuarioActivo(conexion, id)` — le pasás un mock que finge ser la base y configurado para devolver siempre un usuario inactivo; llamás la función y verificás que devuelve null. Es la diferencia entre debuggear cinco piezas de código o debuggear medio sistema.

## Integration tests: las habitaciones

Qué prueban: **varios componentes trabajando juntos** — función + base, API + base + servicio de cache — sin mockear todo: se usan versiones reales de algunas dependencias. Ejemplo: el endpoint de registro de usuarios, mostrado en tres frameworks paralelos (**Express**, **FastAPI**, **Spring Boot**): recibe email y password, valida campos vacíos, verifica email no duplicado, hashea el password y guarda. El test corre tres casos contra una **base real de testing**: (1) el caso feliz — datos válidos, usuario creado; importante, la respuesta **no debe incluir el password en texto plano** (si lo incluye, hay una fuga de seguridad); (2) el conflicto — email ya existente → error de duplicado; (3) el inválido — campos faltantes → error de validación. Antes de cada caso, un **hook de setup** limpia la tabla para que los tests no se contaminen entre sí (todos los frameworks lo tienen; solo cambia el nombre según el lenguaje).

Importan porque atrapan bugs que los unit no ven: queries SQL mal escritas, validaciones que no coinciden con el contrato real, errores de integración entre módulos. Son más lentos (arrancan la base, hacen requests): **100 ms a 2 segundos por test** — 50 a 200 tests sin que pese.

## End-to-end: el edificio entero

Qué prueban: **el sistema completo desde la perspectiva del usuario** — navegador, frontend, backend, base, todo. En una tienda online, un test e2e simula la compra completa: abrir la página, loguearse, buscar un producto, agregarlo al carrito, ir al checkout, completar el pago, confirmar — y verificar que aparece el mensaje de compra exitosa, paso a paso, en un navegador real. Herramientas: **Playwright** (SDK oficial para JavaScript, Python y Java — mismos selectores y secuencia en los tres) y **Cypress** (popular pero solo JavaScript).

Importan porque validan el flujo completo y atrapan bugs que ningún otro test ve: CSS roto, frontend desconectado del backend, race conditions de UI, integración con servicios externos. ¿Por qué tener tan pocos? Son **lentos** (10 a 60 segundos cada uno), **frágiles** (un cambio chico de CSS rompe el selector y el test falla aunque la feature funcione) y **caros de mantener** (el equipo pierde tiempo arreglando tests rotos en vez de features). Regla: **end-to-end solo para flujos críticos de negocio** — login, registro, compra, recuperación de password — y máximo **10 a 30** en un proyecto típico.

## La pirámide y sus proporciones

Proporción ideal: base de **unit 70-80 %**, medio de **integration 15-25 %**, cima de **e2e 5-10 %** (aproximadamente 70/20/10). ¿Por qué esta forma? Los unit son rápidos, baratos y atrapan la mayoría de los bugs de lógica (muchos); los integration son moderadamente complejos y atrapan bugs de integración (algunos); los e2e son lentos y frágiles, solo para flujos críticos (pocos). **Antipatrón — la pirámide invertida**: muchos e2e y pocos unit → la suite tarda 30 minutos, falla al azar todo el tiempo, el equipo pierde confianza y termina **ignorándolos o borrándolos**. Si tu suite tarda más de 5 minutos, tenés un problema de proporciones.

## El mito del coverage

«Buscamos 100 % de coverage» — **una mentira de managers**. La alta cobertura no significa código bien testeado: es como medir si fuiste al gimnasio por las horas que pasaste adentro y no por las repeticiones que hiciste — podés pasar dos horas sentado en la máquina mirando el celular y figurar en la planilla. El coverage dice que las líneas se **ejecutaron**, no que estás testeando los casos correctos: podés tener 100 % de coverage y **cero assertions útiles**. Objetivo sensato: **70 a 85 % de cobertura en código de negocio; 100 % es paranoia**.

## Cuándo NO escribir tests (y cuándo sí)

Existe. Nadie pone cerradura reforzada y alarma en una carpa que armó para un fin de semana — **la inversión no tiene sentido para algo que no va a durar**. No testear: (1) **prototipos o spikes** (probando si la idea funciona — el código quizá se tira; tests = trabajo desperdiciado); (2) **código de una sola vez** (script de migración que corre una vez y no se toca más); (3) **interfaz en cambios constantes** (rediseñás cada dos semanas → los e2e se rompen sin parar: esperá a que se estabilice); (4) **features en validación** (A/B testing: si no funciona, se borra — no invertir en tests todavía); (5) **código auto-generado** (codegen/ORM generator: testeá la salida, no el generador). Sí testear siempre: **lógica de negocio** (descuentos, comisiones, validaciones), **endpoints de API pública**, **funciones puras con cálculo/formato/parsing**, **bugfixes** (escribí el test que reproduce el bug, después lo arreglás) y **código de librerías que publicás**.

## TDD profesional, sin religión

**TDD** (test-driven development): escribís primero el test, después el código — como el sastre que **toma medidas antes de cortar la tela**: no corta primero y revisa después si queda bien. El ciclo: **Red** (escribís un test que falla porque la feature no existe), **Green** (escribís el código mínimo para que pase), **Refactor** (limpiás el código sin romper el test). Si cortás primero y medís después, terminás con un saco que no te queda. Por qué la gente lo odia: parece más lento al principio — y al principio lo es — pero a mediano plazo tu código es más limpio (escribís lo mínimo necesario), tu cobertura es mejor (los tests salen por diseño) y refactorizar es menos riesgoso. **Cuándo funciona**: lógica de negocio compleja con muchos casos (calculadora de impuestos), bugfixes (test rojo → fix → verde), APIs con contratos claros. **Cuándo no**: interfaz exploratoria (descubriendo cómo se ve), trabajo de rendimiento (no podés escribir un test que diga «esto debería ser rápido»), integraciones con sistemas externos cuyo contrato no controlás. **Veredicto pragmático: TDD para lógica de negocio crítica; test-after para el resto; no test es un problema.**

## Nota sobre IA

La IA es genial generando tests — **pero solo cuando vos ya sabés cómo testear**. Si le pedís «hacé tests de esto» sin criterio, escupe 20 tests del happy path, la mitad sin validar nada útil, y creés tener cobertura hasta que llega el primer bug a producción. Primero aprendé a escribir a mano cinco tests buenos, con sus edge cases y errores; después la IA de verdad te acelera — y sabés qué borrar de lo que genera. Sobre los términos que quedaron (smoke, regression, snapshot, mutation, contract): son **variaciones o casos específicos** de estos tres tipos — con unit, integration y e2e cubrís el 90 % del trabajo.

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen.
- Autopromoción: llamado a suscripción y oferta de vídeo sobre los otros términos — excluidas de la síntesis.
- Sin patrocinios externos identificables.
