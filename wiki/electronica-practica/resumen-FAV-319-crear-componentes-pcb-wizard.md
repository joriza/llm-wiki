# Cómo crear componentes en PCB Wizard (Kriss Electronics)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=iT3pGlj_hec)
- **Canal**: Kriss Electronics
- **Publicado**: 2017-02-11
- **Duración**: 10:46
- **Fuente original**: `raw/electronica-practica/2017-02-11-crear-componentes-pcb-wizard.md`
- **Origen**: favoritos Chrome — Electronica y TV (pendiente eliminación de bookmark al cierre de la ventana total)

## Qué trata

Cómo crear **encapsulados propios en PCB Wizard** desde cero, caso real: **TDA2050 con encapsulado Pentawatt** (la librería del programa cubre componentes comunes pero carece de potenciómetros, conectores de audio, integrados de potencia, etc.):

1. **Punto de partida**: la **hoja de datos** — tabla de distancias normalizadas y plano acotado en 3 vistas del encapsulado.
2. **Pads (islas)**: nueva librería (Herramientas → Librería → Nueva); propiedades del pad (alto/ancho, forma circular/cuadrada/redondeada, diámetro del orificio — caso: 2,2 × 3,2 mm); **grilla personalizada de 0,1 mm** para posicionar con exactitud; herramienta de medida con **origen reubicable** y lectura de distancia del cursor en pantalla; ocultar la grilla para ver mejor; primer pad en el centro del origen y los demás por coordenadas (p. ej. 4 mm arriba / 1,7 mm derecha).
3. **Silueta (silk screen)**: dibujar en la capa Silk Screen (líneas negras, típico de la máscara), rectángulo del tamaño exacto sin relleno (transparente), líneas para los pines que asoman; **numerar cada terminal** (Edit Symbol → Insert, clic en el centro de cada pad); agrupar todo (Arrange → Group).
4. **Vista real del componente**: copia del dibujo sin pads, asignada a la capa **Real Component**, coloreada con grises para simular luz/sombra de la carcasa y pines metálicos; superponer con precisión sobre los pads y agrupar ambas capas.
5. **Registro en librería**: Edit Symbol → **Make Symbol** (campo K = nombre del encapsulado con sufijo «package», Name y Description); propiedades de referencia — **U** para integrados, D diodos, Q transistores, número 1; Symbol → **Add to Library**.
6. Ejemplos adicionales del autor: jack 6,33 mm estéreo, TO-220 con disipador, conector de auriculares 3,5 mm.

## ASR a corregir / estado de la transcripción

Transcripción ASR de buena calidad (con puntuación). Detalles: «exección puncage» = **«...package»** (sufijo del campo K); «SCK de 6.3 3 mm» = **jack de 6,35 mm**; «la ilusión de que el componente posee luz y sombra» — correcto tal cual.

## CRUCES

- Tercera voz del **concepto-candidato diseño-pcb-herramientas** (con [[resumen-FAV-317-tutorial-basico-kicad]] — creación de símbolo/librería en KiCad es el paralelo directo — y [[resumen-FAV-318-livewire-pcb-wizard-ideatronic]]; EasyEDA FAV-320..322 en el relevo siguiente). Página única de concepto en la próxima consolidación.
- La capa silk screen y su impresión con mirror conectan con [[resumen-FAV-313-serigrafia-casera-pcb-ideatronic]] (serigrafía casera de PCB).

## Dominio

`electronica-practica/` (herramientas de diseño de circuitos impresos).
