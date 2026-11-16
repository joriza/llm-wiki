# WL-313 — ¿Qué hace un lenguaje de 1959 manejando nuestro dinero?

- **Fuente original**: `raw/wl/tramo-47/2026-11-14-que-hace-un-lenguaje-de-1959-manejando-nuestro-dinero.md`
- **Video**: [RsQv7VecLoI](https://www.youtube.com/watch?v=RsQv7VecLoI) (16:38, publicado 2026-11-14)
- **Canal**: Gilada (divulgación informática, subtítulos manuales es-419)
- **Recopilado**: 2026-11-16 (transcripción de subtítulos manuales, literal)

## Resumen

Video de divulgación sobre por qué COBOL (1959-60) sigue ejecutando nóminas y banca. Origen: en 1959 fabricantes, usuarios y el Departamento de Defensa de EE. UU. impulsaron un lenguaje común orientado a negocios, con FLOW-MATIC de Grace Hopper como antecesor directo; primera especificación en 1960 y un mismo programa probado en máquinas de dos fabricantes — la promesa de portabilidad. Características técnicas explicadas con ejemplos de nómina: sintaxis tipo inglés (ADD/MOVE/DISPLAY), cuatro divisiones del programa, datos descriptos explícitamente (un código de empleado numérico pierde ceros a la izquierda si se trata como número), aritmética decimal exacta con posiciones fijas frente a la aproximación binaria de las fracciones decimales, y la necesidad de reglas de redondeo (dividir entre tres personas). Procesamiento por lotes nocturno con dependencias entre trabajos y el modo transaccional (CICS de IBM) como los dos modos de uso vivos.

El corazón del video es la deuda técnica como acumulación de decisiones humanas: convenios viejos, fusiones que duplican códigos de empleado, excepciones vigentes desde 1987 que nadie se anima a borrar porque «esa línea sigue determinando cuánto cobra un grupo de personas», conocimiento repartido en manuales olvidados y en la memoria de empleados que se van. Por eso reemplazar COBOL exige presupuesto, pruebas comparativas (ejecutar el programa viejo y el nuevo sobre los mismos casos límite — el día exacto del aniversario de antigüedad — y distinguir la comprobación de resultados de las operaciones reales de pago). El problema del año 2000 (Y2K) como caso emblemático del coste de decisiones acumuladas (años de dos dígitos), con la auditoría del gobierno de EE. UU. documentando la transición; informe de 2025 de la misma oficina con 11 sistemas federales necesitados de modernización (Tesorería con COBOL/assembly, hardware sin soporte, escasez de personal). Herramientas actuales: GnuCOBOL (compilador libre multiplataforma) e IBM aplicando IA para explicar código y traducir COBOL a Java con mecanismos de verificación de equivalencia — advirtiendo que las traducciones generadas por modelos no pueden darse por correctas sin validar. Cierre: «la tecnología que realmente sirve es invisible hasta que falla».

## Apreciación crítica

- Buena divulgación factual y pedagógica: explica conceptos reales (decimal fijo, batch, CICS, Y2K, GnuCOBOL) con referencias concretas y verificables (auditoría GAO de EE. UU., informe 2025, paper de IBM sobre pruebas de equivalencia COBOL→Java). Marco divulgativo, sin citas formales al pie, pero las afirmaciones históricas son correctas en lo general.
- Anécdotas sin fuente precisa: la lápida «encargada por un integrante del comité» en 1960 (existe la anécdota histórica de la lápida proyectada de COBOL — verificado en la historiografía estándar; el video no cita fuente).
- Subtítulos manuales en es-419, texto limpio (sin errores de ASR relevantes).

## Cruces y dominio

- Dominio previsto: **informatica-teoria** o general (historia del software/ingeniería de sistemas legados). Cruce directo con [[bases-de-datos]] (integridad de datos, decimales exactos) y con el cluster de historia informática (WL-255/256 Reliquias Tecnológicas, WL-200 Verbatim/Archivo Tecnológico, WL-166 historia del software). El tema «deuda técnica / código legado» conecta con WL-257 (encuesta SO vía 2.ª mano) — evaluable como concepto candidato en consolidación. Gilada 1.ª fuente (texto plano).
