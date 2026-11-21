#!/usr/bin/env python3
"""Ideacion de contenido para el canal desde la wiki.

Cruza index.md y wiki/dominios.md para proponer temas de video:
  1. Clusters de conceptos transversales [[...]] compartidos por varias fuentes.
  2. Dominios con masa critica (series viables).
  3. Fuentes recientes (fin del index) como candidatos frescos.

Uso: python scripts/ideacion-canal.py [--min-cluster N] [--top N]

Salida: reporte de texto con candidatos priorizados.
"""

from __future__ import annotations

import argparse
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

RAIZ = Path(__file__).resolve().parent.parent
INDEX = RAIZ / "index.md"

FILA = re.compile(r"^\|\s*\[(.+?)\]\((.+?)\)\s*\|\s*(.*?)\s*\|\s*([a-z-]+)\s*\|")
CONCEPTO = re.compile(r"\[\[([a-zA-Z0-9-]+)\]\]")


def leer_fuentes() -> list[dict]:
    fuentes = []
    for linea in INDEX.read_text(encoding="utf-8").splitlines():
        m = FILA.match(linea)
        if not m:
            continue
        titulo, ruta, resumen, dominio = m.groups()
        fuentes.append(
            {
                "titulo": titulo,
                "ruta": ruta,
                "resumen": resumen,
                "dominio": dominio,
                "conceptos": set(CONCEPTO.findall(resumen)),
            }
        )
    return fuentes


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--min-cluster", type=int, default=3,
                        help="minimo de fuentes por cluster de concepto (default: 3)")
    parser.add_argument("--top", type=int, default=10,
                        help="cantidad de candidatos a mostrar por seccion (default: 10)")
    args = parser.parse_args()

    if not INDEX.exists():
        print(f"No se encontro {INDEX}", file=sys.stderr)
        return 1

    fuentes = leer_fuentes()
    if not fuentes:
        print("index.md no tiene filas parseables (formato de tabla inesperado).",
              file=sys.stderr)
        return 1

    # --- 1. Masa critica por dominio ---
    por_dominio: Counter[str] = Counter(f["dominio"] for f in fuentes)
    series = [d for d, n in por_dominio.most_common() if n >= 5]

    # --- 2. Clusters de conceptos transversales ---
    cluster: dict[str, list[dict]] = defaultdict(list)
    for f in fuentes:
        for c in f["conceptos"]:
            cluster[c].append(f)
    candidatos = sorted(
        ((c, fs) for c, fs in cluster.items() if len(fs) >= args.min_cluster),
        key=lambda x: (-len(x[1]), x[0]),
    )

    # --- 3. Fuentes recientes (ultimas filas del index = ultimas ingestas) ---
    recientes = fuentes[-10:]

    print(f"Fuentes parseadas: {len(fuentes)} en {len(por_dominio)} dominios\n")

    print("== SERIES VIABLES (dominios con >= 5 fuentes) ==")
    for d in series[: args.top]:
        print(f"  {por_dominio[d]:>3}  {d}")

    print(f"\n== CLUSTERS DE CONCEPTOS (>={args.min_cluster} fuentes) ==")
    for c, fs in candidatos[: args.top]:
        dominios = Counter(f["dominio"] for f in fs)
        cruce = ", ".join(f"{d}({n})" for d, n in dominios.most_common(3))
        ejemplos = "; ".join(f["titulo"][:60] for f in fs[:2])
        print(f"  [[{c}]] x{len(fs)}  [{cruce}]")
        print(f"      ej: {ejemplos}")

    print("\n== FUENTES RECIENTES (ultimas ingestas) ==")
    for f in reversed(recientes):
        print(f"  [{f['dominio']}] {f['titulo'][:90]}")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
