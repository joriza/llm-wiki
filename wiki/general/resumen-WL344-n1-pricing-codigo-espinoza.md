# WL-344 · A mi amigo le pagaron $2.500 por arreglar en 20 minutos lo que otro hizo en 3 meses

- **Fuente**: [`raw/general/2026-09-22-a-mi-amigo-le-pagaron-2-500-por-arreglar-en-20-minutos-lo-que-otro-hizo-en-3-mes.md`](../../raw/general/2026-09-22-a-mi-amigo-le-pagaron-2-500-por-arreglar-en-20-minutos-lo-que-otro-hizo-en-3-mes.md) — vídeo de YouTube `x9Du54J0EaE`
- **Canal**: Código Espinoza — Automatiza tu Vida
- **Publicado**: 2026-09-22 · **Duración**: 07:32
- **Tipo**: videoensayo tutorial (optimización de código heredado + pricing freelance)
- **Dominio destino sugerido**: general (programación/negocio) o ia-uso-practico tangencial

## Tesis

El valor en software heredado no está en reescribir «bonito» sino en medir: un caso real (cierre mensual de una distribuidora que tardaba 40 minutos) se arregla en una tarde observando en producción y cronometrando por bloques — el problema clásico N+1 multiplicado por volumen — y el cobro correcto es por problema resuelto (2.500 USD) y no por hora (50 USD), traducido a cifras del negocio.

## Puntos clave

- **El caso** [00:45]: sistema de 3 meses de desarrollo, «bien escrito» (carpetas ordenadas, funciones cortas) pero con cierres de 40 minutos; corrección de una factura costaba otro día. El acuerdo: pago por diagnóstico (si no lo arregla en una semana, no cobra).
- **Método** [02:03]: no tocar nada el primer día; sentarse junto a la contadora, correr el cierre en producción, envolver cada bloque con un context manager de ~20 líneas que cronometra por etiqueta. Diagnóstico a los 20 minutos: el archivo de productos se abría 3.000 veces (una por factura), 90.000 consultas a la base (una por línea de factura) y 90.000 descargas de imágenes de producto — el clásico error N+1 «visto desde el otro lado».
- **Los tres cambios** [03:34]: carga del archivo fuera del loop (una vez en memoria), una sola consulta con join en vez de 90.000, y descarga de imágenes solo si el reporte se imprime (el contexto lo revela: la contadora imprimía 1 de cada 10). Resultado: 40 min → 1 min 50 en el sistema real; la reproducción con datos sintéticos del autor muestra la contribución de cada cambio (1,5 s → <1 s → 0,07 s, ~46×).
- **Pricing** [04:31]: el cliente no pagó los 20 minutos sino «3 meses de dolor + 20 minutos de claridad» — no mostrar el diff sino el antes/después traducido al negocio (4 días/mes de contadora recuperados vs 2.500 una vez). Receta del autor: cobrar el diagnóstico aparte (100-200 USD), poner precio al dolor («¿cuánto perdés al mes?»), entregar prueba reproducible (video antes/después en la máquina del cliente). Contraejemplo citado: «Joaquín» reescribió con arquitectura perfecta y tumbó una tienda en Black Friday (video anterior del canal).
- **Cierre** [06:29]: kit (cronómetro, demo, plantilla de cotización) en Patreon de pago — señalado; episodio de vergüenza de Martín (casi devuelve 500 USD por «solo 20 minutos») resuelto por el cliente: «no me cobraste 20 minutos, me ahorraste otros 3 meses».

## Evaluación

- Videoensayo docente con caso anecdótico presentado como real (no verificable de forma independiente — señalado); la reproducibilidad la aporta la demo sintética del autor con números concretos. Consejo técnico sólido (N+1, medir antes de tocar) y de negocio (pricing por valor).
- Promoción de Patreon de pago y video-hermanado del canal excluidos de la sustancia; enganche de comentarios excluido.
- ASR leve (repeticiones, «DMI plantilla», «Enginex»→nginx implícito) normalizado solo en el resumen.

## Cruces

- Error N+1 y consultas con join: cruces con [[bases-de-datos]] y fuentes de desarrollo del canal (WL-340 stack, Pelado Nerd WL-343 mismo tramo).
- Pricing freelance por problema resuelto vs por hora: tema recurrente del canal (video «200 dólares por un trabajo de 2.000»); posible página de concepto en consolidación.
- Código Espinoza 1.ª fuente en WL (entidad candidata).
