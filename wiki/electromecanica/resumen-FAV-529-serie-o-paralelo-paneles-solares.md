# Resumen: Serie o paralelo — errores comunes en paneles solares (Energía Solar Lab)

- **Fuente**: `raw/electromecanica/2026-11-15-serie-o-paralelo-paneles-solares.md` ([YouTube](https://www.youtube.com/watch?v=Wr08jWeee4Y), FAV-529, carpeta Electromecanica/Energias Renovables)
- **Canal**: Energía Solar Lab
- **Publicado**: 2025-01-14 · **Duración**: 08:58 · **Recopilado**: 2026-11-15

## Qué cubre

Guía práctica de **configuración de paneles** (serie/paralelo/2s2p) con números concretos (panel de 420 W, 45,5 V, 11,3 A) y criterios por escenario — el complemento de conexión de [[resumen-FAV-521-paneles-solares-explicados]].

## Ideas clave

- **Serie**: voltajes se suman (3×45,5 → 136,5 V), corriente constante (11,3 A). Ventajas: menos corriente → **menos pérdidas en cables** (secciones menores, más barato) y se alcanza el **voltaje mínimo de arranque** del regulador. Desventajas: **una sombra o un panel fallado limita toda la cadena**.
- **Paralelo**: corriente se suma (33,9 A), voltaje constante. Ventajas: la sombra o falla de un panel no afecta a los demás, fácil ampliar, admite paneles con características distintas. Desventajas: cables gruesos y fusibles mayores (40 A en el ejemplo), y el voltaje puede no alcanzar el umbral del regulador (18-24 V) en días nublados.
- **Caso camper/caravana**: paneles planos + nubes → **serie gana**: con dos paneles, aunque uno solo dé 10 V, la suma cruza el umbral de arranque; en paralelo se quedarían debajo.
- **Híbrido 2s2p**: dos series en paralelo — 91 V / 22,6 A: equilibrio entre voltaje del regulador y tolerancia a sombras.
- **Protecciones**: verificar el **fusible máximo en serie** del datasheet del panel (25 A en el ejemplo) y dimensionar el fusible principal por configuración (serie 25 A, paralelo 40 A).
- **Elección por instalación**: buen techo uniforme sin sombras → **serie con inversor string**; sombras intermitentes o multi-orientación → **microinversores** (coincide con [[resumen-FAV-524-inversores-solares-tipos]]); los ejemplos de reguladores citan Victron (150 V/35 A serie, 100 V/50 A paralelo).

## Cruces

- Clúster renovables: aplica la regla serie/paralelo de [[resumen-FAV-521-paneles-solares-explicados]] con números y la conecta con la elección string/micro de [[resumen-FAV-524-inversores-solares-tipos]] y los umbrales de voltaje del MPPT de [[resumen-FAV-525-mppt-que-es-como-funciona]]; el efecto sombra = máximos locales falsos de [[resumen-FAV-526-mppt-inversores-maxima-extraccion]].
- Canal Energía Solar Lab: 1ª fuente → candidato a entidad si reaparece.
