# El mayor TIMO de la informática? (Y2K)

- **Fuente original**: `raw/wl/tramo-37/2026-10-11-el-mayor-timo-de-la-informatica.md`
- **Video**: [El mayor TIMO de la informática?](https://www.youtube.com/watch?v=KfC_gkjZewM)
- **Canal**: LinuxChad · **Publicado**: 2026-10-11 · **Duración**: ~31 min · **Ingesta**: 2026-11-15 (tramo 37)

## Qué trata

Documental divulgativo sobre el **efecto 2000 (Y2K)**: origen, pánico, remedios, noche del cambio y el veredicto «¿timo o éxito invisible?»:

- **Origen técnico**: en los 60 el byte era carísimo (IBM 7094); guardar años con 2 dígitos salía rentable incluso contando el coste de arreglarlo después (cálculo de 1996). Alan Greenspan se confesó «uno de los culpables» ante el Senado (1998). El fallo era doble: cálculos de edad negativos (93−55=38 → 00−55=−55) y el año 2000 bisiesto (regla de los divisibles por 400).
- **La voz de alarma ignorada**: Bob Bemer (código ASCII, tecla Escape) avisó en 1971 y 1979 («No quitéis los dos primeros dígitos»); recibió burlas. Ironía: el estándar de correo electrónico de 1982 citaba su artículo y definía el año con 2 dígitos (corregido en 1989). Peter de Jager publicó «Doomsday 2000» (Computerworld, 1993); David Eddy acuñó «Y2K» (1998).
- **El pánico**: Time en portada («Cuenta atrás hacia el Armagedón»), encuesta CNN/Time (más de la mitad creía que fallarían los bancos; 13 % pensaba armarse, 9 % el fin del mundo); Gary North recomendaba «armas, oro y grano» (ya había profetizado una guerra nuclear en 1980); generadores agotados (Home Depot: 1/semana → 5/día), la Fed acumuló efectivo (267.000 M$), telefilm apocalíptico de NBC.
- **Gestión y riesgo real**: consejo presidencial de Clinton (John Koskinen: «problema técnico sencillo, gestionalmente enorme»); el miedo serio era **Rusia** — alerta temprana de misiles, centrales nucleares rusas/ucranianas, y el vigía conjunto EE. UU.–Rusia en Colorado (19 oficiales rusos y estadounidenses compartiendo pantallas la noche del cambio).
- **El remedio**: revisar millones de líneas y probar adelantando relojes (Chrysler cerró una fábrica entera puesta en 31-12-1999; el sistema de seguridad encerró a todos). Tres caminos: expandir a 4 dígitos (definitivo, caro), el apaño de la **ventana** (año pivote 50 → aplaza el problema) y trucos como restar 28 años (los días de la semana vuelven a coincidir). Recontratación de programadores COBOL jubilados; gran empujón de la industria india (Infosys). Coste: ~100.000 M$ en EE. UU. (365 $/habitante), 200-600 mil M$ globales.
- **La noche del 31-12-1999**: casi nada — primeros fallos triviales (tragaperras de Delaware mirando 3 días adelante, videoclub con recargo de 100 años de retraso: 91.250 $, recién nacido con 100 años en Corea). Fallos menores reales: 12 centrales nucleares españolas (sin tocar seguridad), ~100 cajeros de correos en Japón. El fallo feo: el sistema de riesgo de síndrome de Down de Sheffield (UK) calculó mal edades maternas hasta mayo — «el código tiene consecuencias reales». El irónico: 3 horas de «ceguera» de un sistema de inteligencia en Fort Belvoir por el propio parche anti-Y2K.
- **¿Fue un timo?**: argumentos del sí — Italia gastó poco y no pasó nada (respuesta: se informatizó más tarde y arrastraba menos legado, «como decir que te ahorraste carreteras seguras porque hay menos accidentes»); predicciones de fallos del 2-3 % vs observado 0,0001 %; John Quiggin: «la mayor parte del gasto fue improductiva o mal dirigida». Argumento del no — Koskinen: el apocalipsis nunca estuvo sobre la mesa, pero «es lo que les pasa a quienes evitan un desastre: si lo hacen bien, parece que nunca hubo peligro».
- **La historia no terminó**: las ventanas con pivote que se cerraban en 2020 ya dieron fallos (14.000 parquímetros de Nueva York rechazando tarjetas). Y el sucesor anunciado: **el efecto 2038** (contador Unix en 32 bits con signo desborda el 19-01-2038; 64 bits lo aplaza 300.000 millones de años, pero las máquinas embebidas no se actualizan). Coda: COBOL sigue vivo — los sistemas de empleo de EE. UU. colapsaron en la pandemia y Nueva Jersey pidió públicamente programadores COBOL.

## Observaciones de triage

- Buen documental de historia de la informática: cronología densa, testimonios atribuidos (Greenspan, Bemer, de Jager, Koskinen, Hamre) y cifras con fuente señalada en el relato (Time, CNN, Departamento de Comercio, informes del Senado). Marco narrativo con algo de dramatización al inicio — propia del género, señalada.
- El título («¿El mayor TIMO?») es clickbait que el contenido mismo desmonta con matices.
- ASR garbiñea nombres (Bemmer/Bemer, Cobol/Cobble, Kiribati, Fort Belvoir, «De Jagger/De Jager») — normalizado solo aquí por contexto.

## Cruces (en texto plano, candidatas)

- Historia de la tecnología/software: WL-162 (Titanes Tecnológicos), WL-166 (historia del software DJ), WL-200 (Verbatim/Archivo Tecnológico), WL-117 (Autodesk/Reliquias Tecnológicas).
- Tema técnica subyacente: representación de fechas y desbordes de enteros — conecta con WL-254 (límites físicos de recursos, aunque de hardware) y con el efecto 2038 como «Y2K número 2»; concepto candidato «deuda técnica del legado» (junto a WL-252 transacciones y sistemas críticos COBOL).

## Dominio destino sugerido (pendiente de consolidación)

`general` (historia de la informática; consolidar con WL-162/WL-166/WL-200).
