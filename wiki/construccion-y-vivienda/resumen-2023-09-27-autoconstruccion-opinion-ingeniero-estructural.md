# Resumen: Autoconstrucción. La opinión de un ingeniero Estructural

- **Tipo**: resumen de fuente.
- **Dominio**: `construccion-y-vivienda/`.
- **Fuente original**: `raw/construccion-y-vivienda/2023-09-27-autoconstruccion-la-opinion-de-un-ingeniero-estructural.md` (transcripción automática, garbiñeos del ASR normalizados solo aquí: «centímetros cuadrados» por «cm²», «kilo newtons»→kilonewtons [kN], «rajado»→agrietado) — https://www.youtube.com/watch?v=XbscgIJRQOI — marcelo pardo (ingeniero estructural), 2023-09-27 (17:53).
- **Nota**: fuente 71/77 (relevo L2-4). Sin patrocinios ni clickbait; tono didáctico con pizca digital. Contexto latinoamericano (uso de «fierro» por hierro, luces de losa en metros).

## La tesis: la autoconstrucción sin cálculo se apoya en un razonamiento peligroso

El ingeniero define autoconstrucción como construir **a partir de la experiencia** del maestro de obra o del propio dueño, sin cálculo estructural. Su lógica implícita es pragmática: «si mis obras anteriores no se agrietaron ni colapsaron, lo que hago está bien». El video demuestra con tres ejemplos numéricos que esta lógica **no escala**: las solicitaciones estructurales crecen mucho más rápido de lo que sugiere la intuición, y que una estructura no haya fallado no prueba que esté bien diseñada.

## Tres ejemplos donde la intuición falla

- **Sección de columnas**: la capacidad de carga es **proporcional al área de la sección transversal**. Pasar de 20×20 cm (400 cm²) a 30×30 cm (900 cm²) más que **duplica** la resistencia por sumar solo 10 cm por lado. En cambio, engrosar el acero (4Ø12 → 4Ø16) casi no incrementa la capacidad. Si la objeción es estética (columnas que sobresalen de los muros), es «lastimosamente» igual la mejor solución.
- **Área de aporte de la losa**: la carga que llega a una columna es proporcional a su **área de aporte** (se traza a la mitad de la distancia entre columnas vecinas, el clásico «sables» que delimitan la tributación). Con luces de 3,50 m la columna central tributa 12,5 m²; con luces de 5 m —que «solo» son un 42 % mayores— tributa **25 m²: el doble de carga**. El maestro de obra que «antes usó 25×25 y le fue bien» subestima que ahora necesita al menos duplicar la columna, no agrandarla apenas.
- **Vigas y momento flector**: con losas de una sola dirección (viguetas prefabricadas), pasar la viga de 3,50 m a 5 m lleva las solicitaciones de flexión de ~41 kN/m a **~3 veces más (+200 %)**; de 4 m a 5 m las duplica. La receta artesanal equivalente —«si eran 2 fierros de 12, pongo 3 o 4»— sigue en **deficiencia**: el acero se dimensiona contra el momento flector, y si este se triplicó, las 2Ø12 se vuelven 6Ø12.

## El argumento del «no falló» desmontado con el medidor

En una estructura bien calculada, cada elemento trabaja en la **zona verde** de su capacidad — alrededor de un tercio de su carga de falla en servicio (una columna que falla a ~200 t trabaja a ~60 t) — buscando equilibrio entre seguridad y economía de material. En autoconstrucción la mixtura es impredecible: elementos sobredimensionados junto a otros en **franja amarilla o al borde del rojo** que no fallan «de casualidad». El problema: a diferencia de un auto con sensores, **no hay medidores visibles en una estructura** — el subdimensionado solo se descubre cuando ya ocurrió la falla. El gráfico que resume el video: autoconstrucción = agujas repartidas al azar por todo el medidor.

## Conclusión

No hace falta contratar obligatoriamente un ingeniero civil: **al menos alguien con formación técnica o técnica superior en construcción** tiene los conceptos (áreas de aporte, momentos, factores de seguridad) para no dimensionar «a ojo». El mensaje central: «hacer números» es lo único que revela si un elemento está sobrecargado antes del colapso.

## Cruces

- Tema nuevo en la wiki (cálculo estructural / autoconstrucción): hasta ahora el dominio cubría envolvente, humedad, diseño y acabados, pero no estructura calculada; este resumen abre ese eje.
- El advertencia «que no haya fallado ≠ que esté bien diseñada» es la contraparte estructural de la regla de [[resumen-2023-08-11-rellenos-cimientos]] sobre rellenos mal compactados: fallas diferidas e invisibles hasta que aparecen.
- Canal nuevo (marcelo pardo) — candidato a entidad si reaparece en futuros lotes; el tono didáctico con pizarra digital recuerda al formato de [[arquitecto-marcelo-seia]], pero con foco en ingeniería estructural y no en diseño.

**Ver también**: [[resumen-2023-08-11-rellenos-cimientos]] · [[arquitecto-marcelo-seia]].
