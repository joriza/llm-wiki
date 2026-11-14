import { QuartzComponent, QuartzComponentConstructor, QuartzComponentProps } from "./types"
import style from "./styles/footer.scss"
import { version } from "../../package.json"

interface Options {
  // sin opciones
}

export default ((_opts?: Options) => {
  const FooterCustom: QuartzComponent = ({ displayClass }: QuartzComponentProps) => {
    // Se evalúa en build: fecha de generación del sitio (UTC)
    const buildDate = new Date()
    const pad = (n: number) => String(n).padStart(2, "0")
    const stamp = `${buildDate.getUTCFullYear()}-${pad(buildDate.getUTCMonth() + 1)}-${pad(buildDate.getUTCDate())} ${pad(buildDate.getUTCHours())}:${pad(buildDate.getUTCMinutes())} UTC`
    return (
      <footer class={`${displayClass ?? ""}`}>
        <p>
          Actualizado {stamp} · generado con <a href="https://quartz.jzhao.xyz/">Quartz</a> v
          {version}
        </p>
      </footer>
    )
  }

  FooterCustom.css = style
  return FooterCustom
}) satisfies QuartzComponentConstructor
