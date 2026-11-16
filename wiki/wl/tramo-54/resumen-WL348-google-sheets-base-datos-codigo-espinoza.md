# WL-348 — Google Sheets como base de datos: el momento exacto en que revienta

- **Fuente original**: `raw/wl/tramo-54/2026-09-19-google-sheets-como-base-de-datos-el-momento-exacto-en-que-revienta.md` ([vídeo](https://www.youtube.com/watch?v=QKq3pffWbVA))
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-09-19 · **Duración**: 05:33 · **Ingesta**: 2026-11-16 (tramo 54)
- **Tipo**: divulgación técnica/tutorial (límites reales verificados con demo)
- **Dominios destino propuestos (consolidación aplazada)**: general (programación/negocio) o informatica-teoria

## Idea central

Usar Google Sheets como base de datos es una opción legítima para negocios chicos (gratis, en el celular, la contadora ya la sabe usar, historial de cambios, cero instalación) — pero rompe no por tamaño sino por concurrencia y cuotas de API. El video demuestra con código y límites de Google de 2026 dónde está exactamente la línea, y cómo migrar sin drama cuando se cruza.

## Puntos clave

- **Límites duros (2026)** [01:10]: celdas 10 M → 20 M por archivo; columnas 18.272; 100 editores simultáneos; en la práctica se arrastra desde ~100.000 filas con fórmulas/formatos; el número que «sí te va a pegar»: 300 lecturas y 300 escrituras por minuto por proyecto, 60 por minuto por usuario — un script que escribe venta por venta con ~70/min recibe error 429 y pierde ventas sin que nadie se entere (demo: 100 ventas simuladas → ~40 sin guardar).
- **Qué no tiene una hoja vs una base de datos** [01:54]: tipos de datos por columna, transacciones (todo-o-nada), llaves (dos productos pueden compartir código), permisos por fila y bloqueo — dos procesos pueden escribir la misma celda a la vez.
- **Parche parcial** [03:03]: `append_row` → `append_rows` (lote por minuto, 100 filas en un request, cero errores) — regla número uno si se usa como base.
- **El revienta real: carrera de stock** [03:30]: cajera y script venden a la vez desde el mismo stock (leen 10, escriben 7 y 6) → quedan 6 o 7 según quién escribió último; unidades que desaparecen sin borrarse. Lo resuelve una transacción de base de datos; la hoja no está hecha para eso («no es un bug de Google, estás usando una hoja de cálculo como si fuera un banco»).
- **Otros dos modos de rotura** [03:53]: alguien inserta una columna y las fórmulas/script apuntan a la equivocada; alguien ordena la hoja y el script sigue escribiendo en la fila vieja.
- **Las 4 preguntas de la línea** [04:18]: escriben varias personas/procesos a la vez; hay dinero o stock que debe cuadrar al peso; +50.000 filas o +70 escrituras/min; alguien puede ordenar/insertar/borrar columnas sin avisar. Cuatro «sí» → migrar; la migración es simple: SQLite (archivo gratis, ya viene con Python), importar la hoja en ~10 líneas, y la hoja de Google queda como vista de solo lectura para el dueño, actualizada por el script.

## Evaluación

- Divulgación técnica con demo reproducible (simulación de cuota incluida en video); los límites de Google citados de memoria no verificables al pie — señalados; el caso de la distribuidora continúa el de WL-344 (mismo canal).
- Marco comercial al cierre (script y hoja de la demo en Patreon de pago) excluido de la sustancia.
- ASR garbiñeado: «Zeldas»→«según Google», «Gs Spre»→gspread, «cheat»/«kulite»→SQLite, «appened Row»→append_row — normalizado solo en el resumen.

## Cruces

- Segunda fuente del canal (Código Espinoza, con WL-344 del tramo 53 — entidad candidata confirmada); cruces [[bases-de-datos]], transacciones/concurrencia como concepto candidato; patrón de cuotas 429 anecdóticamente afín al protocolo de este repositorio. Caso negocio Latam afín a WL-344 (pricing por problema).
