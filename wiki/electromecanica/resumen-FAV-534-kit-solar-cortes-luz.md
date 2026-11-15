# Resumen: Kit solar para cortes de luz — bajo costo (Electgpl)

- **Fuente**: `raw/electromecanica/2026-11-15-kit-solar-cortes-luz.md` ([YouTube](https://www.youtube.com/watch?v=12CNQP9LSLc), FAV-534, carpeta Electromecanica/Energias Renovables)
- **Canal**: Electgpl
- **Publicado**: 2019-06-25 · **Duración**: 15:17 · **Recopilado**: 2026-11-15
- **Nota**: contenido con patrocinio LCSC declarado.

## Qué cubre

Kit solar de emergencia **sin conocimientos de electrónica**: panel de 10 W + módulos buck LM2596 + batería de gel — para mantener celular, ventilación e iluminación en cortes de luz. Segunda fuente de Electgpl en la ventana (con FAV-504, fuente capacitiva).

## Ideas clave

- **Componentes**: panel 10 W (~17 V, 580 mA, ~10 USD), módulo **LM2596** (buck con preset), baterías de gel 6 V ×2 en serie (12 V, 4 Ah) o una 12 V, diodo **1N5822** (Schottky, 3 A — menor caída que silicio), cargas: USB 5 V, ventilador de PC 12 V, LEDs en serie.
- **Por qué switching y no lineal**: con un **7805**, la caída 17→5 V se disipa como calor (12 V × corriente — quemaría el regulador); el buck conmuta y **la eficiencia crece cuanto menor es la diferencia entrada-salida** — regla general del canal: trabajar a la tensión más alta posible.
- **Carga de la batería**: ajustar el preset a **14,4 V** (máximo de gel según fabricante) y poner el **diodo anti-retorno** para que la batería no inyecte hacia el panel. De noche, un segundo LM2596 baja 12→5 V para el USB.
- **Curvas de carga**: gel = corriente constante luego tensión constante; regla práctica **C/10** (4 Ah → 400 mA máx) o lo que diga el fabricante; ~5 h de sol pleno para cargar 4 Ah a ~600 mA — dimensionar tiempo de carga.
- **Advertencias**: **solo gel** — cargar litio así lo rompe; LEDs en serie para mantener la corriente baja; cálculo de autonomía por carga.
- **Verificación**: medición en exterior con multímetro, ajuste del preset de 20 V a 14,4 V.

## Cruces

- Clúster renovables: el kit mínimo de emergencia frente a los sistemas dimensionados de [[resumen-FAV-521-paneles-solares-explicados]] y [[resumen-FAV-524-inversores-solares-tipos]]; la protección de batería (14,4 V + diodo) es la versión analógica del corte de [[resumen-FAV-533-regulador-voltaje-casero-solar]]; regla de eficiencia buck coincide con el «subir voltaje para bajar corriente» de [[resumen-FAV-525-mppt-que-es-como-funciona]].
- Canal Electgpl: 2ª fuente (FAV-504 + 534) → entidad candidata.
- Bases: [[resumen-FAV-499-diodos-explicados]] (Schottky), [[resumen-FAV-503-como-funciona-un-mosfet]] (conmutación del buck).

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[energias-renovables]], entidad [[electgpl]].
