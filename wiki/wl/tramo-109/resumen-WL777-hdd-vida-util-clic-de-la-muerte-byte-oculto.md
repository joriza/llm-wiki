# WL-777 — Nunca guardes tus fotos en un SSD desconectado: se evaporan solas (parte HDD)

- **Video**: https://www.youtube.com/watch?v=lRk-ysT4zNg
- **Canal**: Byte Oculto (×1)
- **Publicado**: 2026-11-23 · **Duración**: 18:40 · **Raw**: `raw/wl/tramo-109/2026-11-23-nunca-guardes-tus-fotos-en-un-ssd-desconectado-se-evaporan-solas.md`

## Síntesis

Segunda parte de una serie sobre almacenamiento (la anterior cubría el SSD y su fuga de carga desconectado — citada como «vídeo pasado»); esta dedica 18:40 al HDD mecánico, con divulgación física correcta y datos verificables:

- **Física interna**: platos a 5400/7200 rpm (120 vueltas/s, borde >100 km/h), grabación magnética por granitos (norte=1, sur=0); el cabezal vuela a 3-5 nm sobre un colchón de aire (un cabello ≈ 80.000 nm; una partícula de polvo es 20× ese gap) — analogía central: «un 747 a 800 km/h a 1 mm del suelo». Sellado en cuartos limpios de sala blanca.
- **Clic de la muerte**: el brazo no logra leer el mapa maestro (cabezal dañado, rayón, desalineación) y recalibra golpeando el tope rítmicamente; orden estricta al primer clic fuerte: apagar — cada reintento convierte el cabezal roto en lijadora (head crash: virutas metálicas que destruyen todos los platos en segundos). Recuperación solo en laboratorio con cuarto limpio.
- **Vida útil — datos Backblaze** (250.000+ discos, estadísticas anuales públicas): curva de la bañera — mortalidad infantil el primer año (defectos de fábrica), zona plana años 2-4, subida a partir del 4-5 (lubricante, rodamientos, fatiga electrónica). Regla práctica: 3-5 años fiables en uso diario; después «tiempo prestado»; jamás datos irremplazables en un disco >5 años sin segunda copia.
- **Caso histórico — IBM Deskstar 75GXP (2000)**: recubrimiento magnético sobre vidrio que se degradaba con calor → clic de muerte masiva, rebautizado «Deathstar» en los foros, demanda colectiva, venta de la división de discos a Hitachi en 2002.
- **Helio**: los discos de 12-20 TB se sellan con helio (7× menos denso que el aire) → menos turbulencia/calor/consumo, hasta 10 platos delgados.
- **4 enemigos domésticos**: golpes/vibración encendido (el asesino n.º 1 de los externos portátiles — esperar a expulsar y sentir que dejó de vibrar), calor >50-55 °C sostenido (zona feliz 30-45 °C), apagones/picos (la electrónica quema la placa; el disco estaciona el brazo con la inercia del motor), ciclos de estacionado agresivos en modelos ahorradores.
- **Por qué sigue existiendo en 2026**: precio por TB (YouTube/Netflix/videovigilancia corren sobre HDD) y almacenamiento en frío — el magnetismo sobre metal dura años desconectado, a diferencia del SSD (gancho con la parte 1). División recomendada: SSD para velocidad diaria, HDD para archivo frío.
- **Señales previas**: lentitud al abrir carpetas (reintentos por sectores dañados), ruidos nuevos (zumbido agudo, raspado, clic ocasional), y la más fiable: SMART con CrystalDiskInfo — vigilar sectores reasignados/pendientes/no corregibles; alerta amarilla o números crecientes → sacar datos hoy.

## Evaluación

- Divulgación técnica sólida: cifras correctas (nanómetros, rpm, helio 7×), fuente masiva real citada (Backblaze), caso histórico verificado (75GXP/Hitachi). Serie coherente; el título clickbait («se evaporan») corresponde a la parte 1 del SSD, no a esta.
- Garbiñeos ASR normalizados solo aquí: «Crystal Disk Info» = CrystalDiskInfo, «la tarjeta verde» = placa PCB, «Deathstar» correcto como apodo.

## Cableado

- [[self-hosting]] — elección HDD/SSD para NAS y backups; contraste con WL-734 (NAS) y la serie *arr; cruce directo con la parte 1 del mismo canal (SSD, no en la lista).

**Sin patrocinios**; pedidos de suscripción/comentarios del propio canal excluidos.
