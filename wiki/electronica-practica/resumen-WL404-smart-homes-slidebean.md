# WL-404 — Why We All Gave Up on Smart Homes

- **Fuente**: `raw/electronica-practica/2026-05-18-why-we-all-gave-up-on-smart-homes.md` (`dVM3fzPavMg`, https://www.youtube.com/watch?v=dVM3fzPavMg)
- **Canal**: Slidebean (Cayo Aimerich; 1.ª fuente WL)
- **Publicado**: 2026-05-18 · **Duración**: 33:37 · **Idioma**: en (subtítulos automáticos)
- **Dominio previsto**: electronica-practica o general (hogar/IoT; tangencia self-hosting)
- **Tramo**: 66 (relevo 6 de 12 del pedido L34)

## Qué trata

Videoensayo de por qué el hogar inteligente prometido por Hollywood nunca llegó, con la tesis de que el problema es **estructural** (protocolos + modelo de negocio), no de configuración:

- **Divide de usuarios**: los millonarios con instalación Crestron profesional (20.000-100.000 USD, cerrada) siempre tuvieron smart home funcional; el problema empieza cuando el usuario medio debe instalarlo él mismo.
- **La cadena de fallos**: su cerradura (Aqara, Zigbee) funciona con Siri (Bluetooth local / Apple TV como hub) pero no con Alexa — cada salto (cloud → Wi-Fi → hub → Zigbee) es un punto de falla; HAL 9000 va cableado directo, sin capas.
- **Historia de protocolos**: X10 (1975, Pico Electronics, señales de 120 kHz por la línea eléctrica sincronizadas con el cruce por cero de los 60 Hz — ingenioso pero ruidoso: microondas/secadores lo estropeaban); Z-Wave (1999, inalámbrico 800-900 MHz, caro); Zigbee (mesh 2,4 GHz, compite con Wi-Fi y Bluetooth por la misma banda → paquetes perdidos); después Thread, HomeKit, Matter — «cada uno resuelve un problema y crea otro». Matiz clave: protocolo = lenguaje, banda = autopista; y aun hablando «Zigbee», el plug de Staples no era compatible con el hub de Lowe's (perfiles incompatibles).
- **Iris de Lowe's como epitome**: empresa cierra → app/hub descontinuados → dispositivos convertidos en ladrillos caros.
- **El modelo de negocio maldito**: smartphone se reemplaza a los 2 años; un enchufe inteligente dura 10 — negocio no recurrente y de bajo margen (paralelo con el cártel Phoebus de las bombillas); precios inflados para compensar → competencia china barata → empresas mueren → más ladrillos → cansancio → bucle. Más la desconfianza: grabaciones de Alexa filtradas, nevera con anuncios.
- **La solución que adopta: Home Assistant** (Paulus Schoutsen, 2012, Philips Hue → proyecto open source → Open Home Foundation; ~2 M hogares en abril 2025, 2.º proyecto más activo de GitHub, financiación cruzada con Nabu Casa/Hardware Green). Local, sin nube, 3.400+ integraciones; él lo corre en VM en un laptop viejo, un único hub Zigbee (antena propia) reemplaza al Hue y al resto. Instalación difícil (nivel 3/4 en su propia escala) pero le dio el dashboard que usa cada mañana.
- **Experimento final «HAL»**: LLM local ligero sobre Home Assistant — escenas por lenguaje natural (fiesta de Halloween: «configuración más espeluznante posible»), NFC al televisor → modo cine de 4 h, patrones aprendidos de comportamiento; seguro precisamente por ser local («no hay Bezos espiando»); por prudencia, la cerradura queda fuera del control de la IA. Pronóstico: hogares locales que aprenden patrones como futuro plausible.
- Patrocinio Emergent (construcción de apps por prompt) incluido en el video pero excluido de esta síntesis.

## Señales de calidad

- Divulgación sólida con demostración de 1.ª mano (meses de pruebas en su casa) e historia técnica bien hilada; cifras citadas de 2.ª mano (20-100 k Crestron, 2 M hogares HA, precios) sin enlaces — verificar antes de citar.
- ASR con artefactos en nombres (Nabucasa, Schoutsen, Phoebus) — normalizado solo en el resumen.
- Patrocinio Emergent y gancho de video hermano (ajustes de TV) excluidos.

## Cruces (consolidación diferida, L12)

- [[self-hosting]] / Home Assistant — tangencia directa con el dominio self-hosting (WL-343 acortador propio, filosofía local).
- [[inferencia-local]] — LLM local «HAL» conecta con DeepSeek Harness (WL-400) y cluster ia-local.
- Privacidad IoT / datos como modelo de negocio → [[ia-critica-y-fronteras]] (gobernanza).
- Slidebean: candidato a entidad de canal (1.ª fuente).

## Consolidación (relevo 2 del pedido L35, 2026-11-16)

Consolidado en `electronica-practica/` (IoT/hogar; primera opción registrada). Cruces: [[inferencia-local]] (HAL local), filosofía local/self-hosting. Canal a texto plano por umbral <2: Slidebean.
