# FAV-438 — ¿Qué es realmente internet? ¿Qué lo hace funcionar o caerse?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=JhuiIzA5E2s) — Canal **Gilada**, publicado 2026-07-11, 18:25, ES-419 (subtítulos manuales).
- **Raw**: `raw/informatica/2026-11-15-que-es-realmente-internet-gilada.md`
- **Dominio**: `informatica/` (subcarpeta Informatica). `list=` ajena ignorada por S4.
- Nota: 2.ª fuente del canal Gilada en la wiki (misma serie de «enfoque de barrio» que FAV-437).

## La ilusión de la superficie

Lo que tocamos no es internet: es la última capa de una megaestructura invisible. Confundir Instagram/TikTok con internet es confundir un local dentro del shopping con la red eléctrica y las cloacas del país. Quien no entiende la estructura deja de ser ciudadano y se vuelve inquilino perpetuo. Metáfora central: **internet es una ciudad de capas superpuestas**.

## Las capas (de abajo hacia arriba)

- **La nube no existe**: es la computadora de otro — galpones de servidores que consumen como un pueblo + cables. Los cables submarinos de fibra óptica (hilos de vidrio del diámetro de un pelo por donde viaja luz láser) llegan al Cono Sur por Las Toninas, Punta del Este y Valparaíso — «los enchufes del sur». El Wi-Fi dura 10 metros; después, cables, postes, centrales del ISP y zanjas: internet es ante todo un triunfo de ingeniería civil.
- **Paquetes e IP**: tu foto no viaja entera — se rompe en paquetes con etiquetas de origen/destino (dirección IP como casillero postal). Cada paquete toma la ruta que puede (uno por Brasil, otro desviado por Miami). El **router** es el inspector de tránsito que despacha.
- **TCP vs UDP**: TCP reordena, verifica y pide reenvío (la foto llega intacta); UDP tira sin revisar («jodete») — ideal para tiempo real: juegos online y videollamadas.
- **DNS**: las páginas amarillas del barrio — traduce google.com a números; un DNS lento frena toda la conexión aunque tengas fibra simétrica.
- **BGP**: el verdadero gigante invisible — el sistema diplomático entre redes (Movistar, Claro, Google, universidades) que se anuncian rutas mutuamente. Frágil por diseño: un typo en una configuración desvía el tráfico de medio planeta a un embudo y millones de personas pierden WhatsApp — «no se rompió la web: se rompió el mapa».
- **Internet ≠ Web**: internet es la red de transporte (vías del tren); la web es un tren famoso pero no único. La web nació en los 90 (Tim Berners-Lee, CERN): hipertexto, URL, HTML, HTTP. Antes (y fuera) de ella: email, FTP, IRC; hoy los juegos online tampoco pasan por la web.
- **De plazas públicas a shoppings cerrados**: la web temprana era radicalmente descentralizada; hoy vivimos dentro de 3-4 aplicaciones privadas (Google, Meta, TikTok, Amazon, Apple) — «jardines amurallados». Cambiamos autonomía por comodidad: un algoritmo privado decide qué contenido vive en tu pantalla.
- **Vigilancia**: las cookies y scripts de tracking no hacen funcionar la página — financian el modelo: mapean comportamiento y lo subastan en mercados automáticos (buscar colchones → Instagram lleno de almohadas). HTTPS cifra el contenido, pero gobiernos y proveedores ven qué puertas tocás, bloquean, y en regímenes autoritarios cortan «los cables lógicos del país». La red nacida indestructible terminó como el dispositivo de vigilancia más perfecto jamás diseñado.
- **La internet periférica resiste**: blogs personales, foros de nicho, RSS (diario a carta sin algoritmo), P2P/torrents, Fediverse/Mastodon. Disclaimer anti-nostálgico: la técnica actual es superior; el problema es político, no técnico.

## Conclusión

Cuando una app global se cae no «se rompió internet»: falló un engranaje privado (un servidor de autenticación en la nube, un mapa BGP mal guardado); las vías siguen intactas. «Internet es un caño de vidrio en el fondo del mar», no la pantallita.

## Cruces

- Canal **Gilada**: 2.ª fuente (FAV-437 lenguajes) → **umbral de entidad ≥2 cumplido**, candidata a entidad en consolidación (deferida — ver Log).
- Infraestructura/red: conecta con [[resumen-FAV-432-router-viejo-sin-internet-elmondigital]] (el router casero como nodo de red, DHCP/DNS/OpenWRT — mismo tema de capas, lado doméstico) y [[resumen-FAV-412-esp8266-deauther-spacehuhn]] (otra capa: la red Wi-Fi local).
- Serie divulgativa «enfoque de barrio» del mismo canal: [[resumen-FAV-437-tantos-lenguajes-de-programacion-gilada]].
