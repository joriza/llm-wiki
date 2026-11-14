# Destilación y conocimiento oscuro en IA

- **Tipo**: página de concepto.
- **Dominio**: `ia-critica-y-fronteras`.
- **Creada**: 2026-11-14 (consolidación de los tramos 5-6 del backlog «Ver más tarde»; borrador previo normalizado desde la carpeta de trabajo).
- **Fuentes**: [[resumen-WL070-dark-knowledge-of-ai]] (WL-70, Emergence — fuente principal, la única fuente plena del tema), con cruces contextuales de [[resumen-WL040-oficios-que-valdran-oro-con-la-ia]] (WL-40, en tránsito tramo 3), [[resumen-WL053-15-usos-extremos-ia-2027]] (WL-53, en tránsito tramo 4), [[resumen-WL047-superagente-deepseek]] (WL-47) y [[resumen-WL051-napmem-memoria-agentes-alibaba]] (WL-51).
- **Ver también**: [[ia-china]] · [[deepseek-harness]] · [[limites-de-los-llm]] · [[ia-como-reconstruccion]].

## El concepto

La **destilación** es entrenar un modelo pequeño (alumno) usando las **probabilidades completas** (logits) de un modelo grande (maestro): se transfiere no solo la respuesta correcta sino la **estructura de similitudes** que el maestro aprendió del mundo — el «conocimiento oscuro» que Hinton nombró en 2014 (paper rechazado, hoy con ~25.000 citas según el video).

| Nivel | Qué transmite | Ejemplo |
| --- | --- | --- |
| Respuesta | qué es un BMW → «coche» | salida final |
| Probabilidades | BMW ~ camión (0,001), BMW ~ zanahoria (0) | estructura de similitudes del mundo |
| Razonamiento (CoT) | paso a paso explícito | «primero verifico X, luego Y» |

## La geopolítica del copiar: «copiar, luego cerrar la puerta»

Patrón histórico que el video-essay traza desde Slater «el Traidor» (1789) y Lowell hasta hoy:

| Actor | Acción | La letra pequeña |
| --- | --- | --- |
| OpenAI / Google / Anthropic | entrenan con internet entero, sin preguntar | «imposible entrenar sin copyright» |
| OpenAI | cambia sus términos al día siguiente de Stanford Alpaca (<600 $) | prohíbe usar sus salidas para crear rivales |
| Anthropic | 7 M libros piratas → acuerdo de 1.500 M USD (según el video) | acusa a Moonshot de usar 24.000 cuentas falsas y >16 M preguntas de Claude con datos privados de clientes de Kimi |
| Musk (xAI) | bajo juramento: «en parte» destilamos OpenAI | autoinformado |
| Pekín | destilación = «aprendizaje mutuo, práctica común» | el experimento DeepSeek: sola 47 % vs destilada 73 % con fracción del cómputo |
| PewDiePie | expulsado 2× por destilar OpenAI con Heretic | «cirugía cerebral»: quita la parte que dice «no» |

## Lo que la copia pierde (el límite de la destilación)

- **Burke & Wills (1861)**: copiaron las tortas de nardoo sin el paso crítico (mucha agua para neutralizar la enzima que destruye la B1) — murieron de hambre con comida llena.
- **Horner (psicología)**: los niños copian hasta los pasos inútiles del demostrador; los chimpancés los saltan — copiar todo cuando no sabés qué importa.
- **Berkeley**: las copias heredan el estilo (tono, listas) pero no el saber — evaluadores humanos las valoran igual y fallan en pruebas de conocimiento.
- **Aprendizaje subliminal**: entrenar solo con números hereda gustos (búhos 12 % → 60 %) y también comportamiento malo — «de momento solo entre gemelos».

## La cadena del saber (pregunta final del video)

```
Internet (millones de personas, sin preguntar)
  → OpenAI / Anthropic / Google (entrenan modelos base)
    → DeepSeek / Moonshot / destiladores varios
      → modelos abiertos y locales
        → usuarios finales («probablemente también a ti»)
```

> «Cuando una máquina aprende de todos… ¿de quién es lo bueno?»

## Marcas de la fuente

Cifras y episodios (Alpaca <600 $, acuerdo Anthropic 1.500 M, acusación Moonshot, PewDiePie ×2, experimento DeepSeek 47→73 %) son claims del video-essay con citas parciales — verificar contra fuentes primarias antes de elevar a referencia. La fuente es video-essay con subtítulos manuales (raw limpio).

## Cruces

- **WL-70 ↔ [[ia-china]] / [[deepseek-harness]]**: el experimento DeepSeek 47→73 % como evidencia dura del «aprendizaje mutuo».
- **WL-40**: la geopolítica del idioma («ninguna IA piensa en español») como la misma asimetría vista desde el dato.
- **WL-53**: los modelos sin frenos y Heretic como la otra cara del acceso al «cómo piensa» un modelo.
- **WL-47**: el harness DeepSeek como consumidor final de la cadena destilada.
- **WL-51**: NapMem como la versión «navegar la memoria» del mismo problema de transferencia.
- **WL-75**: la otra relación IA-conocimiento-acumulado — reconstruir lo roto en vez de destilar lo vivo ([[ia-como-reconstruccion]]).
