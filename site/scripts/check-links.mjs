import fs from "node:fs"
import path from "node:path"

const dir = "public"
const files = []
;(function walk(d) {
  for (const e of fs.readdirSync(d, { withFileTypes: true })) {
    const f = path.join(d, e.name)
    if (e.isDirectory()) walk(f)
    else if (e.name.endsWith(".html")) files.push(f)
  }
})(dir)

const broken = new Map()
let checked = 0
for (const f of files) {
  const html = fs.readFileSync(f, "utf8")
  const re = /<a[^>]*href="([^"]*)"[^>]*class="[^"]*internal/g
  let m
  while ((m = re.exec(html))) {
    const href = m[1].split("#")[0]
    if (!href || href.startsWith("http")) continue
    checked++
    const t = path.resolve(path.dirname(f), href)
    let rel = path.relative(dir, t).split(path.sep).join("/")
    if (!path.extname(rel)) {
      if (fs.existsSync(path.join(dir, rel + ".html"))) continue
      if (fs.existsSync(path.join(dir, rel, "index.html"))) continue
    } else if (fs.existsSync(t)) continue
    if (!broken.has(rel)) broken.set(rel, f)
  }
}
console.log("links internos verificados:", checked)
console.log("rotos:", broken.size)
for (const [k, v] of [...broken].slice(0, 60)) console.log(" ", k, "<-", v)
