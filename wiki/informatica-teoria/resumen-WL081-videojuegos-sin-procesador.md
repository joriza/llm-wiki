# Resumen: ¿Cómo funcionaban los videojuegos sin procesador?

- **Fuente original**: `raw/informatica-teoria/2026-11-02-como-funcionaban-los-videojuegos-sin-procesador.md` (WL-81, tramo 6)
- **URL**: https://www.youtube.com/watch?v=x1N0-uv-D_U
- **Canal**: Herschel González. (divulgación técnica de historia de la computación, explicación clara)
- **Publicado**: 2026-11-02 · **Duración**: ~15 min · **Idioma**: es (subtítulos automáticos, transcripción literal)

## El contenido fáctico (lo citable)

- **La premisa**: Pong (1972) **no tenía CPU** — no había un procesador ejecutando instrucciones que decidieran el rebote o el punto. Las reglas del juego estaban implementadas directamente en el comportamiento de los circuitos: una placa de componentes discretos conectados entre sí.
- **El contexto**: Spacewar (MIT, 1962, sobre PDP-1) ya era software, pero la máquina costaba demasiado para un salón de monedas. **Nolan Bushnell** (con **Ted Dabney**) construyó **Computer Space** (1971) con circuitos especializados — sin computadora y sin microprocesador; fracasó comercialmente por ser difícil de aprender → lección: hacía falta un juego aprendible en segundos. 1972: fundan **Atari**; contratam a **Al Alcorn** (sin experiencia en videojuegos) con el cuento de que era un encargo de General Electric (inventado por Bushnell para que se lo tomara en serio — era un ejercicio de ingeniería). Antecedente: Bushnell había visto la demo del juego de tenis de la **Odyssey de Magnavox**; Alcorn lo superó por su cuenta: rebote variable según la zona de la paleta, sonidos, marcador, dificultad creciente.
- **La técnica (el corazón del video)**: en un CRT el haz recorre la pantalla línea por línea; los circuitos de Pong **sincronizan contadores** (componentes que cuentan pulsos y cambian de estado en secuencia) con ese barrido y generan la señal de video en el momento exacto — **no hay imagen guardada**: cada elemento (línea central, paletas, pelota, números del marcador) se dibuja generando directamente la señal cuando el barrido pasa por su posición.
  - **Paletas**: perillas de resistencia variable → cambian el tiempo de ciertas señales → posición vertical. Relación directa controles→circuito→señal, sin CPU.
  - **Pelota**: contadores controlan cuándo aparece durante el barrido; modificar levemente los tiempos produce el movimiento.
  - **Colisiones**: circuitos que detectan la **coincidencia de señales** pelota-paleta → señal de contacto → modifica el circuito de movimiento (izquierda rebota a derecha y viceversa). Ángulo variable según la zona de impacto (centro ≈ horizontal, bordes = trayectorias distintas) — todo cableado.
  - **Estado**: componentes que conservan estados eléctricos (dirección de la pelota); tras varios intercambios la velocidad horizontal aumenta (la partida se vuelve más difícil cuanto más dura).
  - **Puntos**: detección de salida de la pelota → avanza el contador → la electrónica genera los números en pantalla.
- **El bug convertido en feature**: las paletas no podían llegar del todo al borde superior (limitación del circuito); Alcorn lo dejó — garantizaba que ninguna partida fuera interminable (importante en una máquina de monedas).
- **Los sonidos**: Bushnell quería algo elaborado (multitud); Alcorn no tenía componentes de sobra → reutilizó frecuencias que ya generaba la electrónica → los icónicos «beeps» fueron una solución práctica de ahorro.
- **El folklore**: prototipo probado en **Andy Capp's Tavern** (California) — dejó de aceptar monedas porque **el depósito estaba lleno**, no por avería → señal de potencial comercial.
- **Los límites y el paso al software**: cada juego nuevo con lógica cableada = circuitos nuevos, más componentes, más costo. **Breakout**: Jobs recurrió a Wozniak, cuyo prototipo usaba ~44 chips (brillante pero inmantenible — Atari hizo una versión de producción distinta: equilibrio costo/complejidad/fabricación). La transición: **Gun Fight (Midway, 1975**, remake de Western Gun de Taito) con **Intel 8080** — primer ejemplo citado de arcade con microprocesador; **Space Invaders (Taito, 1978, Nishikado**, también 8080). Convivencia posterior: lógica cableada + chips dedicados + sistemas programables durante años.
- **La reconstrucción moderna**: **Stephen Edwards** (Universidad de Columbia) reconstruyó el Pong original sobre lógica programable moderna (FPGA), permitiendo estudiar la coordinación de componentes de imagen/controles/colisiones/puntuación.
- **La reflexión final**: los procesadores también son circuitos que operan y conservan estado; lo que cambió fue el aprovechamiento (reglas como circuitos específicos → reglas como instrucciones ejecutables). «Hubo una época en que los ingenieros construían directamente mediante electrónica las reglas del juego».

## Valor y advertencias críticas

- **La parte valiosa**: explicación técnica impecable del nivel de transistor-contador (el punto medio que casi nadie enseña entre «Pong es leyenda» y «todo es software»): sincronización con el barrido CRT, contadores como «CPU de tiempos», colisiones por coincidencia de señales, estado en flip-flops. Utilísimo para entender **qué significa «no hay programa»**: las reglas viven en la topología del circuito.
- **Advertencias**: divulgación sin fuentes citadas en pantalla (las anécdotas Alcorn-GE, el depósito de monedas, los 44 chips de Wozniak provienen de las historias estándar de la industria, mayormente documentadas pero aquí sin referencia); ASR menor («contratam», «inmantenible» es mío — el video dice «reproducirlo, revisarlo y darle mantenimiento»); fechas y nombres (Bushnell, Dabney, Alcorn, Nishikado, 8080, Odyssey) correctos según la historia canónica.

## Cruces

- **Dominio destino previsto: `informatica-teoria/`** — historia de la computación; sinergia con el eje historia-de-la-informática del corpus.
- **Cruce conceptual — el tema-candidato más rico**: **«reglas cableadas vs reglas programadas»** es exactamente el eje hardware-agéntico y de destilación del corpus (WL-70, «hardware-agéntico» de la backlog T5): hoy los ASICs de IA vuelven a cablear reglas en silicio para ganar rendimiento — el péndulo circuito↔software es un patrón recurrente de la informática (Pong → 8080 → GPU → TPUs). Cruce directo con WL-79 (Logo/tecnología educativa, misma época) y WL-69 (Clarion: generadores, mismo péndulo automatización).
- **Cruce humano**: Jobs/Wozniak en Breakout ↔ historia de Apple (si hay fuentes futuras, página de entidad); Wozniak «el diseño de 44 chips inmantenible» ↔ tema «minimalismo brillante vs fabricabilidad».
- El bug-de-la-paleta como feature ↔ patrón «limitación convertida en diseño» (reutilizable para el eje de diseño de juegos/producto).
- **Página de concepto**: [[reglas-cableadas-vs-programadas]] — fuente principal de la página (creada 2026-11-14 con WL-69/WL-67/WL-79).
