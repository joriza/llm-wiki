# Por qué IA local (los argumentos, ordenados)

- **Tipo**: página de concepto.
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (fuente 7/58 del lote ia-local).
- **Fuentes**: [[resumen-ia-local-las-verdaderas-razones-para-no-usar-servicios-en-linea]].

## Los siete argumentos, en orden de prioridad real (según el operador del dominio)

1. **Disponibilidad** — nunca se cae; los servicios online sí (ChatGPT 30 min caído, «la API de Claude se cae seguido»), y las actualizaciones/deprecaciones de modelos rompen código desplegado sin que lo muevas.
2. **Consistencia** — el mismo modelo funciona igual todos los días; los online cambian comportamiento bajo el mismo nombre (TTS de OpenAI actualizado 3 veces rompiendo prompts de narración).
3. **Sin límites** — los rate limits no se compran: ni con dinero infinito se hacen 20.000 generaciones/día vía API (1/minuto, 100/día como tope típico).
4. **Personalización** — control de system prompt, temperatura, tokens de razonamiento y fine-tuning; los modelos por suscripción vienen «pre-aderezados» por el proveedor.
5. **Por gusto** — preferir ejecutarlo uno mismo.
6. **Privacidad** — relevante pero matizada (un VPS con VPN cifrada puede ser más privado que instalar software raros localmente).
7. **Precio** — 20.000 imágenes/día: ~3 USD de electricidad local vs ~300 USD en línea; y en línea pagas capacidades que no usas.

## Los contra-argumentos honestos (del propio canal)

«Gratis» está entre comillas: hay costo de hardware y electricidad (que se amortiza contra el gasto diario de API). La privacidad local no es absoluta ni siempre necesaria. Y un modelo local más chico «no tiene la misma inteligencia total» — pero se ajusta a más casos.

## La definición que importa

«Local» no significa «en mi casa»: significa **en tu dispositivo** — un VPS ejecutando llama.cpp también es local para ese dispositivo. Y las dos tesis de fondo: «el límite no lo da la IA, lo da quien la usa» y «la IA no programa, te ayuda a programar».

## Cruces en la wiki

La disponibilidad/consistencia justifica el stack de [[micro-saas-con-python]] (cobrar mientras duermes exige modelos que no cambien debajo); la optimización de costes conecta con [[agregacion-apis]]; el motor con [[llama-cpp]] y [[ia-local-texto]]; el criterio de hardware con [[hardware-para-ia-local]]; el workflow con [[desarrollo-con-modelos-locales]].

## Matiz posterior (fuente 20/58): la mejor versión es híbrida

El veredicto a 30 días de otro operador ([[resumen-i-used-odysseus-ai-for-30-days-heres-the-truth]]) afina el argumento: **local para lo simple, barato y privado; APIs para lo complejo** — lo puramente local «puede ser lento o débil según tu hardware». El valor del workspace self-hosted no fue nunca correr todo local: es la **capa de control que unifica** modelos, investigación y datos. Y la regla de privacidad practica: los prompts sensibles se quedan en modelos locales; al usar APIs, el prompt sale hacia el proveedor.
