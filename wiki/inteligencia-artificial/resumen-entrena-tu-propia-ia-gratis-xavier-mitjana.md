# Resumen: Entrena tu propia IA... ¡GRATIS! Olvida CHATGPT

- **Tipo**: resumen de fuente (tutorial-guía de personalización/fine-tuning de modelos).
- **Canal**: Xavier Mitjana (página de entidad pendiente de consolidación).
- **Publicado**: 2026-06-28. **Duración**: 18:05.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Fn36INn_EAo).
- **Raw**: [raw/inteligencia-artificial/2026-06-28-entrena-tu-propia-ia-gratis-xavier-mitjana.md](../../raw/inteligencia-artificial/2026-06-28-entrena-tu-propia-ia-gratis-xavier-mitjana.md) (transcripción de subtítulos automáticos con marcas de tiempo).
- **Páginas de concepto asociadas**: pendientes de consolidación (MedGemma, LoRA, Ostris AI Toolkit, Ideogram de pesos abiertos, LTX 2.3, LM Studio, Hugging Face, Pinocchio).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Antes que pelearte con el modelo más potente del mundo, conviene **entrenar un modelo pequeño para que se adapte a ti** —a tu estilo, tu apariencia o tus tareas— y te dé el resultado bueno «cada vez»; además, gratis, en tu PC y en minutos. El vídeo lo demuestra con el argumento de la especialización (MedGemma supera a GPT-4 en diagnóstico por imagen pese a ser 100–200 veces menor) y lo enseña en **tres niveles de personalización**: usar modelos ya afinados por la comunidad, entrenar tu propio LoRA de identidad, y dar habilidades nuevas a modelos de vídeo.

## Recorrido del vídeo

- **[00:00–01:15] Analogía inicial**: Langley (financiación, recursos) perdió contra los hermanos Wright (taller, observación); aplicar esa lección a la IA: entrenar un modelo pequeño que escriba con tu estilo, genere imágenes de ti o resuelva tareas específicas.
- **[01:15–02:41] Por qué funciona**: Google adaptó Gemma 3 con datos médicos → **MedGemma**: acierto en fondo de ojo del 14 % al 76 %; con 4.000 M de parámetros obtiene 80 % frente al 69 % de GPT-4, que es 100–200 veces mayor. «Un modelo especializado puede rendir mejor que uno mucho más grande».
- **[02:41–03:59] Nivel 1 — usar modelos afinados**: la comunidad ya publica modelos con menos clichés y más personalidad (ej. Qwen 3 «style tuned»); probarlos desde Hugging Face dentro de **LM Studio**, descarga y ejecución local.
- **[03:59–05:48] Patrocinio Nexos.ai**: plataforma europea de agentes de tareas (inteligencia competitiva → presentación), datos que no salen de Europa; 50 % de descuento y 14 días de devolución.
- **[05:48–09:39] Nivel 2 — LoRA de identidad**: Ideogram pasó a **pesos abiertos** (compite con Nano Banana) y se puede reentrenar; no se reentrena el modelo sino que se crea un **LoRA** (archivo pequeño que modifica su comportamiento) con **Ostris AI Toolkit** gratuito; dataset de ~20–30 fotos propias desde distintos ángulos; entrenamiento en local con muestras cada 500 pasos hasta 3.000; generación posterior en ComfyUI cargando el LoRA (1920×1080, hasta 4K).
- **[09:39–10:29] Regla de oro del dataset**: «basura dentro, basura fuera» — 20 fotos malas o iguales arruinan el LoRA; con buenas referencias funciona sorprendentemente bien; tantos LoRA como clientes/estilos/proyectos, cambiándolos en un clic o combinándolos.
- **[10:29–14:11] Nivel 3 — habilidades para vídeo**: LTX 2.3 (22.000 M de parámetros, versión destilada 1.1; cuantizaciones de 4/6/8 bits para GPUs modestas) vía una app local instalada con Pinocchio; activar el **LoRA de ingredientes** y el modo «ingredients reference sheet» para pasar una hoja de referencias (personaje 3D, caja de herramientas, desierto futurista); el prompt describe las referencias + la acción; resultados con fidelidad alta en 3D, 2D y realistas, con varias imágenes de referencia a la vez.
- **[14:11–15:14] Comparación honesta**: la calidad aún no alcanza a los modelos cerrados de referencia (Seedance, Omni, Kling), «pero todo esto seguirá mejorando»; el concepto clave es personalizar un modelo abierto para **tu** tarea concreta.
- **[15:14–16:53] Ecosistema de LoRAs de LTX** (unos 10): simulación de agua, múltiples referencias, outpainting (expandir a vertical), día→noche, colorizar blanco y negro, afeitar, cambiar la mirada y **reenfocar** vídeo difuso.
- **[16:53–18:05] Cierre**: la diferencia ya no es el acceso a la IA (lo tiene todo el mundo) sino una IA que entiende tu contexto y tu manera de trabajar; remite al vídeo de montar el entorno con Pinocchio.

## Puntos clave

1. **Especialización vence a tamaño**: MedGemma (4.000 M) 80 % vs GPT-4 69 % en diagnóstico por imagen [01:42-02:41].
2. **Tres niveles de personalización**: usar LoRAs ajenos, entrenar identidad visual propia, entrenar habilidades/tareas [02:41-18:05].
3. **LoRA de identidad con Ideogram abierto**: ~20–30 fotos variadas, Ostris AI Toolkit, 3.000 pasos, generación en ComfyUI [05:48-09:39].
4. **Calidad del dataset = calidad del resultado**: pocas fotos malas bastan para arruinarlo [09:10-09:39].
5. **Vídeo con referencias en local**: LTX 2.3 + LoRA de ingredientes acepta hoja de referencias multi-elemento; ecosistema de ~10 LoRAs de tareas [10:29-16:53].

## Notas sobre la fuente

- Transcripción de subtítulos **automáticos** en español; garbiñados normalizados en este resumen: Queen→Qwen, Gema/MedGema→Gemma/MedGemma, Ostritz→Ostris, «Chaz Mit»→apodo del dataset del autor, One GP→nombre de app local (posible WanGP), Sidence→Seedance, «menos slow»→posible *slop*, «o painting»→outpainting, Nexus/Nexos.ai.
- **Patrocinio detectado**: Nexos.ai [04:25–05:48], con enlace de descuento en descripción.
- El vídeo asume contexto de entregas anteriores (Pinocchio, LTX) y las enlaza; la parte técnica de parámetros de entrenamiento se deja abierta «si os interesa, decídmelo en comentarios».
- Fuente 35/57 de la playlist «IA-Recursos»; entidad de canal aplazada a consolidación.
