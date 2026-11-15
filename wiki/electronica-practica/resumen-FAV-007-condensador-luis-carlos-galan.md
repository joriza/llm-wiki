# CÓMO FUNCIONA UN CONDENSADOR | CURVAS DE CARGA-DESCARGA CON EL OSCILOSCOPIO

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=3rBmi5CPCs0)
- **Canal**: Luis Carlos Galán
- **Publicado**: 2019-03-28
- **Duración**: 19:56
- **Fuente original**: `raw/electronica-practica/2019-03-28-como-funciona-un-condensador-curvas-de-carga-descarga-con-el-osciloscopio.md`
- **Origen**: favoritos Chrome `Gral/Electronica Basica/`

## Qué trata

El condensador (capacitor) de la construcción al comportamiento dinámico, con experimentos medidos:

- **Qué es**: dos láminas metálicas enfrentadas separadas por un **dieléctrico** (material que no conduce); almacena energía eléctrica y la devuelve. Antecedente histórico: la **botella de Leyden** (metal dentro/fuera de una botella de vidrio, usada para producir chispas en demostraciones). Unidad de capacidad: **faradio** (Faraday), con derivadas µF/nF/pF.
- **Tipos y lectura**: electrolíticos (polaridad marcada + tensión máxima, p. ej. 470 µF / 100 V — no superar la tensión nominal o se estropean), cerámicos y de poliéster (capacidad marcada con 2 dígitos + multiplicador). Medición con la escala de capacitancia del multímetro: el de 470 µF dio 458 µF real — desviación normal respecto al valor nominal.
- **Construcción real**: despiece de un electrolítico — dos láminas metálicas enrolladas con papel dieléctrico entre ellas, cada lámina conectada a una patilla.
- **Experimento 1 (carga/descarga con multímetro)**: circuito RC serie (470 µF + 3 kΩ, fuente 20 V, respetando polaridad); el potencial sube rápido hasta ~20 V al cargar y baja más lento al descargar — la curva es **exponencial, no lineal**. Descarga rápida tocando terminales con alicates aislados (chispa; advertencia: condensadores grandes pueden dar descargas peligrosas).
- **Experimento 2 (curvas cíclicas con osciloscopio)**: generador de funciones con onda cuadrada (0/4 V, ~30 ms por semi-ciclo) sobre RC con 1 µF y **resistencia variable de 10 kΩ**; el canal del condensador muestra las curvas exponenciales de carga y descarga superpuestas a la onda cuadrada.
- **Constante de tiempo τ = R·C**: el tiempo de carga/descarga es proporcional a la capacidad por la resistencia. Con la R variable se ve el espectro completo: R muy pequeña → el condensador sigue casi la onda cuadrada; R creciente → pendientes cada vez más suaves; si la frecuencia no da tiempo, el condensador **no alcanza carga ni descarga completa** y oscila entre valores intermedios (p. ej. ~1 V a ~3,5 V).

## ASR a corregir

«para dios»/«far adiós»/«fabio» = faradio(s) (µF, nF, pF); «día eléctrico»/«un eléctrico» = dieléctrico; «capaz y metro» = capacitímetro; «cas» = kΩ (kilohmios); «fa radio» = faradio; «los cielos copio» = el osciloscopio; «esticara» contexto = R variable; «azysa» = eje X.

## CRUCES

- **[[condensador-rc]]**: página de concepto creada en la consolidación (2026-11-14) con esta como fuente principal — las fuentes de fuentes conmutadas/LEDs 220 V (FAV-008..010) subieron el umbral como usos reales.
- Con [[resumen-FAV-005-como-funciona-un-transistor-del0al1]]: mismo estilo demostración-medida (Montaje + instrumento); el τ=R·C explica el pull-down y temporizadores.
- **[[como-se-hace-lo-cotidiano]]**: la descarga con chispa y la advertencia de seguridad (condensadores grandes almacenan energía letal incluso desconectados) es conocimiento cotidiano de todo reparador de fuentes.

## ADVERTENCIA

Subtítulos automáticos muy degradados en la terminología (ver ASR — «faradio» y «dieléctrico» sistemáticos). El video no deriva la fórmula exponencial (solo la muestra y nombra τ=R·C); los valores de tiempo que lee en el osciloscopio («20 ms/división… 30 ms») son aproximaciones habladas.

## Dominio

`electronica-practica/` (componentes: condensador, circuitos RC, constante de tiempo).
