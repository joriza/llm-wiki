# Resumen: Paneles solares explicados (Mentalidad De Ingeniería)

- **Fuente**: `raw/electromecanica/2026-11-15-paneles-solares-explicados.md` ([YouTube](https://www.youtube.com/watch?v=Mhvm9keeM5o), FAV-521, carpeta Electromecanica/Energias Renovables)
- **Canal**: Mentalidad De Ingeniería (traducción de The Engineering Mindset)
- **Publicado**: 2023-10-27 · **Duración**: 22:34 · **Recopilado**: 2026-11-15

## Qué cubre

Física y sistemas completos del **panel solar fotovoltaico**: del fotón a la red — segunda fuente del clúster Energías Renovables (con [[resumen-FAV-520-turbinas-eolicas-secretos]]).

## Ideas clave

- **Efecto fotovoltaico**: fotón impacta la celda → expulsa un electrón y deja un hueco; el campo eléctrico de la **unión P-N** los separa; con un cable, los electrones fluyen → corriente DC. «Una celda solar es un LED plano gigante funcionando al revés» (iluminado, un LED genera voltaje).
- **Construcción de la celda**: silicio dopado — **fósforo** (5 electrones de valencia) para la capa N, **boro** (3) para la capa P; **región de agotamiento** con campo eléctrico interno. Revestimiento antirreflejante + superficie rugosa; dedos y barras colectoras (compromiso: captar electrones sin bloquear luz).
- **Escala**: celda ≈ **0,5 V** (más área = más corriente); módulo 36 celdas ≈ 18-19,8 V para cargar 12 V; residencial 60-72 celdas (60 celdas × 0,5 V × 8 A ≈ 240 W). Serie suma voltaje, paralelo suma corriente; respetar el **rango del regulador/inversor** (ej. 100-150 V, 25 A).
- **Arquitectura del módulo**: lámina trasera + EVA + celdas + EVA + vidrio + marco — encapsulado hermético.
- **Sistemas**: directo (solo con luz) → con **controlador de carga** (protege la batería de sobrecarga y de descarga nocturna por el panel) → con **inversor** DC→AC (interruptores electrónicos conmutando rápido) → **conectado a red** (sincronizado con la red, medición neta: el excedente se vende) → **con banco de baterías** (autonomía nocturna y en apagones).
- **Orientación**: perpendicular al sol; altura/acimut según latitud, evitar sombras (software de diseño — patrocinio PVcase declarado).
- **Tipos de celda**: **policristalina** (escamas, 13-16%, barata; bordes de cristal = defectos), **monocristalina** (negro uniforme, 15-19%, más cara — proceso Czochralski con semilla), **capa fina amorfa** (flexible, 5-8%, vida corta, barata).
- **Límite físico**: el silicio necesita ~1,1 eV (fotón de ~1127 nm); fotones más largos no sirven, los más cortos desperdician el exceso como **calor** → solo ~30% aprovechable, y las pérdidas (reflexión, polvo, temperatura, inversor, cables) dejan la eficiencia real en ~13-20%.

## Cruces

- Clúster Energías Renovables: el «par renovable» con [[resumen-FAV-520-turbinas-eolicas-secretos]]; regulador e inversor se desarrollan en [[resumen-FAV-523-controlador-carga-pwm-mppt-srne]] y [[resumen-FAV-524-inversores-solares-tipos]]; rentabilidad real en [[resumen-FAV-522-fraude-paneles-solares]].
- Bases: [[resumen-FAV-499-diodos-explicados]] (unión P-N), [[resumen-FAV-500-capacitores-explicados]], LED (dualidad emisor/fotocelda).

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[energias-renovables]], [[reguladores-carga-solar]], entidad [[mentalidad-de-ingenieria]].
