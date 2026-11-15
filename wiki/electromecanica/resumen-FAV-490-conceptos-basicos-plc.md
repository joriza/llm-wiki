# Resumen: Conceptos Básicos del Controlador de Lógica Programable (PLC)

- **Fuente**: `raw/electromecanica/2026-11-15-conceptos-basicos-plc.md` ([YouTube](https://www.youtube.com/watch?v=NPsepHRSCls), FAV-490, carpeta Electromecanica/PLC)
- **Canal**: Engineering Mindset (español, ASR)
- **Publicado**: 2021-01-10 · **Duración**: 15:11 · **Recopilado**: 2026-11-15

## Qué cubre

Video de introducción al **PLC (Controlador Lógico Programable)**: qué es, de dónde viene y cómo se estructura internamente. Es la pieza teórica de entrada al clúster PLC de la carpeta (LOGO! de Siemens, Cade Simu, arranque estrella-triángulo — [[resumen-FAV-491-cableado-plc-logo]] [[resumen-FAV-494-arranque-estrella-triangulo-plc-logo]]).

## Ideas clave

- **Definición**: una pequeña computadora industrial que ejecuta salidas pre-programadas según entradas y un conjunto de reglas, con intervención manual mínima o nula.
- **Origen histórico**: antes del PLC, la lógica de control se cableaba con **conjuntos de relés** — cambiar el comportamiento exigía recablear físicamente; los bancos de relés (ascensores, subestaciones) eran enormes y difíciles de diagnosticar. La electrónica de estado sólido permitió mover la lógica a software.
- **Arquitectura interna**:
  - **Módulos de entrada**: entradas digitales (on/off: interruptores, tiras bimetálicas, sensores de presencia, nivel) y analógicas (0–10 V o 4–20 mA → número digital para el CPU). Sus 4 tareas: detectar señal, convertir nivel de voltaje, aislar de fluctuaciones y enviar la señal corregida al CPU.
  - **CPU**: microprocesador + memoria que almacena el programa, historial de salidas, fallos y alarmas; circuitos adicionales para comunicaciones remotas (Modbus, LAN).
  - **Módulos de salida**: luces, válvulas solenoides, arrancadores de motor, variadores de frecuencia.
  - Complementos: batería de respaldo, pantalla/HMI, reloj-calendario y fuente de alimentación interna.
- **Ciclo de operación (scan)**: escaneo de entradas → escaneo/ejecución del programa → accionamiento de salidas → autodiagnóstico y comunicaciones. El **tiempo de escaneo** varía según la aplicación (tanque de agua ~2 ms; control de temperatura ambiente ~100 ms); las entradas analógicas tardan más que las digitales.
- **Ejemplos progresivos**:
  1. Tira bimetálica + calefactor: control on/off trivial (un relé bastaría), pero el PLC agrega función de tiempo (horarios, edificios vacíos).
  2. Termostato + válvula actuador 0–100 % con **control PID**: apertura proporcional a la demanda para evitar sobrepaso y oscilación.
  3. Calefacción comercial «optimizada» (optimum start): el sistema aprende la inercia térmica del edificio, verifica ocupación programada, temperatura interior/exterior, y calcula el momento óptimo de encendido; gestión de **bombas duales (operación/espera)** rotadas por horas de uso acumuladas, con alarma y conmutación automática si la bomba activa falla.
- **Ventajas del PLC** sobre relés cableados: programa almacenado localmente (sigue operando ante cortes de control del edificio), conexiones por software, instalación más compacta, reprogramación y detección de fallos fáciles, mismo programa en múltiples unidades y E/S ampliables por tarjetas.

## Notas

- Contenido con patrocinio (Telegärtner/«telecontrol» al inicio) — excluido de la síntesis.
- ASR con garbiñeos típicos («celestes/rehenes» por relés, «pit» por PID, «peces» por PLC); normalizado solo aquí, no en el raw.
- Concepto transversal futuro: el ciclo entrada→lógica→salida es la base del tema PLC que domina esta carpeta. Umbral de canal anotado (Engineering Mindset, 1 fuente en la ventana; el canal ya aparece en electronica-practica con los drivers de LED FAV-008/009 → candidata a entidad en consolidación).
