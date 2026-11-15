# FAV-408 — Amplificador sencillo de audio con un transistor 13003 (TOKIO-ELECTRONIC)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=GgRRr-RMiws) · `raw/electronica-practica/2026-11-15-amplificador-audio-transistor-13003.md`
- **Canal**: TOKIO-ELECTRONIC (ES, ASR)
- **Dominio**: electronica-practica
- **Fecha**: 2026-11-15

## Qué trata

Construcción de un amplificador de audio minimalista de un solo transistor usando el **13003** — un transistor NPN de alta tensión concebido para conmutación rápida en fuentes conmutadas (fluorescentes/cargadores baratos), no para audio — reutilizado aquí como amplificador de clase A de emisor común.

## Circuito

- **Entrada**: conector jack 3.5 mm (dos conductores, señal + masa) desde el teléfono como fuente de audio.
- **Acoplamiento de entrada**: condensador electrolítico de 1 µF/16 V hacia la base del transistor.
- **Protección de base**: resistencia en la entrada de los 12 V para limitar corriente de base y no estropear el transistor.
- **Salida**: corneta de 8 Ω (el demo usa una bocina de ~60 W) alimentada directamente desde los 12 V a través de la bobina del altavoz; el transistor modula la corriente.
- **Alimentación**: 12 V DC de fuente de laboratorio.

## Puntos clave

1. El 13003 se consigue gratis en casi cualquier fuente conmutada desechada — el vídeo es esencialmente una reutilización creativa de componentes de recuperación.
2. No es audio Hi-Fi: un solo transistor en emisor común da ganancia pero con distorsión apreciable; es un ejercicio didáctico de mínimo componente («no es la única forma de realizar un amplificador»).
3. El montaje final es un ejercicio de creatividad: todo cabe en un cajón pequeño; los componentes (condensadores, resistencias, jack) son genéricos y baratos.

## Cruces

- [[transistor-bjt]] — el 13003 es un NPN bipolar; este es el primer uso del clúster como amplificador de señal (los resúmenes previos lo usaban como conmutador).
- [[resumen-FAV-364-micros-industria-mito-tr3bol]] — contrapunto: en industria se argumenta que los microcontroladores sustituyen a estas soluciones discretas analógicas.
