# Resumen: La Increíble Ingeniería Detrás de la Fibra Óptica

- **Fuente original**: `raw/electronica-practica/2026-10-31-la-increible-ingenieria-detras-de-la-fibra-optica.md` (WL-116, tramo 10)
- **Canal**: Veritasium en español
- **Video**: https://www.youtube.com/watch?v=TWGxp6Okogw
- **Publicado**: 2026-10-31 · **Duración**: 33:05 · **Idioma**: español (ASR, doblaje)

## Qué trata

Historia técnica completa de la fibra óptica: por qué el cobre llegó a su límite físico, cómo Charles Kao demostró que el vidrio podía ser transparente para la señal y cómo el equipo de Corning fabricó la primera fibra práctica — hasta la producción industrial moderna (Prysmian).

## Puntos clave

- **El límite del cobre**: las telefónicas multiplexaban llamadas desplazando bandas de 4 kHz por el mismo cable; pero a frecuencias altas las corrientes de Foucault confinan la señal a la superficie del conductor (efecto pelicular): >65 MHz moría en <2 km. El teorema de Shannon-Hartley marca la salida: más ancho de banda → luz (frecuencias de cientos de THz) y, desde 1960, el láser como fuente.
- **El problema imposible**: las fibras de los años 60 perdían ~1.000 dB/km (mejorar ×10^98; a 20 dB/km queda el 1 % de la señal tras 1 km). Bell Labs se rindió.
- **Charles Kao (Standard Telecommunication Labs)**: preguntó si la pérdida era intrínseca o impureza. Distinguió dos causas: dispersión de Rayleigh (irreducible, estructural del vidrio amorfo — estimó ~1 dB/km a 1.000 °C de fijación) y absorción por metales traza (hierro etc. — el vidrio de ventana se ve verde a contraluz por esto). Publicó en 1966 que el problema era «difícil pero no imposible»; en 1969 midió sílice fundida a ~5 dB/km con un instrumento que tardó 3 años en construir (la pérdida estaba dentro de su margen de error ±4 dB).
- **Corning: Maurer, Schultz y Keck**: usaron hidrólisis de llama (técnica interna desde los años 30) para vidrio ultrapuro, y una decisión contraintuitiva de Maurer: sílice fundida para el **revestimiento** (índice más bajo imposible de superar de otro modo) y núcleo dopado con titanio. Preforma por deposición de «hollín» dentro de un tubo (el truco del técnico con la aspiradora), colapso por tensión superficial y estirado. El 22/07/1970 Keck midió 17 dB/km («¡gau! ¡gée!» en el cuaderno); en 1970-72 el dopaje con **germanio** (estable al calor, sin segundo tratamiento) dio 4 dB/km con resistencia mecánica — la primera fibra práctica.
- **Escalado**: primer cable transatlántico 1988 (digital, láser a 280 Mbit/s, entrelazado tipo «cremallera», 40.000 llamadas simultáneas — 10× el cobre); Japón llegó a 0,2 dB/km (estándar vigente); hoy >8.000 millones de km instalados.
- **Fábrica moderna (Prysmian)**: preformas por deposición de plasma (miles de capas, antorcha ~3× la temperatura de la superficie del sol), colapso por tensión superficial, torre de estirado de 7 pisos — el enfriamiento lento antes del recubrimiento plástico evita tensión residual y pérdida; fibra a 125 µm, más fuerte que acero del mismo grosor pero vulnerable a giros bruscos.
- **Reflexión final**: Kao era ingeniero eléctrico, no científico de materiales — pudo hacer las preguntas que nadie de la disciplina hacía; y la idea contraintuitiva de Corning de «añadir impurezas» donde otros purificaban. Kao recibió el Nobel de 2009: «la revolución de la información no podría haber ocurrido sin la fibra óptica».

## Notas de triage

- Divulgación científica de altísima calidad (demos físicas propias, entrevistas con archivos y visita a fábrica real); excelente referencia de historia de la tecnología e internet. Nota: «propilenglicol» en el ASR por la demo del chorro (probablemente glicerina/propilenglicol, irrelevante para el contenido).
- Dominio destino previsto: general (historia de la tecnología/infraestructura de red; S4 sin dominios nuevos) — consolidación diferida (L12). Cruce natural con WL-111 (economía de internet) y fuentes de infraestructura de red en la consolidación.
- Bloque final del equipo/doblaje y promoción del boletín excluidos; sin patrocinio comercial.

- **Página de concepto**: [[historia-de-la-tecnologia]] — pieza «capa física» del clúster con WL-114 (arranque PC) y WL-117 (Autodesk) (consolidación 2026-11-15).
