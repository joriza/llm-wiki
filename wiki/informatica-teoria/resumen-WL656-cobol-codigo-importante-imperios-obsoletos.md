# WL-656 — Por Qué COBOL Es El Código Más Importante Que Nadie Puede Reemplazar (Imperios Obsoletos)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=tuZcKGvSRFc) — Canal **Imperios Obsoletos**, publicado 2026-11-18, 51:02, ES (subtítulos automáticos).
- **Raw**: `raw/informatica-teoria/2026-11-18-por-que-cobol-es-el-codigo-mas-importante-que-nadie-puede-reemplazar.md`
- **Dominio definitivo**: informatica-teoria (precedente WL-313 COBOL; migración T17, vecino: historia-informatica).
- **Procesado**: 2026-11-20 (tramo 101, relevo 2).

## Tesis

El código COBOL (≈800.000 M de líneas en producción, ~3 billones de USD/día, 95 % de los cajeros y 80 % de las transacciones con tarjeta) no sobrevive porque las instituciones lo amen, sino porque **reemplazarlo exige rescatar la «lógica de negocios» que solo existe dentro del código**: decenas de miles de excepciones acumuladas durante 50 años, sin documentación, cuyo único registro es el fuente. El problema no es tecnológico sino organizacional: «amnesia corporativa». El lenguaje es «posiblemente la pieza de ingeniería más estable» jamás creada; lo frágil es el conocimiento humano que lo rodea.

## Casos (todos con cifras)

- **Nueva Jersey 2020**: colapso del sistema de desempleo en pandemia; el gobernador pidió programadores COBOL por TV.
- **Commonwealth Bank of Australia (2007-2012)**: única migración nuclear «exitosa» — 50 M de líneas → SAP, con años de doble ejecución en paralelo y detención ante cada discrepancia de un centavo; costo real 1.000-1.500 M AUD (presupuesto: 580 M). Efecto disuasivo: el mundo bancario archivó sus propios planes.
- **IRS (EE. UU.)**: el Individual Master File (diseñado ~1960, COBOL + ensamblador IBM) sobrevivió a un fracaso de ~4.000 M USD cancelado en 1995 y a CADE/K2 (fechas 2014→2018→2021→~2030); la GAO alerta cada año por falta de personal calificado.
- **Aviación**: Sabre (American Airlines/IBM, años 60) y los GDS aún sostienen el pricing central; el colapso de Southwest (dic-2022, ~16.000 vuelos, ~800 M USD) como lección de deuda técnica aunque no fuera COBOL puro.
- **TSB (Reino Unido, 2018)**: migración de fin de semana → clientes viendo cuentas ajenas, 330 M£ de compensaciones, multas >48 M£, dimisión del CEO Paul Pester.
- **Mizuho (Japón)**: fusión de 3 bancos con puentes entre 3 sistemas heredados — proyecto Minerva, >20 años, >80.000 ingenieros, >3.000 M USD; el colapso de 2021 (4.000 cajeros retuvieron tarjetas) se originó en un desbordamiento de un límite de memoria diseñado en los 70.
- **California (2000s)**: nómina de 240.000 empleados, ~300 M USD incinerados; en 2013 volvieron al mainframe original, que calculaba impecable.
- **Conversores automáticos**: fracasan por la aritmética — COBOL usa decimal de punto fijo exacto; los lenguajes modernos, coma flotante con redondeo. El resultado es un «programa transliterado» que nadie puede mantener. La IA generativa choca con el mismo muro: puede traducir la sintaxis, no inferir la **intención perdida** del programador muerto (alucinar una regla fiscal = riesgo existencial).

## Estrategia real: encapsulación

En vez de reescribir, las instituciones envuelven el mainframe con APIs («modernización cosmética»): el monstruo queda en una «jaula de cristal digital» y la app minimalista del teléfono es solo una máscara. IBM lo monetiza con la serie Z (compatibilidad contractual de 60 años, tolerancia a fallos con reemplazo de procesadores en vivo). El cierre histórico: Grace Hopper y el comité CODASYL de 1959 construyeron «un arreglo provisional que sobrevivió a sus creadores porque no fue diseñado para ser hermoso, sino para ser permanente».

## Evaluación

Divulgación larga y narrativa, con ASR que corrompe nombres (Mindframe=mainframe, Mindfame, «$200 o $ por hora», CHSB, Misujo/Misuúo=Mizuho, SAPE=SAP). Cifras plausibles pero sin fuentes citadas en pantalla (2.ª mano — señalado). Se solapa fuertemente con FAV-446 (mismos casos CBA/TSB/IRS/Nueva Jersey), que aporta Grace Hopper en detalle; este añade Mizuho, California, Southwest y el análisis de los conversores automáticos y la IA generativa.

## Cruces

[[resumen-FAV-446-cobol-imposible-de-matar-fatdev]] (par directo, mismas cifras del CBA), [[historia-software-corporativa]] (eje: la estructura decide el destino), [[historia-lenguajes-programacion]], [[la-etiqueta-miente]] (cifras de 2.ª mano sin fuente), WL-638/633 (juicio de compromisos y deuda técnica), [[paradoja-jevons-software]] (tangencial). Amnesia corporativa ↔ hilo «mantenimiento decide» (WL-617/621/626/630).
