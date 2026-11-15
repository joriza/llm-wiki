# Resumen: Inversores solares — tipos y cómo elegir (AutoSolar)

- **Fuente**: `raw/electromecanica/2026-11-15-inversores-solares-tipos.md` ([YouTube](https://www.youtube.com/watch?v=laDPoN9HZlo), FAV-524, carpeta Electromecanica/Energias Renovables)
- **Canal**: AutoSolar Energy Solutions (distribuidor — contenido de asesoramiento comercial)
- **Publicado**: 2024-10-20 · **Duración**: 22:09 · **Recopilado**: 2026-11-15

## Qué cubre

Taxonomía completa de **inversores fotovoltaicos** y criterios de elección para casa/negocio — cierra la cadena de potencia del clúster Energías Renovables. Nota de marco: canal vendedor (AutoSolar), guía bien fundamentada pero con catálogo propio de fondo.

## Ideas clave

- **Función primaria**: convertir DC de baterías/paneles en AC de consumo. **Tres familias**:
  - **Aislada** (off-grid): sin red eléctrica; generador + inversor + batería (regulador integrado o aparte). El **inversor-cargador** además carga la batería desde AC (generador/red); el siguiente escalón integra también el regulador de carga. Truco de instalación remota: el inversor enciende/apaga el generador por tensión de batería.
  - **Conectado a red** (string / microinversores): produce solo con sol, sin almacenamiento; el excedente se exporta (tarifas de excedentes/batería virtual). El que **más rápido se amortiza** con buenos hábitos diurnos; habitual en industrial. **String** agrupa todos los paneles en un inversor (económico a partir de ~8-10 módulos); **microinversor** por panel (ideal para tejados multi-orientación, sin equipo ruidoso en casa, baja AC directo del techo).
  - **Híbrido**: necesita red sincronizada **+** carga baterías; el excedente va a la batería en vez de a la red; de noche alimenta consumos desde batería y solo al agotarse tira de red. El habitual en vivienda (el consumo nocturno domina).
- **Detalles de compra**: monofásico vs trifásico (un trifásico alimenta consumos mono, no al revés); **protocolos de comunicación** — marcas abiertas (Victron, Tensite) hablan con casi cualquier batería (Pylontech etc.); las cerradas (Huawei, Growatt) solo con su batería propia, más cara. Victron: robusto, monitorización excelente (Cerbo), caro; Tensite: ~1/3 del precio, monitoriza vía sus baterías.
- **Full backup vs battery-ready**: los híbridos **full backup** (ej. Tensite) siguen alimentando la casa si cae la red; los **battery-ready** (Huawei, Growatt) cortan sin red salvo que se les añada un EPS. La misma distinción crítica que [[resumen-FAV-522-fraude-paneles-solares]] hace central.

## Cruces

- Clúster Energías Renovables: cerrar la cadena [[resumen-FAV-521-paneles-solares-explicados]] → [[resumen-FAV-523-controlador-carga-pwm-mppt-srne]] (regulación DC) → este (conversión AC y arquitectura del sistema); justificación económica en [[resumen-FAV-522-fraude-paneles-solares]].
- Bases: [[resumen-FAV-503-como-funciona-un-mosfet]] (conmutación), [[resumen-FAV-498-factor-de-potencia]] (AC).
