# Resumen: IA Local — las verdaderas razones para no usar servicios en línea

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-02-ia-local-las-verdaderas-razones-para-no-usar-servicios-en-linea.md` (video en español; transcripción literal por subtítulos automáticos) — https://www.youtube.com/watch?v=96etD_ZHrmk — Nichonauta, 2026-08-02.
- **Nota**: fuente 7/58 del lote ia-local. **Metadatos del raw UNKNOWN** (el extractor no obtuvo título/canal/fecha); la atribución a Nichonauta es inferida del contenido (autorreferencia a su propio video de llama.cpp y a sus sitios nichonauta.com) — registrada como tal. Video de opinión, formato informal respondiendo a un comentario de viewer.

## Las razones, en el orden de prioridad del autor

1. **Disponibilidad**: un modelo descargado nunca se cae. Evidencias citadas: ChatGPT caído media hora el día anterior; «la API de Claude se cae seguido»; y el caso vivo de sus dos micro-SaaS (tube/writer.nichonauta.com): proveedores online que actualizan o deprecan modelos sin que muevas una línea de tu código — te enteras cuando los clientes se quejan, y cambiar de modelo implica reevaluar precio y **readaptar prompts y estrategias** («no es cambiar uno por otro y que funcione igual»).
2. **Consistencia**: en local, día tras día funciona igual mientras no cambies nada; los servicios online actualizan el modelo bajo el mismo nombre y cambian el comportamiento (el TTS de OpenAI actualizado 3 veces «ahora suena conversacional» — rompió sus prompts de narración documental).
3. **Sin límites**: los rate limits no se compran — «aunque tengas un millón de dólares, ninguna API te deja hacer un millón de solicitudes en un día». Su caso: 20.000 imágenes/día para YouTube y webs; en línea quizá 1 imagen/minuto y 100/día.
4. **Personalización**: los modelos por suscripción vienen con el system prompt, las herramientas y el entrenamiento que el proveedor decidió; sin fine-tuning, sin controlar temperatura ni tokens de razonamiento. El local, aunque más chico, **se ajusta a tus necesidades**.
5. **Por gusto**: «sencillamente lo ejecutamos en local porque queremos».
6. **Privacidad**: relevante pero matizada — un VPS con VPN cifrada podría ser incluso más privado que «instalar programas raros» en tu PC; depende del servicio.
7. **Precio** (al final, pero relevante según el uso): una RTX 3060 12 GB genera 20.000 imágenes/día por ~3 USD de electricidad vs ~300 USD en línea — y en línea pagas por capacidades que no usas («me permite hacer un periódico completo; yo necesito una imagen de un perro saltando»). La GPU se amortiza contra el gasto diario de API.

## Las tesis de fondo

- «El límite no lo da la IA, lo da quien la usa»: dejada sola, la IA no hace nada.
- «La IA no programa; te ayuda a programar».
- «Local» es relativo: significa **en tu dispositivo** — un VPS ejecutando llama.cpp también es «local» para ese dispositivo.
- Su parque (todas las GPUs trabajando a diario en distintas PCs: generación y clasificación de contenido, asistencia de código): 2× RTX 3060 12 GB, RTX 5050 8 GB, 2× RX 6600 8 GB, RX 590, RX 580, 1050 Ti, 1650.

## Cruces en la wiki

Los puntos de disponibilidad/consistencia son la contraparte operativa de [[automatizacion-con-python]] y [[micro-saas-con-python]] (servicios que cobran mientras duermes necesitan modelos que no cambien debajo); el caso de optimización de costes conecta con [[agregacion-apis]]; el motor local con [[llama-cpp]] y [[ia-local-texto]]; el marco completo en [[desarrollo-con-modelos-locales]].

---

**Ver también**: [[por-que-ia-local]] (concepto) · [[nichonauta]] (entidad-canal) · [[llama-cpp]] · [[desarrollo-con-modelos-locales]].
