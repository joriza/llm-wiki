# WL-132 — ¿Es El Fin De Los LLM? (NCM)

- **Fuente original**: `raw/ia-critica-y-fronteras/2026-10-29-es-el-fin-de-los-llm-ncm.md` (`2BicjJgRkms`, [Jorge Marfil](https://www.youtube.com/watch?v=2BicjJgRkms), 2026-10-29, 33:37).
- **Canal**: Jorge Marfil
- **Publicado**: 2026-10-29
- **Tipo**: análisis técnico divulgativo (arquitectura de modelos de lenguaje)

## Qué trata

Análisis crítico del **NCM (Next Concept Modeling)** publicado por un equipo de Stanford el 14-10, tras el revuelo en X (~medio millón de lecturas) y la ola de títulos «el fin de los LLM». El canal lee el artículo y el repositorio de verdad y desmonta el titular: NCM es un LLM con otra forma de escribir, no su reemplazo.

## Puntos clave

- **El problema real**: los LLM generan token a token y cada token obliga a leer todos los pesos desde la memoria — en un modelo denso de 16 GB y 1024 tokens son ~16 000 GB movidos (~9 s en una RTX 5090 a 1792 GB/s). El cuello de botella local es el ancho de banda de memoria, y crece con el tamaño del modelo.
- **Cómo funciona NCM**: escribe «de arriba abajo por niveles», como una foto que se carga de borroso a nítido. Una red de compresión (VQ residual multiescala, pirámide de códigos: nivel superior = boceto del sentido; nivel inferior = un código por token) más un Transformer que predice un nivel entero por pasada. 8 niveles = 8 pasadas, sin importar el largo del texto.
- **La cifra del titular (31×)**: se mide **contra un modelo de difusión** (Aurora LM, 128 pasadas vs 8) resumiendo noticias de 48 tokens en XSum, en una H100 con lotes de 16 — **nunca contra un LLM palabra-a-palabra**. El propio hilo de Stanford lo aclara; las miniaturas no.
- **Resultados reales**: victoria clara de NCM en resúmenes (ROUGE-L 28,0 vs 24,4; a igualdad de cómputo 29,6 vs 26,6) y paliza en Sudoku de 30 casillas (86 % en 12 intentos vs 1 % en 128 del autoregresivo y 81 % de difusión). **Derrota en traducción** (BLEU 22,6 vs 25,2 del modelo simple; para empatar necesita ~132 pasadas vs ~64).
- **Trampas del sistema**: tamaño de salida fijo por modelo (48, 1024 posiciones — respuestas cortas desperdician cómputo, largas se cortan); escala mínima (el mayor tiene 725 M de parámetros vs los 7-8 B de uso local habitual); el código de GitHub es solo de evaluación, sin flujo de entrenamiento; el modelo más interesante para uso general («Open Web Text») está publicado como **un archivo de 5 bytes** (placeholder) en Hugging Face.
- **Cambio de cuello de botella**: NCM cambia ancho de banda por cálculo (genera ~4× más posiciones que tokens). Si esta familia triunfa, el hardware local se elegirá por potencia de cómputo y no por ancho de banda — mala noticia a largo plazo para los Mac (memoria unificada rápida, GPU modesta). Nota: rumores de fin de producción de la RTX 5090 (Nvidia lo desmiente).
- **Por qué en la nube no es revolución**: con lotes grandes la lectura de pesos se reparte entre miles de peticiones y la GPU ya está saturada de cálculo; escribir en paralelo puede salir más caro por respuesta. La ventaja es de **un solo usuario en local** (batch=1). Google (Diffusion Gemma) y EleutherAI lo dicen ellos mismos.
- **Diffusion Gemma como alternativa real hoy**: MoE de 25,2 B (3,8 B activos), Apache 2.0, ~700 k descargas; 15-20 tokens por pasada y velocidad real en local, pero cuesta 8-19 puntos de calidad (AIME 69,1 vs 88,3; LiveCode Bench 69,1 vs 77,1) y un consumo enorme de KV-cache (con 32 GB apenas cabe contexto). No apta aún para agentes de código.
- **Conclusión del canal**: «compra por ancho de banda y vigila el cálculo» — hoy nada cambia en lo que se instala; NCM es investigación prometedora, no un producto. El titular responde mal a su propia pregunta: no se puede jubilar a los LLM con otro LLM.

## Citas útiles

- [02:35] Regla de arquitectura: «el token 500 no puede empezar hasta que el 499 está terminado del todo».
- [12:47] «El artículo dice que es 31 veces más rápido que otros enfoques de difusión […] y en ninguna parte dice que lo sea respecto a GPT».
- [23:58] Sobre la ventaja real: «Esa persona eres tú en casa, a las 2 de la mañana, con el café frío y el cursor parpadeando».
- [26:02] El modelo insignia publicado en Hugging Face: «una nota de tarea pendiente y ocupa 5 bytes».
- [33:05] «Mientras el archivo pendiente siga teniendo 5 bytes, esto es investigación y no algo que se instala».

## Triage

Análisis técnico de calidad con verificación de fuentes primarias (artículo + repo); destino probable en consolidación: `ia-critica-y-fronteras` (fronteras de arquitectura LLM) o `ia-uso-practico/hardware-ia-local` por la parte de elección de hardware. Cruce natural con [[jorge-marfil]] y con las páginas de hardware para IA local.

- **Entidad**: [[jorge-marfil]] — desmontaje del hype por el autor especialista en IA local; clúster WL-102/122/147 (consolidación 2026-11-15).
