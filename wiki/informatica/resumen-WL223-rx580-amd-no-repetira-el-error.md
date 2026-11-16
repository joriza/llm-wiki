# WL-223 · RX 580: por qué AMD nunca volverá a repetir ese error

- **Fuente original**: `raw/informatica/2026-10-11-rx-580-por-que-amd-nunca-volvera-a-repetir-ese-error.md`
- **Video**: [RX 580: Why AMD Will NEVER Repeat That Mistake](https://www.youtube.com/watch?v=tdLRNfeTow8) (título en YouTube en inglés; contenido en español)
- **Canal**: FRANK SIERRA
- **Publicado**: 2026-10-11 · **Duración**: ~15:45 · **Ingesta**: 2026-11-15 (tramo 31, formato dominio pendiente de consolidación)
- **Marco**: docudrama de hardware (canal de relatos dramatizados de la industria); narrativa con psicología novelada de los protagonistas (Koduri «idealista», Huang «sin piedad»); cifras técnicas de prensa de la época (AnandTech/Tom's Hardware citados de 2ª mano); varios datos fechables del video son inexactos (ver triage).

## Qué trata

Relato dramatizado de la historia de la Radeon RX 580 (Polaris): nacida en 2015-16 del Radeon Technologies Group de Raja Koduri, en una AMD al borde de la quiebra que volcaba todo a Ryzen; su apuesta por la gama económica (bus de 256 bits + 8 GB por ~229 USD, a costa de 185 W y márgenes nulos); el giro inesperado de 2017 cuando se volvió la tarjeta reina del minado de Ethereum; la ruina de precios por las granjas de minería, la salida de Koduri, y la segunda vida como placa barata de segunda mano que «se niega a desaparecer».

## Puntos clave (según el relato)

- **Contexto**: 2015, AMD casi quebrada (acción a 1,61 USD, deuda >2.200 M); Lisa Su crea el Radeon Technologies Group y nombra a Koduri, con presupuesto mínimo — sin dinero para pelear la gama alta contra Nvidia (Maxwell, ~80 % del mercado), Koduri apunta al 80 % de jugadores comunes.
- **La trampa técnica**: la industria llevaba años estancada en 28 nm («estufas» R9 300); Nvidia saltó a FinFET de 16 nm vía TSMC, pero AMD estaba atada por acuerdos a GlobalFoundries y su nodo 14 nm licenciado de Samsung, orientado a móviles — el chip no subía de frecuencia; la solución fue fuerza bruta: sobrevoltaje hasta 1340-1400 MHz, 185 W (>200 W en modelos custom).
- **La apuesta de generosidad**: contra la GTX 1060 (192 bits/6 GB), la RX 580 montó 256 bits y 8 GB (256 GB/s de ancho de banda) por ~229 USD con margen casi nulo; rendimiento empatado con la 1060 (mejor en DX12/Vulkan por cómputo asíncrono), pero consumiendo ~60 % más.
- **El giro minero**: junio 2017, Ethereum a ~393 USD; el algoritmo dependía de memoria (bus ancho) y AMD permitía modificar la BIOS — los mineros bajaban el consumo de 185 a ~100 W (~30 MHz/s); una tarjeta de 229 USD generaba >1.800 USD/año limpios; granjas de 50-500 placas, reventa a >600 USD, y los propios jugadores insultando a Koduri en Reddit.
- **El desenlace**: AMD creyó infinita la demanda y fabricó a máxima capacidad; ventas congeladas y pérdidas; renuncia de Koduri; la cúpula «juró» no repetir una tarjeta barata con tanta memoria; tesis del canal: «entregar un componente inmortal al usuario es el peor pecado corporativo».
- **La segunda vida**: desde 2018, cientos de miles de placas rescatadas de granjas revendidas a 60-70 USD (o nuevas por marcas chinas a ~60 USD); salvavidas de millones de jugadores en la escasez/pandemia; «accidente irrepetible» — ganó la guerra del tiempo después de que su arquitecto ya se había ido.

## Observaciones de triage

- Marco docudrama: psicología novelada, música dramática y citas reconstruidas; la cronología tiene errores de fecha (el video sitúa la presentación de la «RX 580» el 18-4-2016, cuando en 2016 se lanzó la RX 480 y la RX 580 llegó en abril de 2017; también comprime el timeline del RTG). Cifras técnicas plausibles pero de 2ª mano sin fuentes verificables en el video.
- Valor como relato de industria/cultura del hardware, no como fuente factual precisa; señalado en resumen.
- Cruces previstos: WL-114/WL-175 (electrónica retro/hardware), WL-138/WL-144 (industria con cifras de fabricante), WL-204 (electrónica/automotriz), WL-116/WL-166 (historia de la tecnología), WL-213... (no — salud, descartar). Ganancias mineras no verificadas; posible cruce con WL-130 (cripto/seguridad) solo tangencial.
- Dominio previsto: general (historia de la tecnología/hardware) — consolidación diferida, S4: no se crean dominios nuevos.


## Ver también

- [[historia-de-la-tecnologia]]
- [[seguridad-fuera-del-modelo]]
