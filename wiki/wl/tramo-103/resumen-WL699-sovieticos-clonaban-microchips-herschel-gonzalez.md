# WL-699 — Cómo los Soviéticos Clonaban Microchips con un Microscopio

**Fuente**: [Vídeo](https://www.youtube.com/watch?v=UI0JtKuyEFQ) · Canal: Herschel González. · 2026-11-20 · 12:10 · Raw: `raw/wl/tramo-103/2026-11-20-como-los-sovieticos-clonaban-microchips-con-un-microscopio.md`

## De qué trata

Divulgación histórica sobre la ingeniería inversa de circuitos integrados en la URSS: desde la orden de 1961-62 (el circuito de Texas Instruments que Boris Malin trajo de EE. UU., examinado por Alexander Shokin con plazo de 3 meses) hasta la familia KR580 compatible con el Intel 8080, y por qué esa estrategia tenía un techo.

## Contenido técnico e histórico

- **Contexto de Guerra Fría electrónica**: la competencia menos visible tras armas y espacio; EE. UU. integraba (Texas Instruments, Fairchild) mientras la URSS, con computadoras y científicos propios, optó por copiar para acelerar.
- **Cómo se clona un chip sin planos**: descapsular, exponer el die, fotografiar por capas retirando sucesivamente, reconstruir conexiones (miles de transistores con riesgo de error fatal) y caracterizar el comportamiento — «el microscopio es importante, pero no hace el trabajo».
- **El KR580/К580ВМ80А**: compatible a nivel de instrucciones con el Intel 8080 pero no copia física idéntica — cambios en conexiones y distribución; confirmado por un informe de inteligencia de EE. UU. de 1985 que lo identifica como «versión modificada del 8080A» (la práctica era conocida durante la propia Guerra Fría, no leyenda).
- **Validación moderna**: el proyecto de ingeniería inversa de 2015 (VSLAB) reconstruyó el KR580ВМ80А — 4.758 transistores, esquemas, modelo Verilog funcional sobre hardware programable — mostrando el tamaño del trabajo con herramientas actuales.
- **El techo de la estrategia**: diseñar ≠ fabricar — rendimiento de fabricación, materiales de pureza, maquinaria especializada; y el ritmo de la industria (8080 en 1974, 8086 en 1978) hacía que al terminar el clon el original ya fuera obsoleto. Matiz final honesto: la informática soviética no fue solo copia — hubo desarrollos propios; el problema era «mantener el ritmo de una industria que avanzaba constantemente».

## Valoración

Divulgación técnica correcta y bien estructurada (12 min), con fuentes concretas (Chris Miller, informe de 1985, proyecto VSLAB/Zeptobars) y desambiguaciones valiosas (compatibilidad lógica vs. copia física; diseño vs. manufactura). Sin datos sospechosos; nombra su propio vídeo previo como serie. 1.ª fuente del canal en la wiki.

## Conexiones

- [[historia-software-corporativa]] y el dominio historia-informatica (computadoras soviéticas, clonación de arquitecturas — paralelo con los clones de IBM PC).
- Estrategia de copiar vs. innovar y su límite industrial: tangencial con [[historia-de-la-tecnologia]].
