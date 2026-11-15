# Resumen: Capacitores Explicados

- **Fuente**: `raw/electromecanica/2026-11-15-capacitores-explicados.md` ([YouTube](https://www.youtube.com/watch?v=h_m6qFRNITU), FAV-500, carpeta Electromecanica/Electronica)
- **Canal**: Engineering Mindset (Mentalidad De Ingeniería)
- **Publicado**: 2020-02-17 · **Duración**: 08:42 · **Recopilado**: 2026-11-15
- **Subtítulos**: manuales (es) — transcripción limpia, sin garbiñeos de ASR

## Qué cubre

Fundamentos del **condensador/capacitor** (álbum de la serie de componentes de Engineering Mindset: sigue a [[resumen-FAV-499-diodos-explicados]] y precede a inductores/transistores FAV-501/502), con la versión más elemental del concepto que en electronica-practica ya vive como [[condensador-rc]].

## Ideas clave

- **Qué es**: almacena carga eléctrica — como una batería pero con menos energía y carga/descarga **mucho más rápida**; por eso está en casi toda placa.
- **Analogía estructurante**: tanque de agua tras una válvula — suaviza interrupciones del suministro; un circuito encendido/apagado rápido hace parpadear una luz, y con condensador esta se mantiene (el condensador descarga durante los huecos).
- **Construcción**: dos placas metálicas (aluminio) separadas por un **dieléctrico** aislante (cerámica) que se polariza ante el campo eléctrico. Raya/símbolo marca el lado **negativo** (polaridad — conectar al revés lo daña).
- **Cómo se carga**: la batería empuja electrones a una placa mientras la otra los cede; **los electrones nunca cruzan el dieléctrico**. Al igualar voltaje con la batería, cesa el flujo. La atracción entre cargas opuestas separadas (campo eléctrico) mantiene la energía almacenada incluso desconectada la batería; con una lámpara en el circuito los electrones encuentran camino y la encienden hasta que el voltaje cae a cero.
- **Voltaje = diferencia de potencial**: la lectura del multímetro compara dos puntos (analogía manómetro/tubería); misma terminal = 0.
- **Lectura de valores**: **capacitancia en faradios** (normalmente µF, «u con cola») y **voltaje máximo** — superarlo puede hacer explotar el condensador (demostrado en cámara lenta).
- **Usos**: **corrección del factor de potencia** con bancos de condensadores en edificios (contra la carga inductiva — cruce directo con [[resumen-FAV-498-factor-de-potencia]]) y **alisado del rizado** tras un puente rectificador CA→CC (cruce con [[resumen-FAV-499-diodos-explicados]]); además motores de inducción, ventiladores de techo y aire acondicionado.
- **Seguridad y medición**: almacenan alto voltaje incluso desconectados — verificar con multímetro y **descargar a través de una resistencia** hasta mV antes de manipular; capacitancia medida con la función µF (lecturas cercanas pero no exactas: 1000 µF → ~946; 33 µF → ~36).

## Notas

- Canal Engineering Mindset **4ª fuente de la ventana** (490/498/499/500) — entidad candidata firme para consolidación.
- Cruces: [[condensador-rc]] (electronica-practica), [[resumen-FAV-498-factor-de-potencia]], [[resumen-FAV-499-diodos-explicados]].
