# WL-469 — Por qué dejamos las STEP DOWN y STEP UP

- **Fuente original**: `raw/wl/tramo-77/2026-08-28-por-que-dejamos-las-step-down-y-step-up.md` ([Vídeo](https://www.youtube.com/watch?v=7A3c34Nn_Ic))
- **Canal**: TR3BOL ARGENTINA (Wá, fundadora/CEO; ~700 desarrollos industriales, normas IPC/CID — autofirmado)
- **Publicado**: 2026-08-27 · **Duración**: 15:17
- **Dominio provisional**: electronica-practica (diseño PCB/alimentación — técnica de estudio de ingeniería)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Análisis técnico de por qué los módulos comerciales **buck/boost** (step down/up) fallan en producto y cuándo pasar a diseño a medida.

## Contenido técnico

- **Definiciones**: buck (LM2596 3 A clásico, XL4015 5 A) vs boost (MT3608 1,2 MHz — «recomendamos evitarlo o analizarlo con mucho cuidado»); conmutación ~90 % eficiencia vs regulador lineal que quema el excedente.
- **Tesis central: eficiencia ≠ robustez** — medición real en osciloscopio de una buck comercial bajo carga: ripple de mediana frecuencia + ruido de alta frecuencia («montaña rusa»); un ADC o micro con referencia contaminada da mediciones erráticas o se resetea; fallas intermitentes que se confunden con software (ejemplo típico: el consumo del WiFi que dispara el problema).
- **5 defectos de los módulos comerciales**: (1) mal ruteo de potencia sin retorno de corriente (lazos que radian), (2) márgenes al límite de la norma IPC → fallas de lote, (3) ancho de pista no calculado para la corriente real, (4) **chips clonados** con protecciones que no coinciden con el datasheet, (5) **disipación insuficiente** — el crítico.
- **Experimento propio**: cortocircuito sostenido — módulo comercial con protección térmica cíclica termina quemándose (mala disipación); su diseño a medida (mismo chip, pads térmicos, planos GND, vías térmicas, prácticas IPC) recupera en todos los casos y baja el ripple de **140 mV a 60 mV** en igualdad de condiciones.
- **Referencia inestable**: el potenciómetro multivuelta es componente mecánico (vibración, temperatura, dedos) — en producto se fija la salida por diseño con resistencias de precisión.
- **Aplicaciones industriales típicas**: boost 3,7 V Li-ion → 5 V → 3,3 V con selector MOSFET batería/USB y gestión de carga; buck desde 24 V industriales (sensores 4-20 mA) con protección anti-inversión.

## Señales de triage

- Técnica de primera mano con experimento propio y mediciones concretas; el marco comercial (estudio de diseño + cursos de PCB) es la razón del contenido — patrocinio propio declarado, excluido de la síntesis.
- Cifras (140 vs 60 mV, 90 % eficiencia) presentadas como mediciones propias — reproducibles en principio, sin publicar protocolo.
- CTA/CTAS excluidos.

## Cruces

- Cluster electrónica práctica: WL-404 (electronica-practica previa), WL-464 (Frigate/HA — alimentación de sistemas siempre encendidos), WL-420 (cocina/térmica no aplica); tema alimentación conecta con WL-403 (electromecanica) si aplica.
- Posible entidad de canal TR3BOL ARGENTINA (1.ª fuente).

## Veredicto de triage

Contenido técnico sólido con demo propia; conservar.


## Ver también

- [[tr3bol-argentina]]
