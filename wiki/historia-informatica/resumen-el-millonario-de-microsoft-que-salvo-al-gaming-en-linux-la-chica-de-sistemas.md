# Resumen: El millonario de Microsoft que salvó al gaming en Linux

- **Tipo**: resumen de fuente.
- **Dominio**: `historia-informatica/`.
- **Fuente original**: `raw/historia-informatica/2026-10-02-el-millonario-de-microsoft-que-salvo-al-gaming-en-linux.md` (subtítulos automáticos en inglés, literal) — https://www.youtube.com/watch?v=wmWrwL9-Nco — La Chica de Sistemas, 2026-10-02 (24:23).
- **Nota**: fuente del lote 8M (4/8). Sin enlaces cruzados todavía (consolidación aplazada).

## Gabe Newell: de Microsoft a la revelación (1983-1996)

En **1983**, un joven **Gabe Newell** deja Harvard y entra en una Microsoft aún pequeña; pasa **13 años** como productor de software y trabaja en las primeras versiones de Windows. Con las stock options se convierte en «millonario de Microsoft». Pero mientras la dirección veía los ordenadores como herramientas de oficina y apostaba por licencias corporativas, Newell mira otro fenómeno que volaba bajo el radar.

En **1993**, la pequeña id Software de Texas, liderada por **John Carmack**, lanza **Doom**: redes universitarias y de oficinas colapsadas por partidas multijugador. Dato que voló la cabeza de Newell: se estimaba que hacia **1995 Doom estaba instalado en más ordenadores que el flamante Windows 95** — y corría sobre MS-DOS puro, saltándose por completo la capa gráfica de Microsoft (algunos años se consideró el software más instalado del planeta). Su revelación: **el verdadero killer app para masificar una plataforma no era una hoja de cálculo; eran los videojuegos**. Dentro de Microsoft lidera el equipo que porta Doom a Windows 95 (**Doom 95**), con el célebre vídeo promocional de Bill Gates dentro del juego, gabardina de cuero y escopeta en mano. Lección de oro que nunca olvidará: *quien controla el software y las experiencias que la gente ama es el verdadero dueño de la plataforma*.

## Valve, Half-Life y los mods

En **1996**, cansado de la burocracia corporativa, deja Microsoft y funda **Valve Software** en Washington con otro ex-Microsoft, **Mike Harrington**. En **1998** lanzan **Half-Life**: más que un éxito comercial, redefinió la narrativa de los shooters en primera persona. Lo más revolucionario vino de los **mods** construidos encima: **Counter-Strike**, Day of Defeat, Team Fortress Classic — mods que superaron en popularidad al juego base (muchos jugaban Counter-Strike sin saber que era un mod de Half-Life).

## El problema logístico y el nacimiento de Steam (2003)

Con millones de jugadores online, Valve enfrenta el caos de los años 2000: los parches se descargaban a mano de sitios como FilePlanet o GameSpy (decenas o cientos de megabytes sobre módem), con la mitad de los servidores en una versión y la otra mitad en otra. Newell concibe un **sistema centralizado** que actualice juegos en segundo plano con anti-cheat integrado. Propone la idea a **Microsoft, Yahoo y Cisco** — le responden que la distribución digital de software «no tiene futuro comercial» y que la gente preferirá comprar la caja en la tienda. Valve lo hace sola: en **septiembre de 2003** lanza **Steam**, con Counter-Strike 1.6 distribuyéndose por allí.

Al principio fue odiado: el cliente verde oliva tenía requisitos de RAM ridículos para la época, los servidores caían y exigía conexión incluso para jugar offline. La jugada maestra llegó en **noviembre de 2004** con **Half-Life 2**: para jugar la secuela más esperada de la década había que instalar Steam y registrar el juego, aunque compraras la caja con sus cinco CDs en una tienda física. En semanas, millones de ordenadores tenían el cliente instalado; las tiendas protestaron, pero el modelo de biblioteca digital (los CDs se rayan o se pierden; con Steam bastaba reinstalar el cliente y entrar) se impuso.

## Piratería como problema de servicio

A mediados de los 2000 la industria, paranoica por la piratería en Windows, respondió con DRMs agresivos (**StarForce**, **SecuROM**): drivers a nivel kernel, problemas de lectura de discos, pantallas azules — tratando como criminal a quien pagaba 50 dólares, mientras el pirata no sufría nada. Newell lo resume en su frase más citada: **«La piratería es casi siempre un problema de servicio, no de precio»**. La respuesta de Valve fue ofrecer algo superior: descargas ultrarrápidas con CDN, Steam Cloud, foros, guías, logros, cartas coleccionables, parches automáticos, rebajas y precios regionales. Sin juicios, sin policía, sin DRM agresivo — cuando el servicio es bueno y el precio honesto, la mayoría elige pagar.

Además, Steam cambió quién podía crear juegos: en la era física, un editor tenía que financiar y aprobar todo (si no le gustaba, el juego no existía). **Greenlight (2012)** y **Early Access (2013)** derribaron ese muro. Caso emblema: **Eric Barone (ConcernedApe)**, que solo, en su habitación, durante casi 5 años programó cada línea de C#, dibujó cada píxel y compuso cada pista de **Stardew Valley** — un simulador agrícola 2D que ningún ejecutivo habría financiado, y que en Steam fue un fenómeno global con millones de copias.

## Windows 8 y el plan de escape hacia Linux

El talón de Aquiles: todo el imperio Steam dependía de la buena voluntad de Microsoft. En **2012** llega **Windows 8** con las apps Metro sobre WinRT (luego UWP en Windows 10): replicar el jardín vallado del App Store de Apple en el PC de escritorio, con tienda propia al 30 % integrada con Xbox. En **julio de 2012**, en la Casual Connect de Seattle, Newell suelta la bomba: «Windows 8 es una catástrofe para todo el espacio del PC»; Valve necesitaba una estrategia de cobertura — **lograr que los juegos de Steam corran en Linux tan bien como en Windows**, porque si Microsoft cerraba el grifo, Steam podía desaparecer de la noche a la mañana.

Primer intento (2013-2015): **SteamOS 1** (distro basada en Debian) y las **Steam Machines** — fracaso comercial rotundo por el clásico problema del huevo y la gallina: con gaming Linux por debajo del 1 % de cuota, los estudios no justificaban portar motores gráficos. La lección técnica valiosa: **si los desarrolladores no iban a venir a Linux, Linux tenía que aprender a ejecutar código de Windows sin pedirle permiso a nadie**.

## La jugada maestra: financiar el software libre

Estrategia silenciosa de financiar a la comunidad de software libre: contrataron y pagaron salarios directamente — a **Philip Rebohle**, creador de **DXVK**; a los ingenieros de **CodeWeavers** que trabajan en **Wine**; pusieron expertos en los drivers gráficos libres de **Mesa** (como **RADV** para tarjetas AMD). Arquitectura del fin del cuello de botella DirectX:

- **DirectX** (Direct3D 9/10/11) había sido durante décadas la «jaula dorada»: APIs de alto nivel diseñadas para procesadores de pocos núcleos, donde el driver del fabricante hacía magia y suposiciones en segundo plano.
- **Vulkan** (estándar abierto del Khronos Group): API moderna, explícita y de bajo nivel — control fino de la memoria de GPU, trabajo multi-hilo, shaders predecibles. Eso permite la **traducción en tiempo real**: **DXVK** intercepta las llamadas a Direct3D 9/10/11 y las traduce al vuelo a Vulkan; **VKD3D** hace lo mismo con DirectX 12.
- **Proton (2018)**: Valve empaqueta todo esto junto con Wine dentro de Steam — un clic para ejecutar cualquier juego exclusivo de Windows en Linux, transparentemente. **Wine** actúa como traductor en tiempo real del resto (audio, memoria, archivos) sin emular un sistema operativo entero.

Y lo asombroso: en muchos casos los juegos rinden **igual o mejor en Linux** — drivers Vulkan libres eficientes, menos procesos parásitos y telemetría, y **shader pre-caching** (Steam recopila y distribuye los shaders ya compilados, reduciendo los micro-stutters tan típicos en Windows).

## Steam Deck y el final del cuento

En **2022** llega la guinda: la **Steam Deck**, consola portátil con **SteamOS 3** basada en **Arch Linux** con KDE Plasma. Millones de personas juegan títulos triple-A sin saber que debajo corre Linux — no han tocado una terminal ni saben qué es una llamada POSIX, y no lo necesitan. Este «caballo de Troya» (en el mejor sentido), sumado a quienes instalaron Linux en sus propios PCs, llevó la **cuota de Linux en Steam a superar el 5 % por primera vez en marzo de 2026**, en tendencia ascendente. Cambió las reglas: estudios que se negaban a portar títulos ahora los optimizan para Linux para conseguir el badge «Steam Deck verified», y los grandes anti-cheat (**Easy Anti-Cheat**, **BattlEye**) ofrecen soporte para Proton. No lo logró imponiendo reglas ni restringiendo a nadie: lanzó una plataforma Linux tan eficiente que ahora nadie quiere quedarse fuera.

Paradoja final: Microsoft pasó más de 30 años intentando cercar el mundo del gaming (DirectX, su tienda), y **quien ayudó a poner los cimientos del imperio Microsoft terminó financiando a la comunidad de software libre** para construir un puente sobre DirectX, para que nadie tenga que pedir permiso para jugar en Linux. Valve lo hizo dos veces — primero con la distribución digital y luego con los sistemas operativos: cuando existe una solución superior que respeta a los usuarios, la tecnología y la comunidad terminan adoptando esa visión.

## Notas sobre la fuente

- Raw en inglés (subtítulos automáticos); resumen en español profesional.
- La locutora se presenta como «Alexia, la chica de sistemas» (según el ASR; verificar nombre contra el canal).
- Autopromoción: suscripciones, su propio vídeo previo sobre Linux en el escritorio, y su proyecto personal de juego estilo Monkey Island — excluidos de la síntesis.
- Sin patrocinios externos identificables.
- Nota colateral: excursus sobre la pronunciación de DOS («doss» vs «dose»), sin valor para la síntesis.
