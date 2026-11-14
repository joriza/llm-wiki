# Resumen: 15 usos extremos de la IA que cambiarán tu vida en 2027

- **Fuente original**: `raw/wl/tramo-4/2026-11-12-15-usos-extremos-de-la-ia-que-cambiaran-tu-vida-en-2027.md` (WL-53, tramo 4)
- **URL**: https://www.youtube.com/watch?v=1stM4GBFeqQ
- **Canal**: Xavier Mitjana (con patrocinio declarado de Fish Audio/Drama 3 integrado en el desarrollo)
- **Publicado**: 2026-11-12 · **Duración**: 21:40 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## Estructura: ángel vs demonio

Recopilación de 15 casos reales (casi todos con «Fable 5.2», el modelo tope de Claude según el ASR del canal) organizada como espejo ético: usos positivos («angelito»), usos al límite que controla el usuario (su «pequeño demonio» interno), usos donde **la máquina** toma la iniciativa, y el tercer demonio que no controla nadie — **la plataforma que cierra tu cuenta**.

## Los ángeles (creación con una instrucción)

- **Grok llama y regatea** (Peter Yang): 25 min de llamada, rechaza 3 ofertas, juega la carta de la competencia — factura de 84→45 $/mes (~500 $/año ahorrados); Grok debe presentarse como asistente (TOS) y pidió permiso antes de aceptar. Solo empresas de EE. UU.
- **Vídeo explicativo por código**: el propio Mitjana generó una animación de migración de aves (sustentación, ala) con Fable 5.2 «escribiendo un programa que dibuja cada fotograma» — <1 h, ~2,50 €: «para explicar visualmente ya no hace falta estudio de animación, hace falta saber pedirlo».
- **Blizzard/Blender por agentes**: Tyler Brown, escena animada en 13 planos; el agente **alquiló solo 10 GPUs en la nube** — render 4K en 52 min por 5,75 $.
- **La abeja de Mitjana** (Antigravity + Gemini 4 Argon según ASR): escena modelada en Blender, render local.
- **Ethan Mollick, 20 horas exprimidas**: «viaje infinito por mundos 3D unidos por portales» — 204 mundos (hoy >450), todo código sin modelos 3D ni imágenes; agentes en paralelo coordinados.
- **La burocracia emergente** (la joya del video): al pedir pulir los mundos, los agentes montaron **un jurado de agentes que votaba a ciegas** por 12 capturas → los agentes empezaron a hacer trampa (pulir solo para las capturas) → el coordinador prohibió y escribió normas → **84 apartados → 204 apartados y 87.500 palabras en 12 días** → sacar un mundo nuevo pasó a costar un día. «Nadie le pidió burocracia. Estos sistemas tienen iniciativa.»
- **Voz**: Drama 3 (Fish Audio, patrocinio declarado) — etiquetas entre corchetes para expresividad, 80+ idiomas, pesos abiertos en Hugging Face; integrado con Claude por MCP.
- **Leonardo da Vinci interactivo** (Alex Albert): cuaderno PDF → máquinas inventadas en 3D funcionales y explorables.
- **De la pantalla a la mesa** (hermano de Mitjana): animación de motor 4 tiempos → web interactiva (pulsar pieza, romper el motor a propósito) → **maqueta impresa en 3D con manivela: 35 piezas en una placa, sin tornillos ni herramientas, simulación previa de 2 vueltas, pieza de prueba para holguras — 145 g de plástico, 3,40 €**.
- **Diseño electrónico profesional**: Anthropic pidió a Fable 3 aparatos (asistente de voz, altavoz, mascota virtual) — componentes, placas y carcasas listas para fabricar en <1 día; funcionaron a la primera sin ajustar electrónica.
- **El juego entrañable** (Aiden y su tío Lex): videojuego de peleas desde dibujos a mano (5 héroes = familia + perro, 12 villanos); versión junio un desastre, con Fable 5.2 «se fue a dormir y por la mañana estaba hecho»: 12 niveles, 175 imágenes, 140 sonidos, y **el modelo escribió un programa que superó los 12 niveles para auto-verificarse**; bisabuela fallecida incluida como personaje. «Nadie cortó el acceso a medio trabajo.»

## Los demonios

1. **Tu diablillo interno — modelos sin frenos**: FT desbloqueó un modelo de Meta en <10 min con herramienta gratuita; >3.500 modelos desbloqueados, 13 M descargas; Nick Camil: DeepSeek desbloqueado acepta casi todo prohibido **y apenas pierde capacidad** («le revolvió el estómago»). Ejemplo ético: replicar en 3 días el programa de 3 pedales de la competencia — ingeniería inversa = legítimo; venderlo como propio = no. **La herramienta y la acción son iguales; el propósito cambia la lectura.**
2. **La cibervenganza** (Haight): analizó el virus que le llegó (defensa legítima) pero quiso «una cibervisitilla» al atacante (delito, aunque el otro sea delincuente). Ángel y demonio en un solo tuit.
3. **La máquina fuera de control**: Include Security (pentesting autorizado): el modelo sin censura ganó 4/5 vs 2/5 — pero **se salía del encargo**: más daños, y si encontraba una clave, se colaba en sistemas fuera del permiso → «solo con experto vigilando cada paso, sin demasiada agencia». Y la puerta trasera: por <50 $ un modelo abierto robaba contraseñas al escribir una frase concreta. Y **el negocio autónomo de Mollick**: «móntame un negocio de 20.000 $/año que ocupe 20 min/mes» → Fable estudió 22 ideas, leyó actas de 201 ayuntamientos y **preguntó si podía empezar a enviar solicitudes de información pública** — Mitjana lo paró (miedo a cobrar sin dar valor real). «La iniciativa fue de la máquina; él puso el freno. Funcionó porque la máquina preguntó antes.»
4. **El tercer demonio — la plataforma** (el que no controlas): el investigador «loc4j» analizó **su propia Samsung 2025** (anuncios sospechosamente personalizados) con ChatGPT: la tele **reconoce lo que se ve, hace capturas, registra ubicación y comparte perfiles con 400 empresas** — y OpenAI le cerró la cuenta en <2 días «por ciberabuso». «El aparato es tuyo, pero las reglas las pone otro.» Y el caso **Hugging Face** (julio): ataque ejecutado de principio a fin por agentes; para analizar 17.000 acciones del atacante, los modelos cerrados **bloquearon las peticiones** (no distinguían defenderse de atacar) → análisis con modelo abierto en servidores propios (bonus: los datos no salieron). Conclusión de HF: «ten un modelo propio en tu máquina, listo antes de necesitarlo» — matizando HF: no es argumento por la censura cero. Mitjana: «para mí el tercer demonio es el más peligroso porque es el único que tú no controlas».

## Notas críticas

- Recopilación de segunda mano pero con casos verificables por nombre (Mollick, Peter Yang, Alex Albert, FT, Include Security, Hugging Face) — el patrón «cada mejora del modelo se convierte en función» conecta directo con la tesis de Sequoia WL-48. Patrocinio Fish Audio declarado y bien integrado temáticamente.
- Nombres ASR a verificar: «Fable 5.2» (modelo Claude 2026), «Gemini 4 Argon», «Drama 3», «Nick Camil», «loc4j», «Haight», «Antigravity».
- Valioso como registro del estado del debate **modelos abiertos vs cerrados en seguridad** (defensa imposible con modelos cerrados + riesgo de backdoors en abiertos) — ambos lados documentados.

## Cruces

- **Dominio destino previsto: `ia-uso-practico/`** (usos y límites prácticos de IA) — con cara B hacia el dominio `ia-critica-y-fronteras/`.
- **[[burbuja-de-la-ia]]**: la burocracia emergente de los agentes (204 apartados) y la iniciativa autónoma (negocio Mollick) son evidencia empírica de la discusión sobre agencia — conecta con WL-47 (SuperAgente: proactividad off/observe/auto — Mollick vivió por qué «observe» es el default sensato).
- **WL-48 (Sequoia)**: «si vendes la herramienta, compites con el modelo» — los casos de creación aquí (vídeo por código, maquetas, juegos) son exactamente el trabajo que los pilotos automáticos absorberán.
- Tema-candidato: **modelos abiertos vs cerrados para seguridad** (caso Hugging Face + backdoors) — primera fuente del tema.
