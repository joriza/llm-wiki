# FAV-472 — ¡7 fantásticos simuladores de Arduino para 2026! (ToP Projects Compilation)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=FFQk0DiTtPE) — Canal **ToP Projects Compilation**, publicado 2025-10-03, 24:38, EN (subtítulos automáticos).
- **Raw**: `raw/electronica-practica/2026-11-15-7-simuladores-arduino-2026-top-projects.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia).

## Recorrido de simuladores

- **SimulIDE** [00:00]: simulador de escritorio amigable para principiantes; circuito sobre placa virtual, doble clic cambia valores, y el código se carga como **archivo .hex** vía «load firmware» (compilado antes en el IDE). Botón de encendido inicia la simulación, con pausa/stop.
- **Crumb** [03:20]: entorno visual atractivo que imita el montaje físico en breadboard; vista 3D con zoom/pan/rotación y editor de código integrado en el Nano virtual. Panel lateral muestra detalles y valores de componentes; **los componentes mal colocados no se mueven: hay que borrarlos y recolocarlos**. Incluye osciloscopio integrado para ver gráficas de voltaje/corriente en tiempo real en cualquier parte del circuito; generador de señales 12 V (AC) y fuente 12 V (DC); modo «interact» para probar. Mención aparte a **Altium 365** [06:46] para llevar diseños online, compartirlos y revisarlos con equipo o fabricante.
- **Oaki** [07:18]: simulador **gratuito en el navegador** (sin instalación ni cuenta); workspace dividido en circuito virtual en grilla (derecha) y editor de código (izquierda) que compila al instante; al iniciar, sube el código a la placa virtual y lo corre en tiempo real. Caveat: con proyectos grandes la simulación puede quedar lenta. *(Nombre del sitio según el ASR del video.)*
- **Tinkercad Circuits** [11:03]: tras login, elegir entre diseño 3D o circuitos; workplane central + panel de componentes; cableado arrastrando de pin a pin (colores de cable: rojo alimentación, negro tierra), monitor serie integrado y vista esquemática además del breadboard.
- **Simulador Uno/Mega de escritorio** [14:24–16:57]: menú con selector de frecuencia de reloj, indicador de velocidad simulación/tiempo real y modo debug; carga de firmware por **.hex** obtenido con «verbose output» del IDE; incluye opciones poco comunes como **puerto Ethernet, tarjeta SD e I/O expander**; terminal serie y bootloader de Arduino en el menú de herramientas.
- **UnoSim** [17:16]: software gratuito de escritorio, interfaz distinta (no se conecta todo directo al Arduino); preferencias permiten alternar objetivo **UNO/Mega**; el código se escribe o pega del IDE y cada componente se configura por separado; solo soporta una **lista limitada de librerías** (las de terceros fallan por directivas no reconocidas) y **no modela el timing a nivel de instrucción** — hay que sincronizar con `delay` y bucles.
- **Proteus (LabCenter Electronics)** [20:26]: el más avanzado y profesional del recorrido; el Arduino se monta componente a componente (LED onboard, circuito de reset, cristal — «actúa como una placa Nano»), sin header pins cableables directos: se crean **terminales** para cablear. Instalación de librerías de sensores y salidas (muchas hechas por la comunidad) y simulación conectando todo a los pines del esquemático.

## Valor

Panorama útil y actual (2025-2026) del ecosistema de simulación Arduino, con el criterio de decisión implícito: navegador y sin cuenta (Oaki, Tinkercad) vs escritorio con más fidelidad (SimulIDE, Proteus). Complementa el clúster **simuladores de Arduino** del dominio: [[resumen-FAV-469-simulador-unoardusim-cefuve]] (UnoArduSim, simulación de código y componentes) y cruza con diseño de placas [[diseno-pcb-herramientas]]. Canal ToP Projects Compilation: 1 fuente (umbral no alcanzado).

## Notas

- El título promete 7 herramientas; el conteo del recorrido es difuso (una sección parece compartida entre dos simuladores de escritorio). Los nombres «Simole IDE», «Oaki» y «UnoSim» provienen del ASR en inglés y pueden variar respecto a la grafía real de los productos.
- Video tipo compilación sin autoría experta evidente; tratado como catálogo, no como análisis profundo.
- Ver también: [[resumen-FAV-471-pines-analogicos-como-digitales-editronikx]] (práctica de pines).
