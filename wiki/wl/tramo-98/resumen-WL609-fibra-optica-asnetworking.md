# WL-609 — Todo Lo Que Necesitas Saber Sobre Fibra Óptica

- **Fuente original**: `raw/wl/tramo-98/2026-10-25-todo-lo-que-necesitas-saber-sobre-fibra-optica.md` ([Vídeo](https://www.youtube.com/watch?v=f34u4ivZK8k))
- **Canal**: ASNetworking (1.ª fuente)
- **Publicado**: 2026-10-25 · **Duración**: 22:53
- **Dominio**: redes/infraestructura (candidato a informatica o self-hosting en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Manual práctico para desactivar el «batiburrillo de acrónimos» de la fibra óptica (aplicable de home lab a data center):

1. **Dos tipos de fibra**: **multimodo** (Corning, años 70; núcleo 62,5 μm → 50 μm en OM2-OM5; luz LED → VCSEL; la luz rebota en múltiples caminos = «modos», los fotones llegan dispersos en el tiempo) y **monomodo** (años 80; núcleo 9 μm — 10× más fino que un cabello; requiere láser por el espectro estrecho; un solo camino → más lejos y rápido: OS2 llega a 200 km sin amplificación). Corrección de rigor del autor: Corning no inventó la fibra, creó el proceso de fabricación; el inventor fue **Charles Kuen Kao** (Nobel de Física 2006).
2. **Generaciones**: OM1→OM5 (multimodo: hasta 10 Gb/s a 400 m con una fibra, 400 Gb/s con dos OM5); OS1→OS2 (2006, menor atenuación).
3. **Por qué conviven ambas**: el cable es solo parte del sistema — los transceptores monomodo (láser direccional de enfoque preciso) fueron históricamente caros. Hoy la diferencia de precio es despreciable: «multimodo dentro del rack, monomodo fuera» es una **verdad a medias heredada de precios viejos**; la recomendación moderna es **todo monomodo** (crecer sin re-tirar cable; 100 Gb/s a 100 m con un transceptor de ~60 €).
4. **Conectores**: selva histórica (FC, biconic, MT-RJ, ST, SMA…) → quedan dos: **SC** (años 80, el de FTTH de los operadores) y **LC** (moderno, el estándar de switches/racks por densidad y pestaña más resistente). Patch panel SC viejo → latiguillos híbridos SC/LC (mejor que convertidor).
5. **Pulidos de férula**: **UPC** (plano, azul, el común en redes de datos, casi siempre LC) y **APC** (corte a 8°, verde, evita el rebote de luz hacia el emisor — por eso toda la infraestructura FTTH del proveedor usa APC). **Incompatibles entre sí** — regla crítica.
6. **Dúplex y multiplexación**: cables dúplex (2 fibras, envío/recepción; transceptores más baratos). La ventaja decisiva del monomodo: **WDM/CWDM** — múltiples longitudes de onda por una sola fibra (hasta 80 canales; FTTH: bajada 1490 nm, subida 1310 nm; la ONT separa el tráfico WDM + TDM/TDMA de vecinos). Multiplexor tipo Ubiquiti (~185 €) multiplica ×4-8 una fibra existente sin obra: «el elemento definitivo por el que instalar siempre monomodo en tiradas largas».
7. **MPO**: conector multi-fibra (12 mínimo; versiones de 16/24/72) — «si ves muchos conectados a un servidor, aléjate».
8. **Consejos del «abuelo Cebolleta»** para instalaciones reales: siempre monomodo OS2 (el ahorro de multimodo solo importa a partir de 500 fibras); todo LC; no tocar la férula con los dedos (grasa = 1-5 dB de pérdida → el switch no negocia); cable preterminado testado de fábrica; la fibra se cuenta **por pares** (8 fibras = 4 equipos; con redundancia/LACP, 2 dispositivos); y la regla de seguridad: **jamás mirar por el conector de un transceptor** — láser invisible y concentrado, «te puede freír la retina en segundos».

## Señales de triage

- **Didáctica técnica de 1.ª calidad**: fundamentos físicos simplificados con avisos de honestidad («soy un simple youtuber»), corrección de mito (Kao vs. Corning), y la desactivación explícita de un mantra heredado («multimodo dentro del rack») con la razón histórica- económica.
- Consejos accionables con números (dB de pérdida por huella, precios de transceptores y multiplexores, contabilidad de pares) — el tipo de detalle que falta en la doc genérica.
- Contenido didáctico sin datos dudosos; tono humorístico constante (acrónimos y vida social). Anuncia posible segunda parte sobre transceptores.
- Raw intacto; sin garbiñeos relevantes; sin patrocinios (broma de «acepto patrocinios» de trasplante de pelo).

## Cruces

- Consolidación aplazada: candidato a informatica/self-hosting (home lab); conecta con fuentes de infraestructura de red del backlog y con el hilo transversal «la etiqueta miente: el mecanismo importa» (UPC/APC verde-azul, mantra rack desactualizado ↔ WL-583/577/592).

## Veredicto de triage

Excelente manual práctico: fundamentos + estándares + recomendaciones actuales con costes, y una regla de seguridad (láser) que justifica el video por sí sola. Sin consolidación (aplazada).
