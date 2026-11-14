import { QuartzComponent, QuartzComponentConstructor, QuartzComponentProps } from "./types"
import style from "./styles/footer.scss"
import { version } from "../../package.json"
import { buildMeta } from "./buildMeta.generated"

interface Options {
  // sin opciones
}

export default ((_opts?: Options) => {
  const FooterCustom: QuartzComponent = ({ displayClass }: QuartzComponentProps) => {
    // Se evalúa en build: fecha de generación del sitio (UTC)
    const buildDate = new Date()
    const pad = (n: number) => String(n).padStart(2, "0")
    const stamp = `${buildDate.getUTCFullYear()}-${pad(buildDate.getUTCMonth() + 1)}-${pad(buildDate.getUTCDate())} ${pad(buildDate.getUTCHours())}:${pad(buildDate.getUTCMinutes())} UTC`

    // Degradación elegante: si no hay meta de commit, solo la fecha de build.
    const commitLine =
      buildMeta.commitDate != null ? (
        <>
          {" · "}
          {buildMeta.commitDate}
          {buildMeta.commitHash != null && (
            <>
              {" ("}
              <a href={`https://github.com/joriza/llm-wiki/commit/${buildMeta.commitHash}`}>
                {buildMeta.commitHash}
              </a>
              {")"}
            </>
          )}
          {` · ${buildMeta.fuentesProcesadas} fuente${
            buildMeta.fuentesProcesadas === 1 ? "" : "s"
          } procesada${buildMeta.fuentesProcesadas === 1 ? "" : "s"}`}
        </>
      ) : null

    return (
      <footer class={`${displayClass ?? ""}`}>
        <p>
          Actualizado {stamp}
          {commitLine} · generado con <a href="https://quartz.jzhao.xyz/">Quartz</a> v
          {version}
        </p>
      </footer>
    )
  }

  FooterCustom.css = style
  return FooterCustom
}) satisfies QuartzComponentConstructor
