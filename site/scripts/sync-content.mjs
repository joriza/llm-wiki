#!/usr/bin/env node
// Sincroniza wiki/ -> site/content/ para Quartz 4.
// - Copia *.md preservando la estructura de dominios.
// - Excluye raw/, log.md, .atl/, odd/ (anti-fuga).
// - Añade frontmatter mínimo (title desde el primer H1).
// - Genera la portada index.md a partir de wiki/dominios.md.
// Uso:
//   node scripts/sync-content.mjs            # sincroniza
//   node scripts/sync-content.mjs audit DIR  # auditoría anti-fuga sobre DIR (p.ej. ../public)

import fs from "node:fs"
import path from "node:path"
import { execFileSync } from "node:child_process"
import { fileURLToPath } from "node:url"

const scriptDir = path.dirname(fileURLToPath(import.meta.url))
const siteDir = path.resolve(scriptDir, "..")
const WIKI = path.resolve(siteDir, "..", "wiki")
const CONTENT = path.join(siteDir, "content")

// Segmentos/rutas prohibidos en el contenido del sitio (regla dura S6)
const FORBIDDEN_SEGMENTS = ["raw", ".atl", "odd"]
const FORBIDDEN_FILES = new Set(["log.md"])

function isForbidden(relPath) {
  const parts = relPath.split(/[\\/]/)
  if (FORBIDDEN_FILES.has(parts.at(-1).toLowerCase())) return true
  return parts.some((p) => FORBIDDEN_SEGMENTS.includes(p.toLowerCase()))
}

function walkMd(dir, base = dir) {
  const out = []
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name)
    const rel = path.relative(base, full)
    if (isForbidden(rel)) continue
    if (entry.isDirectory()) out.push(...walkMd(full, base))
    else if (entry.isFile() && entry.name.toLowerCase().endsWith(".md")) out.push(full)
  }
  return out
}

function extractTitle(md) {
  for (const line of md.split(/\r?\n/)) {
    const m = line.match(/^\s*#\s+(.+?)\s*$/)
    if (m) return m[1].replace(/\[\[|\]\]/g, "").trim()
  }
  return null
}

function sanitizeRawLinks(md) {
  // Los resúmenes citan raws como enlaces Markdown a ../../raw/...; en el sitio
  // la cita queda como texto plano (S6: sin enlace al archivo original).
  return md.replace(/\[([^\]\n]+)\]\(([^)\n]+)\)/g, (m, label, url) => {
    const target = url.toLowerCase()
    if (/(^|[\\/.])raw\//.test(target) || /\.atl\//.test(target) || /(^|[\\/.])odd\//.test(target))
      return label
    return m
  })
}

function withFrontmatter(md, relPath) {
  md = sanitizeRawLinks(md)
  if (md.startsWith("---")) return md // ya tiene frontmatter
  const title = extractTitle(md) ?? path.basename(relPath, ".md")
  return `---\ntitle: ${JSON.stringify(title)}\n---\n\n${md}`
}

function clearContent() {
  fs.rmSync(CONTENT, { recursive: true, force: true })
  fs.mkdirSync(CONTENT, { recursive: true })
}

function buildIndex() {
  const dominiosPath = path.join(WIKI, "dominios.md")
  const dominiosMd = fs.readFileSync(dominiosPath, "utf8")
  const rows = dominiosMd
    .split(/\r?\n/)
    .filter((l) => /^\| `[^`]+\/`\s*\|/.test(l))
    .map((l) => {
      const [nameCell, scopeCell] = l
        .split("|")
        .slice(1, 3)
        .map((s) => s.trim())
      const folder = nameCell.match(/`([^`]+)\/`/)[1]
      return { folder, scope: scopeCell }
    })

  const counts = {}
  const files = walkMd(WIKI)
  for (const f of files) {
    const rel = path.relative(WIKI, f)
    const dir = path.dirname(rel)
    if (dir !== ".") {
      const top = dir.split(/[\\/]/)[0]
      counts[top] = (counts[top] ?? 0) + 1
    }
  }

  const lines = [
    "---",
    `title: "Wiki de conocimiento personal"`,
    "---",
    "",
    "# Wiki de conocimiento personal",
    "",
    "Wiki personal en español: resúmenes de fuentes organizados por dominios temáticos,",
    "mantenida a partir de notas y transcripciones originales.",
    "",
    "- Visión general: [[overview]]",
    "- Síntesis acumulativa: [[sintesis]]",
    "",
    "## Hubs de primer nivel",
    "",
    "Vista de presentación; los dominios siguen siendo carpetas.",
    "",
    "- [[hubs-ia]] — IA",
    "- [[hubs-electronica-y-energia]] — Electrónica y energía",
    "- [[argentina]] — Argentina",
    "- [[hubs-hogar-y-vida-practica]] — Hogar y vida práctica",
    "- [[hubs-tecnologia-y-sociedad]] — Tecnología y sociedad",
    "- [[hubs-historia-y-archivo]] — Historia y archivo",
    "",
    "## Dominios",
    "",
  ]
  for (const d of rows) {
    const n = counts[d.folder] ?? 0
    const scope = d.scope.replace(/\[\[|\]\]/g, "")
    lines.push(`- **[${d.folder}](./${d.folder})** (${n} página${n === 1 ? "" : "s"}) — ${scope}`)
  }
  lines.push("")
  fs.writeFileSync(path.join(CONTENT, "index.md"), lines.join("\n"), "utf8")
  return { domains: rows.length, files: files.length }
}

// Meta de build para el footer: conteo de fuentes (resumen-*.md en wiki/ ANTES de copiar)
// y último commit (fecha ISO corta %as + hash corto %h) ejecutado desde la raíz del repo.
function collectBuildMeta(files) {
  const fuentes = files.filter((f) => path.basename(f).toLowerCase().startsWith("resumen-")).length
  let commitDate = null
  let commitHash = null
  const repoRoot = path.resolve(siteDir, "..")
  try {
    const out = execFileSync("git", ["log", "-1", "--format=%as|%h"], {
      cwd: repoRoot,
      encoding: "utf8",
      stdio: ["ignore", "pipe", "ignore"],
    }).trim()
    const [d, h] = out.split("|")
    if (d) commitDate = d
    if (h) commitHash = h
  } catch {
    // git no disponible o repo sin commits: el footer degrada a la fecha de build
  }
  return { commitDate, commitHash, fuentesProcesadas: fuentes }
}

function writeBuildMeta(meta) {
  // Módulo .ts generado: importable directamente por FooterCustom.tsx en el build de Quartz.
  const out = `// Generado por site/scripts/sync-content.mjs — NO editar a mano.
export interface BuildMeta {
  commitDate: string | null
  commitHash: string | null
  fuentesProcesadas: number
}

export const buildMeta: BuildMeta = ${JSON.stringify(meta, null, 2)}
`
  fs.writeFileSync(
    path.join(siteDir, "quartz", "components", "buildMeta.generated.ts"),
    out,
    "utf8",
  )
}

function sync() {
  const files = walkMd(WIKI)
  writeBuildMeta(collectBuildMeta(files))
  clearContent()
  let copied = 0
  for (const f of files) {
    const rel = path.relative(WIKI, f)
    const dest = path.join(CONTENT, rel)
    fs.mkdirSync(path.dirname(dest), { recursive: true })
    fs.writeFileSync(dest, withFrontmatter(fs.readFileSync(f, "utf8"), rel), "utf8")
    copied++
  }
  const stats = buildIndex()
  console.log(
    `sync-content: ${copied} archivos copiados, ${stats.domains} dominios, portada generada.`,
  )
}

function audit(dir) {
  if (!fs.existsSync(dir)) {
    console.error(`audit: el directorio no existe: ${dir}`)
    process.exit(2)
  }
  const leaks = []
  function walk(d) {
    for (const entry of fs.readdirSync(d, { withFileTypes: true })) {
      const full = path.join(d, entry.name)
      const rel = path.relative(dir, full)
      if (isForbidden(rel)) leaks.push(rel)
      if (entry.isDirectory()) walk(full)
    }
  }
  walk(dir)
  // además, buscar referencias de ruta prohibida dentro del HTML generado
  const contentLeaks = []
  function scanHtml(d) {
    for (const entry of fs.readdirSync(d, { withFileTypes: true })) {
      const full = path.join(d, entry.name)
      if (entry.isDirectory()) scanHtml(full)
      else if (/\.(html|js|css)$/.test(entry.name)) {
        const text = fs.readFileSync(full, "utf8")
        // FUGA dura: enlaces (href/src) hacia rutas prohibidas en el output generado
        const hrefRe = /(?:href|src)="([^"]*)"/g
        let hm
        while ((hm = hrefRe.exec(text))) {
          const t = hm[1].toLowerCase()
          if (/(^|[\\/.])raw\//.test(t) || /\.atl\//.test(t) || /(^|[\\/.])odd\//.test(t)) {
            contentLeaks.push(`${path.relative(dir, full)}: ENLACE ${hm[1]}`)
          }
        }
        // Avisos: texto citando rutas raw/ (cita textual, sin enlace)
        const m = text.match(/[\w\-. /\\]*\braw\/[\w\-. /\\]+/g)
        for (const hit of m ?? []) {
          if (!/chokidar|raw\/picocss|quartz/.test(hit))
            contentLeaks.push(`${path.relative(dir, full)}: texto ${hit.trim()}`)
        }
      }
    }
  }
  scanHtml(dir)
  if (leaks.length) {
    console.error(`audit: FUGA — ${leaks.length} archivos prohibidos en el output:`)
    for (const l of leaks) console.error(`  ${l}`)
    process.exit(1)
  }
  if (contentLeaks.length) {
    console.warn(
      `audit: avisos de referencias a rutas prohibidas en texto (citas, sin enlace): ${contentLeaks.length}`,
    )
    const uniq = [...new Set(contentLeaks)]
    for (const l of uniq.slice(0, 10)) console.warn(`  ${l}`)
    if (uniq.length > 10) console.warn(`  ... y ${uniq.length - 10} más`)
  }
  console.log(`audit: OK — 0 archivos prohibidos en ${dir}.`)
}

const mode = process.argv[2]
if (mode === "audit") audit(path.resolve(process.argv[3] ?? path.join(siteDir, "public")))
else sync()
