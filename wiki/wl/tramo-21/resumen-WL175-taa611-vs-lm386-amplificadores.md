# Viejo amplificador frente al LM386: ¿qué ha cambiado? || TAA611

- **Fuente original**: `raw/wl/tramo-21/2026-10-24-viejo-amplificador-frente-al-lm386-que-ha-cambiado-taa611.md` ([Vídeo en YouTube](https://www.youtube.com/watch?v=hPqKNT5P02A))
- **Canal**: En Clave de Retro
- **Publicado**: 2026-10-24 · **Duración**: 17:55 · **Idioma**: es-ES (subtítulos manuales)
- **Recopilado**: 2026-11-15 (tramo 21, WL-175)

## Qué trata

Comparación técnica de dos amplificadores de audio integrados de función equivalente (tomar señal de baja amplitud y escucharla en un altavoz): el clásico **LM386** (el que «mucha gente compra hoy», incluidos kits chinos baratos posiblemente falsos) y el veterano **TAA611** de los años 70, de patillaje hoy infrecuente. Prueba empírica con prototipo montado, generador de señal (1 kHz) y osciloscopio.

## Puntos clave

- **Potencia** (~[03:47]): el TAA611 da hasta ~2 W (con 10 % de distorsión ya apreciable), bastante más que el LM386; a alimentación baja (6 V) la diferencia se reduce a ~0,3-0,4 W, pero el viejo mantiene menor distorsión.
- **Distorsión** (~[04:33]): ambos dan 0,2-0,3 % solo a potencia baja (~0,1 W); a 0,3 W el LM386 se dispara (sobre todo con voltajes bajos), mientras el TAA611 se mantiene aceptable hasta ~0,6-0,8 W.
- **Bancada con osciloscopio**: a 6 V el LM386 recorta ya a 70-80 mVpp de entrada (~[06:09]); subiendo alimentación a 9 V la señal limpia alcanza 90 mVpp pero el consumo sube de 440 a 720 mW. El TAA611 acepta 70 mVpp a 6 V con menos disipación (340 mW) y hasta ~110 mVpp con 9 V (1,35 W) — señal de salida notablemente mayor.
- **Consumo en reposo** (~[11:11]): LM386 ~4 mA (coincide con el manual); TAA611 aún menor (~1-2 mA, al límite de precisión de las fuentes caseras — demostración honesta de los límites del instrumental).
- **Clase de operación** (~[13:22]): el bajísimo consumo en reposo y eficiencias fácilmente superiores al 25 % descartan la clase A; ambos son «como poco AB, casi B». Repaso didáctico del límite teórico del 25 % en clase A (50 % solo con cargas inductivas/transformadores, habitual hoy en válvulas, no en transistores).
- **Tecnología**: ambos bipolares; la respuesta sobre su topología interna se deja para un futuro vídeo condicionado a apoyo del canal (excluido de la síntesis).
- Nota de humor didáctico (~[16:39]): no confundir el LM386 con el microprocesador Intel 386.

## Observaciones de triage

- Subtítulos manuales; metodología experimental transparente (prototipo, generador, osciloscopio, fuentes con lectura de consumo) con limitaciones declaradas (edición de audio, precisión de fuentes baratas, prueba de audio no equivalente a escucha en vivo).
- Contenido técnico verifiable de primera mano; sin patrocinios; solo condicionales de más contenido (excluidos).
