# Como Conectar LEDs a 220V sin transformador

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=MPydeX-V2n4)
- **Canal**: Electgpl
- **Publicado**: 2015-05-09
- **Recopilado**: 2026-11-14
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 12:43

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] Bueno hoy lo que vamos a armar es una fuente simple directa de 220 para alimentar ledes como pueden ver Acá tengo un circuito muy básico puente rectificador capacitor de filtrado capacitores de entrada y los leds en este caso son solo cuatro leds como se puede ver lo prendemos y lo apagamos Esto está descargando está apagado ahora pero el capacitor va a tardar un ratito en Descargar tengan en cuenta siempre de que eh usar protección cuando estén usando 220 vol de de la red eléctrica yo

[00:45] tengo una una llave térmica en este caso el circuito tiene pocos led por lo que tal vez no sea muy útil pero es posible usar más más led para hacer una luminaria que nos sirva también van a ver acá que hay cuatro capacitores Esto no es necesario Solo que yo lo usé porque el valor de capacidad que necesitaba no lo tenía y Bueno tuve que ponerlos en serie para reducir ahora vamos a hacer un circuito y vamos a hacer los cálculos necesarios para este para este circuito tenemos suministro

[01:27] eléctrico los capacitores tenemos el puente rectificador lo voy a dibujar de esta forma pero es un puente rectificador común de este lado tenemos el capacitor de filtrado Y tenemos los leds como se puede ver no tenemos puesta la resistencia acá podríamos poner una resistencia Pero esto va a depender de la corriente que esté llegando al circuito No pero esta corriente también la vamos a limitar con este capacitor nosotros podríamos en lugar de poner este capacitor poner una resistencia que es lo que uno conoce

[02:23] como limitador de corriente pero por algunos motivos vamos a usar un capacitor que ahora les voy a comentar en este caso donde yo estoy tengo 220 vol pero en realidad medido con el multímetro no llega a los 200 a los 220 sino que estamos en el orden de los 210 vol aproximadamente nosotros tenemos en el tiempo una señal senoidal como se puede ver acá donde vamos a tener un valor pico un valor eficaz este valor eficaz es el que es el que se conoce como este valor rms por qué es esto Este es

[03:23] el valor que se encuentra al 70,7 por de la señal valor rms viene de raíz media cuadrática raíz media cuadrática es ra 2 sobre 2 Este es el valor que esto es 1,41 sobre 2 0,707 de ahí viene raíz media cuadrática 0,707 lo que se suele Llamar valor eficaz se encuentra más abajo en vez 7% al 63,9 Pero esto es otra cosa por el momento vamos a manejarnos con el valor rms que es 0 707 entonces si yo tengo 200 10 vol por la raí 2 yo lo que estoy haciendo acá no hice ra sobre 2 y todo

[04:26] eso porque tendría que dividirlo Y esta es la fórmula la sencilla pero si hacemos este cálculo nos va a dar 298 vol Entonces ahora tenemos que calcular lo que vendría a ser la la tensión que necesitan los leds acá estos led que estoy usando son de 2,5 vol y 20 mamp entonces 2,5 * 4 tenemos 10 vol para los cuatro led y ahora vamos a calcular el valor este la resistencia limitadora Entonces por ley de Ohm tenemos que la resistencia es la tensión sobre la corriente en este caso la tensión son

[05:22] 298 vol menos los 10 vol de los led sobre la corriente que va a ser 20 m ahora vamos a calcular esta parte 200 298 - 10 sobre 20 mamp nos da 14400 ohms o sea eh 14,4k Para decirlo bien 14,4 K ahora tenemos que calcular el capacitor para el capacitor tenemos una fórmula que es de reactancia xc reactancia capacitiva que es igual a 1 sobre Omega C donde Omega es 2 pi por la frecuencia en nuestro caso la frecuencia son 50 hz Así que 2 * 3,14 15 92 etcétera por 50 nos va a dar 314

[06:29] clavados ahora para sacar la capacidad lo que tenemos que hacer es la capacidad es igual a Omega xc por despeje Entonces no tenemos que 1 sobre dijimos que Omega 314 por trabajar a 50 hz por 14400 ohms que es lo que nos nos quedaba a nosotros vamos otra vez a la calculadora y hacemos uno sobre 314 * 14 400 esto nos da 200 21 nanofaradios nos da 221 nanofaradios Entonces el valor del capacitor que tenemos que poner acá es de 200 21 nanofaradios la tensión es de 4 200 vol podemos meter menos tensión pero no

[07:34] hay mucha diferencia monetaria entre 200 vol y 400 y el material es poliéster acá vamos a poner un capacitor que se va a encargar de filtrar según la corriente nosotros para 50 hz con 100 microfaradios nos está sobrando ya que se calcula un microfaradio por ampere y acá tenemos menos de 100 m sea que con 100 microfarad estaría sobrando y la tensión puede ser 16 Por qué Porque la tensión entre este punto es de 10 vol Acá hay 10 vol Así que no va a haber mucho más si acá tendríamos

[08:07] por ejemplo 100 leds la cosa cambiaría Y serían 250 vol Entonces el capacitor este tendría que ser más grande en tensión una aislación mayor Por qué les decía que nos convine usar este capacitor esto es porque voy a correr un poco acá porque nosotros medimos el capacitor tenemos que la tensión se encuentra en esta fase y la corriente se encuentra adelantada a 90 gr quiere decir que no sé si se entiende Pero a lo que voy es que en el momento máximo de la tensión la corriente es

[08:58] cero Entonces cuando hay mayor cantidad de tensión nos acordamos de la de la Fórmula vol por amper tensión por corriente es potencia Entonces cuando tenemos la tensión máxima la corriente es cero cualquier número multiplicado por c dará potencia c Lo mismo sucede en el en el caso inverso Cuando tenemos Esto me quedó medio defasado pero en realidad tiene que coincidir cuando nosotros cuando nosotros tenemos la tensión en cero la corriente va a ser máxima entonces pasaría lo mismo si la

[09:47] corriente es máxima la tensión es cer0 otra vez multiplicado por c cer por por este motivo nosotros nos vamos a dar cuenta que el capacitor va a disipar muy poca potencia en realidad nunca va a ser cero que esto sería para un capacitor ideal para la práctica va a ser muy poca Potencia de disipación Por eso nos conviene usar un capacitor en lugar de una resistencia entonces una vez que podemos ver la teoría otra vez les muestro el circuito donde tenemos los capacitores yo los Tuve que poner en serie porque no

[10:20] tenía de 220 nanofaradios entonces puse este de un microfaradio en serie cuatro que esto quiere decir que nos da 250 nanofaradios por ahí más o menos le andar un poco menos porque no tien 1 microfaradios el puente rectificador los cuatro leds y el capacitor si nosotros nos fijamos acá yo voy a poner ahora el multímetro lo voy a poner para medir la tensión en los leds que es lo que nosotros calculamos a ver si los cables me lo permiten no quiero hacer ningún corto pero bueno ahí más o

[11:11] menos está A ver no estamos haciendo corto Bueno vamos Salle ahí encendemos prendemos multímetro Y si subimos leemos 9.35 vol Por qué no tenemos 10 vol en lugar de . 5 porque nosotros tenemos un puente rectificador de por medio que los diodos tienen una caída de tensión que esa caída de tensión es la que hace que no nos llegue la tensión que nosotros calculamos sino un valor apenas más abajo también este circuito hay que tener en cuenta que es sensible a los a las subidas y bajadas de

[11:53] tensión nosotros podríamos mejorarlo utilizando una resistencia sea para el capacitor para la carga y descarga para que no se estrese tanto podríamos ponerle una resistencia en serie al capacitor también para la carga y la descarga y podríamos armar una fuente luego de esta resistencia con un diodo cener por ejemplo para estabilizar la tensión y elevarla un poquito es decir si nosotros necesitamos 10 vol podríamos entregar en este punto podríamos tener por ejemplo 20 vol y estabilizarlo con un

[12:30] a 10 vol Entonces de esa forma nosotros estaríamos cumpliendo también entre subidas y bajadas de tensión en la línea eléctrica Bueno espero que les haya servido saludos
