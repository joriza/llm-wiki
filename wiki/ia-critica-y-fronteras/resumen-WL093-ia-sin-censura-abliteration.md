# Resumen: Una IA sin censura cuesta 5 dólares hacerla. Por qué casi nunca compensa

- **Fuente original**: `raw/ia-critica-y-fronteras/2026-11-01-una-ia-sin-censura-cuesta-5-dolares-hacerla-por-que-casi-nunca-compensa.md` (WL-93, tramo 7)
- **URL**: https://www.youtube.com/watch?v=H3KvXUB4SmY
- **Canal**: Jorge Marfil
- **Publicado**: 2026-11-01 · **Duración**: 25:33 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## Tesis central

La «censura» de un modelo de pesos abiertos nunca fue un candado: la negativa vive en **una sola dirección** de su espacio interno, el entrenamiento de seguridad es superficial (actúa sobre los primeros tokens), y «obliterarla» cuesta <5 $ de cómputo — sin posibilidad de parche una vez distribuido el fichero. Aun así, **casi nunca compensa**: la edición degrada veracidad (2-10 puntos en TruthfulQA), a veces la capacidad de seguir instrucciones y el razonamiento; los red teamers serios (los que más las necesitarían) no las usan porque quitan capacidad; y el NIST confirma que las salvaguardas de los modelos abiertos son configuración por defecto, no protección.

## Estructura y evidencia

- **El caso que abre**: periodista de TechCrunch crea cuenta gratuita en obliteration.ai y en minutos obtiene contenido dañino de GLM 5.3 «sin negativas» (modelo del laboratorio chino Chipu/Zhipu — ASR), sin verificación de identidad ni barreras; la startup vende acceso alojado por navegador/API.
- **Escala del fenómeno**: rastreador comunitario con >15.000 modelos obliterados de ~3.600 autores; miles en Hugging Face con millones de descargas/mes.
- **La queja legítima de fondo — sobrerrechazo**: el ejemplo del cerrajero — ChatGPT se negó a escribir una regex para *detectar* insultos racistas en un bot de moderación (el modelo «ve las palabras y se asusta»).
- **Anatomía**: pre-entrenamiento (lee internet, sabe de todo, incluido lo malo) + alineación final («cursillo» de modales) → la negativa es una **capa fina sobre conocimiento ya presente**. Artículo 2024 (13 modelos hasta 72B): la negativa = **una dirección única en las activaciones**; borrarla → no se niega a nada; inyectarla → se niega a hornear tartas (con disculpa incluida). Anécdota demostrativa: aficionado que apuntó la técnica a «positividad» y obtuvo un LLaMA permanentemente melancólico. Analogía del video: la negativa es el **cartel de cerrado** de una tienda llena; quien descargó el fichero tiene las llaves.
- **Fragilidad estructural**: el entrenamiento de seguridad concentra su efecto en los primeros tokens (LLaMA 27B chat arranca con «I cannot/I apologize» en el 96,1 % de las peticiones dañinas de HXP/HExP-PHI); pasada la frase hecha, responde el modelo «de la primera ronda». Y no hay parche: fichero en 10.000 discos duros, cada copia es de su dueño.
- **Industria casera**: **Heretic** (open source) automatiza la obliteración; escándalo de abril: publicador con 22 modelos y 5 M descargas/mes vendiendo como «receta secreta» una copia de Heretic con créditos borrados (30 de 32 «marcas de negativa» copiadas con erratas incluidas); respuesta del autor: «no hacía falta robar el código, ya lo regalamos». Licencias: GLM/Qwen/Mistral/GPT-OSS bajo Apache 2.0 — nada sobre seguridad; nadie denunciado jamás por publicar versiones sin censura.
- **Por qué no compensa (los costes medidos)**: TruthfulQA −1 a 3,5 puntos en el artículo original, −2 a −10 en mediciones posteriores (la veracidad es justo lo que un asistente de trabajo no puede perder); MMLU-type tests: ~1 punto (descarta el mito del «20 % más tonto» — cifra que no aparece en ningún benchmark); probador de 17 modelos «sin censura»: 4 se negaron a la primera tarea, 13/17 incapaces de respetar un límite de cinco frases (se fue la instrucción-following); medición de negativas por frases clave es engañosa: etiquetado manual de un modelo Heretic → 70 % de negativas reales donde la herramienta contaba 14 %; comparación de 5 métodos (85 h de GPU): matemáticas variando hasta **47 puntos** entre variantes, causa principal = presupuesto de razonamiento agotado por pesos tocados («la edición no es tan quirúrgica como se vende»).
- **Quién compra**: clientes declarados de obliteration.ai = startups de red teaming (bancos, aerolíneas, infraestructuras críticas) — pero TechCrunch consultó a varias y **no usan modelos obliterados**: prefieren fine-tuning propio porque la edición quita capacidad («los que más los necesitarían son los que menos los usan, porque antes notan lo que se pierde»). Además el original ya es barato (GLM 5.3 API: 1,40 $/M tokens entrada, 4,40 $/M salida) — se paga solo el «haber quitado el cartel» de un modelo peor.
- **La incógnita del NIST**: análisis de GLM 5.2 (16/6/2026, probablemente el modelo abierto más capaz al salir): sus salvaguardas *tal cual* ya permitían desarrollar exploits ciber de forma agéntica; julio: las salvaguardas de un modelo abierto auto-alojado **se pueden saltar** — la negativa es configuración por defecto, no candado.
- **Defensas probadas**: negativa distribuida en una justificación larga (¿carteles por todo el pasillo?) — en LLaMA 27B y Qwen 2.5 (1,5B/3B) la obliteración solo bajó las negativas ~10 % (vs 70-80 %); estudio 2025 entrenando a razonar antes de negarse; la única robusta = **no enseñar el contenido peligroso** (modelos 6.9B con datos de doble uso filtrados aguantaron fine-tuning malicioso de 10.000 pasos/300 M tokens; por eso GPT-OSS es el más difícil de desbloquear útil — «pasillos casi vacíos» — aunque puede usar info peligrosa dada en contexto/búsqueda).
- **La seguridad se mudó al alrededor**: clasificadores de entrada/salida, permisos, registros, revocación de claves por humanos (el guardia del centro comercial vs el cartel). Propuestas de regulación: clasificadores obligatorios + verificación de identidad para alquilar GPUs. Estado real: orden ejecutiva de EE.UU. (2/6/2026) pide (sin obligar) hasta 30 días de acceso anticipado del gobierno, sin licencia de publicación; Ley de IA europea aplicándose a proveedores desde agosto — los pesos quedan en manos de quien los descarga.
- **Veredicto**: para casi nadie compensa — «lo único garantizado que pierdes son las negativas; lo demás puede ir de un punto a 47». Si te molesta el sobrerrechazo, probar antes con tu trabajo real.

## Notas críticas / ASR a corregir

- ASR: «Chipu/Cipu» = **Zhipu** (lab chino de GLM); «obliteration/ablitaración» = *abliteration* (técnica); «Gwen» = Qwen; «H X P H I» = batería HExP-PHI; «Javing Face» = Hugging Face; «Truthful QA» = TruthfulQA; orden ejecutiva «14409» según el video — verificar número; «llama 27B» y nombres de artículos sin cita exacta — los estudios (2024 direcciones de negativa; Heretic; probador de 17; comparativa 85 h GPU; NIST GLM 5.2) son citados de segunda mano, verificar papers antes de citar cifras en páginas de concepto.
- Divulgación técnica de alta calidad: separa lo medido de la opinión, destierra mitos (20 % más tonto), auto-analogías declaradas como simplificaciones; sin patrocinio detectado; gancho de comentarios excluido.

## Cruces

- **Dominio destino previsto: `ia-critica-y-fronteras/`** (seguridad/alineación de modelos; alternativa ia-uso-practico por el ángulo «¿te la bajas?» — decidir en consolidación).
- **WL-70 / [[destilacion-conocimiento-oscuro]] y [[anatomia-de-un-rumor]]**: el mito del «20 % más tonto» como rumor cuantificado sin benchmark — caso de libro del tema.
- **WL-82 / [[gentleman-programming]]**: convergencia directa con el principio «las reglas FUERA del agente» — «la seguridad se mudó a la capa alrededor» es el argumento técnico que valida la decisión arquitectónica de Gentle Dot (clasificadores, permisos, revocación de claves). Cruce fuerte para consolidación.
- **WL-93 ↔ WL-89**: las direcciones internas de la negativa (2024) son el mismo campo de la interpretabilidad que el experimento MIT toca — direcciones activables/eliminables como palanca.
- **WL-53 (límites IA) / WL-40**: el sobrerrechazo (regex anti-racismo rechazada) como caso de límite práctico diario.
- Temas-candidatos: **abliteration-y-direcciones-de-negativa** (primera fuente técnica del tema); **seguridad-fuera-del-modelo** (con WL-82, ya con 2 fuentes — umbral cumplido para página de concepto en consolidación).

## ADVERTENCIA

Contenido sobre elusión de salvaguardas con datos de segunda mano (papers sin cita exacta, cifras del NIST/orden ejecutiva sin enlace) — citar cifras solo contra fuentes primarias verificadas.
- **Página de concepto**: [[seguridad-fuera-del-modelo]] — el argumento técnico de la capa alrededor (creada 2026-11-14).
