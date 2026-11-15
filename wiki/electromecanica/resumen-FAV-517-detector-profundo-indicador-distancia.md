# Resumen: Detector profundo con indicador de distancia por luz (DHT Project)

- **Fuente**: `raw/electromecanica/2026-11-15-detector-profundo-indicador-distancia.md` ([YouTube](https://www.youtube.com/watch?v=PP9lmebXGMc), FAV-517, carpeta Electromecanica/Proyectos)
- **Canal**: DHT Project
- **Publicado**: 2024-10-20 · **Duración**: 14:57 · **Recopilado**: 2026-11-15

## Qué cubre

Montaje completo de un **detector de metales de profundidad con indicador de distancia por luces** (barra de LEDs que crece con la cercanía del blanco): fabricación casera del PCB y ajuste. ASR **escaso** (video de montaje, narración mínima en inglés) — el resumen cubre solo lo verificable en el audio/descripción; PCB disponible en Drive (enlace en la descripción).

## Ideas clave

- **PCB casero**: lija de grano fino → limpieza con alcohol → **transferencia por impresora láser sobre papel fotográfico**, solución **70% alcohol + 30% acetato de butilo**, 15-30 min, y **percloruro de hierro** en agua para el grabado (método de planchado alternativo al de plancha).
- **Electrónica**: op-amp **4558** reciclado de un amplificador viejo (alternativa **TL072**, ojo con falsificaciones); parlante recuperado de una radio vieja — todo reciclaje.
- **Bobina de búsqueda**: **25-30 vueltas, diámetro 20 cm**.
- **Ajuste**: tras aplicar 12 V esperar **~5 s de estabilización**; si el parlante cruje, ajustar hasta silencio; luego el **trimpot de 20 kΩ** hasta que **todas las luces se apaguen** (punto de equilibrio — la proximidad del metal re-enciende la barra).

## Cruces

- Clúster detectores de metales (4ª fuente): variante con **salida visual por LEDs** frente a la tonal de [[resumen-FAV-512-detector-metales-pi-pirata-ruso]] y la fase de [[resumen-FAV-513-plato-detector-vlf-como-funciona]]; el ajuste al punto de silencio repite la receta de FAV-512 y [[resumen-FAV-518-detector-pi-polones-casero]].
- Método de PCB casero: cruza con el clúster fabricacion-casera-pcb (FAV-312/313, dominio electronica-practica) y [[diseno-pcb-herramientas]].
