# Spec Driven Development (y sus derivas)

- **Tipo**: página de concepto.
- **Fuentes (4)**: [[resumen-los-6-niveles-de-programar-con-ia-el-90-no-pasais-del-3-joaquin-ruiz]], [[resumen-asis-programo-con-ia-tras-500-horas-alpaca-tech]], [[resumen-como-hacer-que-una-ia-construya-el-proyecto-que-tu-quieres-eric-risco]], [[resumen-la-irrazonable-eficacia-del-html-claude-code-articulator-es]] (con ecos en Taft y Guldenaar).

## La idea base

El muro entre «dirigir agentes y revisar PRs» (nivel 3) y la fábrica (nivel 5) se cruza **escribiendo especificaciones**: «tu lenguaje principal ya no es Python ni TypeScript, es Markdown» (Ruiz). La spec es el plano del albañil: contrato exacto de la API, reglas innegociables de seguridad/rendimiento y el comportamiento ante cada error; los escenarios de prueba son el contrato que el humano define — en el nivel 5 de Shapiro, la propiedad intelectual ya no es el código sino **la Spec y los escenarios de prueba** («el que controla la verificación controla la fábrica»; la IA jamás escribe sus propios tests).

## Las tres derivas del lote

1. **Flujo programático** (Alpaca Tech): la spec dentro de un pipeline de 8 pasos headless con bucles de corrección en código — «un SDD con esteroides» para uso individual.
2. **ASDD** (Eric Risco): la spec «solo tests» falla (Frankenstein con 4.500 tests) → spec de 4 preguntas (qué podrá hacer el usuario, qué resultado debe obtener, qué debe respetar, cómo lo demuestra con evidencia) + review dentro de la implementación + decisiones humanas por riesgo.
3. **HTML como formato de spec** (Thariq/Claude Code): cuando los agentes generan más de lo que el humano lee (>100 líneas de Markdown ya se leen), la spec migra a HTML — densidad, claridad, compartible por enlace, interactivo, con «copiar como prompt» de vuelta al agente.

**Ver también**: [[verificacion-como-valor]], [[odd-metodologia]] (reemplazo/evolución del SDD en el arnés personal), [[agentes-de-codigo]].
