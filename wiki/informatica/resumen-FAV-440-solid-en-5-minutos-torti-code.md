# FAV-440 — Aprende SOLID en 5 minutos (explicado fácil)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=vHDgTolPMGM) — Canal **Torti Code**, publicado 2026-03-24, 05:15, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-solid-en-5-minutos-torti-code.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).
- Nota: 4.ª fuente del canal Torti Code en la wiki (entidad candidata deferida — Log).

## Marco

Pregunta obligada de entrevista técnica para senior. Respuesta al «si la IA ya genera código, ¿para qué aprender esto?»: **escribir código hoy es fácil; sin estos principios no sabés si la IA te entregó una obra maestra o un código basura que va a explotar mañana — la IA teclea, pero el arquitecto que revisa y manda sos vos** (cruce directo con el clúster vibe coding).

## Los 5 principios (con analogías)

- **S — Responsabilidad única**: una clase hace una sola cosa y tiene una sola razón para cambiar. El chef que cocina, cobra y lava baños: si se lastima en el baño, la cocina se detiene. Ejemplo: la clase `Usuario` que guarda en BD y manda correos — un fallo del proveedor de correo te obliga a tocar (y poder romper) el registro. Dividir en archivo de BD y archivo de correo.
- **O — Abierto/cerrado**: abierto a agregar, cerrado a modificar. La cafetera de cápsulas: el café nuevo no se hace desarmando el motor, se inserta una cápsula. La función de descuentos llena de `if` (VIP, nuevo, Black Friday) se reemplaza por una interfaz base + una clase nueva por descuento, sin tocar el código que ya funciona.
- **L — Sustitución de Liskov**: toda clase hija debe poder reemplazar a la padre sin romper nada. Pedís un vehículo en Uber y te llega un tractor: es vehículo, pero no cumple lo prometido. El `DocumentoSoloLectura` que hereda `escribir()` de `Documento` colapsa — no forzar la herencia: documentos legibles y escribibles por separado.
- **I — Segregación de interfaces**: no obligar a depender de lo que no se usa. El control remoto de 80 botones cuando usás 3. La interfaz gigante `DispositivoInteligente` que fuerza a un reloj sin cámara a implementar `tomarFoto()` vacía — dividir en interfaces pequeñas, cada clase firma solo el contrato que cumple.
- **D — Inversión de dependencias**: el sistema principal no se amarra a una herramienta externa concreta. El piloto de F1 no depende de un modelo de auto: depende de la abstracción del volante. Tienda online amarrada a Stripe → reescritura total si Stripe cae o migrás a PayPal; con una interfaz `PasarelaDePago` a la que le inyectás Stripe o PayPal, cambiar de proveedor no toca la tienda.

## Cruces

- Canal **Torti Code**: 4.ª fuente — entidad candidata deferida. Serie didáctica misma línea: [[resumen-FAV-439-8-estructuras-de-datos-torti-code]] (estructuras) y [[resumen-FAV-433-big-o-vida-real-torti-code]] (Big O); hay una 4.ª fuente en `informatica-teoria/` (concurrencia vs paralelismo).
- **Vibe coding con IA** (umbral ya anotado, FAV-434/435): el argumento «la IA teclea, el arquitecto revisa» replica el human-in-the-loop del podcast Buscaglia y la advertencia de sostener lo que la IA genera de [[resumen-FAV-434-vibe-coding-cinco-agujeros-otro-mas-de-sistemas]].
- SOLID/OOP conecta con la historia de Simula/Smalltalk→C++/Java de [[resumen-FAV-437-tantos-lenguajes-de-programacion-gilada]] (de dónde salió la herencia que Liskov regula).
