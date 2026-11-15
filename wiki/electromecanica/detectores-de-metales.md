# Detectores de metales: PI vs VLF

**Concepto** consolidado con **5 fuentes** contadas (FAV-512, 513, 514, 517, 518).

## Los dos principios

- **PI (Pulse Induction)** — un solo bobinado que recibe pulsos y detecta el decaimiento inducido en el metal: «Pirata Ruso» [[resumen-FAV-512-detector-metales-pi-pirata-ruso]] (NE555 + TL072 + IRF840, ~14 USD) y su variante «PI Polonés» [[resumen-FAV-518-detector-pi-polones-casero]] (sintonía fina+gruesa, bobina de 20 vueltas n°24, disipador al transistor de potencia).
- **VLF (Very Low Frequency)** — dos bobinas TX/RX cuyos campos se anulan; el metal rompe el equilibrio y el **desfase de fase** da el «ID» del material: demostración con osciloscopio en [[resumen-FAV-513-plato-detector-vlf-como-funciona]] (bobinas en D de 30 vueltas + 100 nF; frecuencia de resonancia crítica embutida en resina en los comerciales; **anillo roto = invisible** para el detector — demostración de la inducción).

## Variantes y aplicación cotidiana

- Salida visual por **barra de LEDs de proximidad**: [[resumen-FAV-517-detector-profundo-indicador-distancia]] (PCB casero por transferencia láser + percloruro — cruce con [[fabricacion-casera-pcb]]; ASR escaso, advertido).
- El arco de seguridad de aeropuertos como versión de escala humana del «campo perturbado»: [[resumen-FAV-514-arcos-seguridad-detector-metales]] (marcapasos sin riesgo).

## Recetas compartidas entre fuentes

- **Bobina**: 20-30 vueltas de alambre esmaltado 0,4-0,5 mm, diámetro 20-25 cm (FAV-512/517/518 coinciden).
- **Ajuste**: girar el potenciómetro hasta el punto exacto **ruido→silencio** — ahí está la máxima sensibilidad (FAV-512 y FAV-517 lo describen igual).
- Alcances observados: tuerca chica a ~10 cm (PI ajustado); por material, anillos de oro/plata detectan bien y hojas delgadas casi no (FAV-518).

## Cruces

- Componentes: [[transistor-bjt]] (BC547/BC557), [[resumen-FAV-503-como-funciona-un-mosfet]] (IRF840/IRF640), [[condensador-rc]] (circuito LC resonante del VLF), [[resumen-FAV-501-inductores-explicados]].
