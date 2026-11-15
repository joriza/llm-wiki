# FAV-469 — Simulador para Arduino: UnoArduSim (Cefuve)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=ph0tcXAkOrQ) — Canal **Cefuve**, publicado 2019-12-06, 09:41, ES (subtítulos automáticos, **ASR muy degradado** — contenido reconstruido en el resumen).
- **Raw**: `raw/electronica-practica/2026-11-15-simulador-unoardusim-cefuve.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia; `list=` de playlist propia ignorada por S4).

## Qué es UnoArduSim

- Simulador de código y componentes de Arduino desarrollado por un **profesor de la Queen's University** (Leonard Payne); se descarga desde su página (localizable buscándolo en Google).
- **Portátil**: carpeta descomprimida con pocos archivos, sin instalación — versión 1.3 pesa ~12 MB y la 2.5 ~20 MB. La 2.5 añade componentes como display de 7 segmentos; en común: motores, switches y LEDs por defecto.

## Flujo de trabajo en el simulador

- Doble clic abre el **editor de código**; Ctrl + scroll del mouse para agrandar la letra (útil para proyectar en clase).
- **Compilar** (verificación de sintaxis) → botón de **play** para simular. Panel inferior de **memoria**: muestra lo que el programa va guardando. Botones para parar y transferir el código; también se puede arrastrar al área de la placa.
- Componentes simulados: los pines configurados muestran LEDs (verde/rojo según estado HIGH/LOW) y se conectan «a tierra» visualmente.

## Ejercicio resuelto: baliza + cinta transportadora

- Consigna: al iniciar el proceso, encender una **baliza** (pin 2, simulada con LED) durante 2 s; al apagarse, arranca una **cinta transportadora** (pin 3) que **parpadea** cada 100 ms como indicación de funcionamiento.
- Solución: en `setup()` se declaran ambos pines como salida; `digitalWrite(2, HIGH)` + `delay(2000)` + `digitalWrite(2, LOW)` para la baliza; el parpadeo del pin 3 (HIGH → delay 100 → LOW → delay 100) se pega dentro de **`loop()`**, que se ejecuta indefinidamente — sin el loop la secuencia correría una sola vez.
- Simulación verificada en pantalla: 2 s de baliza y luego el parpadeo continuo del pin 3.

## Del simulador a la placa real

- El código se copia (Ctrl+C) al **Arduino IDE**, se verifica el puerto y se sube: mismo comportamiento observado en la placa física. El simulador sirve para entender la estructura del programa sin hardware; «si no tienes ningún conocimiento previo no te va a servir mucho» — es herramienta de comprensión, no sustituto del aprendizaje base.

## Valor

Ficha práctica de una herramienta del ecosistema Arduino, útil como alternativa sin hardware para practicar setup/loop/pinMode/digitalWrite/delay — los mismos conceptos de [[resumen-FAV-467-programar-arduino-uno-desde-cero-cap2-johann-perez]] y [[resumen-FAV-468-arduino-desde-cero-cap2-instalacion-ide-bitwise-ar]]. Canal Cefuve: 1 fuente (umbral no alcanzado). Anticipa el clúster de simuladores de Arduino (FAV-472 «7 simuladores para 2026», pendiente en la cola — umbral potencial).

## Notas

- ASR severamente degradado (p. ej. «un hogar to sing» = UnoArduSim; «muriendo y cardús» = buscando en Google): nombres propios y comandos normalizados aquí SOLO en el resumen, jamás en el raw. Música de fondo sin contenido; CTA excluido.
- Ver también (simulación): [[resumen-FAV-472-siete-simuladores-arduino-2026-top-projects]].
