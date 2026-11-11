# Resumen: Heating Our Greenhouse With Solar And Sand! How To Make A Sand Battery

- **Tipo**: resumen de fuente.
- **Dominio**: `casa-calefaccion/`.
- **Fuente original**: `raw/casa-calefaccion/2025-11-30-heating-our-greenhouse-with-solar-and-sand-how-to-make-a-sand-battery.md` (video en inglés; transcripción literal por subtítulos automáticos, garbiñeos normalizados solo aquí) — https://www.youtube.com/watch?v=g1V6d8y3rqg — Country Living Experience: A Homesteading Journey, 2025-11-30 (13:19).
- **Nota**: fuente 17/28 del lote casa-calefaccion. Los enlaces promocionales del canal (cupón de descuento en componentes) quedan excluidos de la síntesis.

## El problema y por qué arena

Calentar un invernadero de 20×40 pies en invierno sin electricidad de red [00:02-00:18]. El autor ya había probado tambores de 55 galones llenos de agua pintados de negro: el agua tiene mayor capacidad calorífica y retiene más tiempo, pero **se calienta lentísimo** y nunca llegó a calientes — para su invernadero habrían hecho falta ~40 tambores [01:18-01:53]. La ventaja de la arena: **tolera temperaturas mucho más altas** — el agua hierve a 212 °F (~100 °C), la arena no se funde hasta varios miles de grados — y por eso puede almacenar y devolver mucho más calor por recipiente [01:53-02:20].

## Pruebas de concepto en balde

Tres elementos calefactores a comparación, alimentados directo DC desde un panel de ~20 V: elemento DC de calentador de agua (con pigtail de cable PV 10 AWG y conectores MC4), elemento de hornilla eléctrica, y **alambre resistivo de nicromo de 10 AWG** enroscable por todo el volumen [02:26-04:13]. Datos del elemento DC: arranque 63 °F → **133 °F a los 6 minutos** → ~300 °F a los 19 min → **399-410 °F a los 30 min** (y siguió subiendo con el panel ya desconectado, por inercia); una pulgada más profundo, 240 °F [03:37-05:15]. El hornillo: 142 °F en el borne positivo contra 95 °F en el negativo con 23 V [05:24-05:56]. Detalle de seguridad eléctrica repetido: **no conectar el panel bajo carga** — cubrirlo con cartón (y si es bifacial, taparlo entero) [02:38-02:59]. La inclinación importa: 10,3 V con el panel plano contra 17,25-19,44 V inclinado ~60° en noviembre de Texas [02:59-04:34].

## Sistema completo del tambor

Tambor de acero de 55 galones (que haya contenido jugo de fruta; **nunca químicos corrosivos**), con ~14 bolsas de arena [00:18-00:58, 11:43-11:58]. Arquitectura: batería LiFePO₄ de 48 V tipo marino/RV con calefactores internos → controlador de carga Victron pequeño → inversor Phoenix para ventiladores; barras de distribución (bus bars) y **breaker de corte en el positivo del inversor** [07:03-09:44]. La línea PV se bifurca: una rama al controlador y otra **DC directo al elemento dentro del tambor** — el autor aclara que batería, controlador e inversor son opcionales para otras cargas del invernadero: **panel → arena directo funciona**, como mostraron los baldes [10:29-12:48]. Un divisor 4:1 permite hasta 3-4 elementos o dos tambores [11:16-11:26]. Distribución del calor nocturno: **tubo de desagüe agujereado en el centro del tambor + ventilador de conducto en línea** que extrae el aire caliente, más un ventilador de caja circulando por el invernadero [06:47-07:03, 10:56-11:16].

## Resultado inicial del tambor

Mediodía del primer día: **8,5 A a 73 V ≈ 630 W** entrando, batería llena, arena a **192 °F (~89 °C)** a unas pulgadas del elemento (partiendo de 63 °F, con sol directo sobre los paneles desde las 9:30); quedan pendientes actualizaciones de desempeño a largo plazo [11:58-12:39].
