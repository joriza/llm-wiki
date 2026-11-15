# FAV-341 — Magic UI: componente Video Text (docs)

- **Fuente original**: fuente web no-YouTube (sin raw) — https://magicui.design/docs/components/video-text — Magic UI, docs oficiales del componente.
- **Dominio**: `general/` (desarrollo frontend; off-topic de IA).
- **Relacionado**: los componentes animados de Magic UI aparecen como material de maquetación en fuentes del corpus (p. ej. landings generadas por agentes en [[desarrollo-con-modelos-locales]]).

## Qué es

**Video Text** es un componente de texto de [Magic UI](https://magicui.design) (librería de componentes animados para React/Tailwind, tipo shadcn) cuyo relleno del texto es **un video de fondo** enmascarado dentro de las letras: el texto («OCEAN» en el demo) se dibuja como máscara SVG sobre un `<video>` en loop.

## Uso e instalación

- Instalación vía CLI de shadcn: `pnpm dlx shadcn@latest add @magicui/video-text` (también npm/yarn/bun); o copia manual del archivo a `components/ui/video-text.tsx`.
- Uso mínimo: `<VideoText src="https://cdn.magicui.design/ocean-small.webm">OCEAN</VideoText>` dentro de un contenedor con `overflow-hidden`.

## Props

| Prop | Tipo | Default | Descripción |
| --- | --- | --- | --- |
| `src` | string | **requerido** | URL del video de fondo |
| `children` | ReactNode | **requerido** | El texto que muestra el video en su interior |
| `elementType` | ElementType | `"div"` | Elemento contenedor a renderizar |
| `className` | string | `""` | Clases del contenedor |
| `autoPlay` / `muted` / `loop` | boolean | `true` | Comportamiento del video |
| `preload` | `"auto"\|"metadata"\|"none"` | `"auto"` | Precarga del video |
| `fontSize` / `fontWeight` | string\|number | `20` / `"bold"` | Tamaño y peso de la máscara de texto |
| `textAnchor` / `dominantBaseline` | string | `"middle"` | Anclaje del texto en la máscara |
| `fontFamily` | string | `"sans-serif"` | Fuente de la máscara |

## Comentario

Componente de efecto visual puro (hero de landing): sin lógica, el valor está en la máscara SVG sobre video y en los defaults sensatos (autoplay+mute+loop). Útil como pieza aislada, no requiere adoptar la librería entera.
