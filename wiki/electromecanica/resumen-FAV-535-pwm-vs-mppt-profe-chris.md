# Resumen: PWM vs MPPT — cuál conviene (El profe chris)

- **Fuente**: `raw/electromecanica/2026-11-15-pwm-vs-mppt-profe-chris.md` ([YouTube](https://www.youtube.com/watch?v=w5mOt0ramn4), FAV-535, carpeta Electromecanica/Energias Renovables)
- **Canal**: El profe chris ⚡
- **Publicado**: 2022-08-19 · **Duración**: 07:43 · **Recopilado**: 2026-11-15

## Qué cubre

Criterio práctico de **elección PWM vs MPPT con un ejemplo numérico** — la cuarta fuente del subtema reguladores del clúster renovables, ahora con regla de decisión explícita.

## Ideas clave

- **PWM**: recorta la tensión a la del banco de baterías y deja pasar la misma corriente → **la potencia sobrante se pierde** (ejemplo: panel 250 W / 30,2 V / 8,3 A regulado a 14 V → solo 116 W ≈ **46% aprovechado**). Eficiencia 70-90% según aplicación; ~25 USD (30 A).
- **MPPT**: baja la tensión pero **aumenta la corriente** → mantiene la potencia (14 V × 17 A ≈ 238 W ≈ **95%**). Electrónica avanzada, 90-99%, ~100 USD (30 A) — 3-4 veces más caro.
- **Regla de decisión**: si la tensión del panel es **muy superior** a la del banco (panel grande >200 W) → **MPPT obligatorio**; si son **similares** (panel chico ~150 W de 18 V regulado a 14 V, pérdida de solo 4 V) → **PWM rinde 80-85%** y es la compra racional.
- Nota: el canal tiene curso comercial de energía solar (beca por suscripción, en la descripción) — marco ligero de autopromoción.

## Cruces

- Clúster renovables — subtema reguladores ahora con **4 fuentes** (FAV-523/525/526/535): la regla «panel grande→MPPT» complementa el umbral de arranque de [[resumen-FAV-529-serie-o-paralelo-paneles-solares]] y la matemática de [[resumen-FAV-525-mppt-que-es-como-funciona]]; contraste con el corte simple de [[resumen-FAV-533-regulador-voltaje-casero-solar]].

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[energias-renovables]], [[reguladores-carga-solar]].
