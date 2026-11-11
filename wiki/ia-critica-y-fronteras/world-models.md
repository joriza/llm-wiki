# World models

- **Tipo**: página de concepto.
- **Dominio**: `ia-critica-y-fronteras/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 1 resumen de la playlist «IA-Recursos» (24/57) — análisis monográfico de 25 minutos con desarrollo sustancial, criterio de fuente única.
- **Ver también**: [[dot-csv-lab]] (fuente) · [[burbuja-de-la-ia]] (el pánico bursátil) · [[limites-de-los-llm]] (el contraste: los LLM no modelan el mundo).

## El concepto

Modelos que **aprenden la dinámica del mundo a partir de vídeo** y lo simulan generando directamente el resultado — sin diseño tridimensional, sin motor de físicas: «una red neuronal que de forma recurrente va cogiendo los fotogramas anteriores y las acciones del usuario». La referencia del corpus es **Genie 3** (Google, anunciado en agosto de 2025): vídeo interactivo en tiempo real (~20 fps) condicionado por prompt **y por teclado** — pedís «un coche bajo el agua» y la IA recombina las físicas aprendidas de cada concepto en una experiencia simulada coherente, «tras ver millones de vídeos».

## Capacidades y límites documentados

- **Físicas aprendidas sin diseño**: colisiones (un neumático que se acerca a un vehículo y colisiona), fluidos, y generalidad no atribuible a memorización (ser un pescado en una cocina, un escalador, un perro en Disneyland) (24/57).
- **Consistencia mejorada**: los elementos fuera de cámara se recuperan al volver (el world model anterior de Minecraft «inventaba mundos» al girar la cámara); límite actual de **1 minuto** de simulación por ventana de contexto (24/57).
- **Defectos**: espejos con retardo y efectos de pesadilla (teoría: los gameplay reales falsifican los reflejos por coste), NPCs estáticos, pérdida de detalle fino con movimientos bruscos, estructuras corruptas en vistas sin datos (una pulga sobre un elefante) (24/57).

## El marco del gradiente DLSS ↔ Genie 3

Aporte conceptual propio de la fuente: **DLSS** (que ya genera la mayoría de los píxeles — «de seis fotogramas, dos son reales y cuatro falsos») y **Genie 3** (la IA lo genera todo) son los dos extremos de un gradiente entre control apuntalado por el motor gráfico tradicional y generación neuronal total. «En medio falta un montón de tecnología por desarrollarse» — renderización neuronal condicionable (triggers, eventos, música, diálogos de NPCs) — «y es ahí donde se va a situar el futuro de los videojuegos». Veredicto: «Genie 3 es todavía el GPT-3 de la generación de mundos» (24/57).

## Para qué se investiga de verdad

Más allá del videojuego: los world models son el camino hacia la AGI — entrenar agentes de **conducción autónoma** (simular situaciones fuera del dataset) y **robótica**: «la imaginación del propio robot» — empresas como 1X investigan que ante una tarea nueva el robot **la simule primero en su modelo del mundo** y luego ejecute (24/57). Uso cercano documentado: educación (estratos geológicos explorables, meterse dentro de un cuadro).

## El ruido mediático y bursátil

La fuente separa el hecho del ruido con el método habitual del canal: jailbreaks de Pliny recreando Mario Kart («demostración de poder, no utilidad»), fakes de «GTA Groenlandia» con modelos de vídeo genéricos, y la caída de acciones de Roblox/CD Projekt/Unity — «prematura», comparable al pánico de Nvidia por DeepSeek un año antes, revertido en semanas (24/57).

## Cruce con el resto de la wiki

- El contraste con [[limites-de-los-llm]]: Marcus sostiene que los LLM no modelan el mundo; Genie 3 es la apuesta de que el vídeo enseña la dinámica del mundo sin él. Ambas posiciones conviven en el corpus sin resolverse.
- La caída bursátil conecta con [[burbuja-de-la-ia]]: el mercado reacciona irracionalmente a demostraciones acotadas.

## Fuentes de este concepto

- [[resumen-google-genie-3-simulador-mundos-crisis-videojuegos-dot-csv-lab]] (24/57, fuente única y monográfica).
