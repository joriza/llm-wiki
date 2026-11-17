# WL-543 — ¿Por qué los videojuegos ODIAN los cilindros?

- **Fuente original**: `raw/wl/tramo-85/2026-06-13-por-que-los-videojuegos-odian-los-cilindros.md` ([Vídeo](https://www.youtube.com/watch?v=OXFTmaf-54g))
- **Canal**: Guinxu
- **Publicado**: 2026-06-13 · **Duración**: 10:58
- **Dominio provisional**: informatica-teoria (motores de físicas / geometría de colisiones)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Divulgación técnica con humor sobre por qué los motores de físicas evitan los cilindros como primitivas de colisión:

- **Evidencia empírica**: Unity y Unreal no ofrecen colisionadores cilíndricos (caja, esfera, cápsula); Godot sí los tiene pero su documentación advierte que se buguean.
- **Demostraciones físicas**: un cilindro se atasca en baches y escaleras (base recta); una cápsula resbala (base redonda) — la cápsula es «todo terreno» para recorrer escenarios.
- **El truco matemático**: colisionar con una cápsula = colisionar con una esfera que se desliza por un segmento (distancia punto-segmento), que es trivial como la colisión esfera (medir distancia al centro). El cilindro requiere combinar dos comprobaciones (círculo horizontal + rango vertical).
- **El verdadero problema — la resolución, no la detección**: al penetrar, el motor debe empujar al objeto hacia fuera; en el borde del cilindro (unión lateral/tapa) hay casos especiales con saltos de dirección → temblores y bugs; los motores «odian los casos especiales». La cápsula no tiene esquinas: superficie suave y continua, dirección de expulsión gradual. La caja tiene esquinas pero sus direcciones de cara están definidas.
- **Coste combinatorio**: cada primitiva nueva exige programar su interacción con todas las demás (N² pares) — los motores minimizan piezas básicas.
- **Escapes**: malla 3D de colisión (cilindro aproximado con 20 caras) sirve para cualquier forma pero es costosa (miles de triángulos vs medir una distancia) — se reserva para cuando no hay alternativa.
- **Conclusión**: cápsula o malla dan «prácticamente el mismo resultado» con mucho menos dolor.

## Señales de triage

- **Divulgación de 1.ª mano demostrada**: experimentos y demostraciones matemáticas en pantalla (Unity/Unreal/Godot mostrados; sims propias); las afirmaciones técnicas son estándar de la industria y coherentes con la documentación de motores.
- **Patrocinio excluido**: bloque Nord VPN (con transición temática anti-phishing) — señalado y excluido.
- Tono humorístico con colaboraciones (dobles de voz, miniaturista); sin cifras ni fuentes externas que verificar — el contenido es autocontenido.
- ASR mínimo («Guincho» por Guinxu, «matrioska»), sin afectar al contenido; raw intacto.

## Cruces

- **informatica-teoria** (geometría computacional aplicada): par técnico sólido del tramo junto a WL-538; eco de «las primitivas mínimas que cubren el máximo de casos» ↔ [[routing-por-coste]] como filosofía de diseño (elegir la forma más barata que resuelve el caso).
- «Los casos especiales son el origen de los bugs» ↔ WL-536 (ORM: N+1 y includes), WL-537 (firmware no estandarizado) — hilo transversal del tramo 85: **la fricción vive en los bordes**.
- Divulgación técnica española de calidad (Guinxu 1.ª fuente, texto plano — umbral <2); posible entidad de canal.
- WL-541 (taxonomía por niveles) como análogo arquitectónico: minimizar combinaciones.

## Veredicto de triage

Excelente pieza de divulgación técnica: correcta, demostrada, autocontenida, sin humo. La mejor del tramo junto a WL-538/541. Consolidación diferida (L12): informatica-teoria o microcontroladores-adyacente (físicas de videojuegos → probable informatica); Guinxu como entidad candidata.
