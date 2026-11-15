# Resumen: Cómo identificar un transistor NPN-PNP (Humberto Higinio)

- **Fuente**: `raw/electromecanica/2026-11-15-identificar-transistor-npn-pnp.md` ([YouTube](https://www.youtube.com/watch?v=OakNLWQRBQQ), FAV-543, carpeta Electromecanica)
- **Canal**: Humberto Higinio
- **Publicado**: 2015-04-24 · **Duración**: 11:34 · **Recopilado**: 2026-11-15
- **Nota**: `&list=` de playlist ajena ignorado por regla S4.

## Qué cubre

Método práctico con **multímetro en modo diodo** para identificar tipo (NPN/PNP) y base de un BJT sin datasheet, probado sobre 4 transistores de potencias distintas. Complemento práctico de [[resumen-FAV-502-transistor-explicado]].

## Ideas clave

- **Estructura**: BJT = 3 obleas semiconductoras — NPN (N-P-N) o PNP (P-N-P); la oblea central es siempre la **base**; los extremos son colector y emisor.
- **Regla del símbolo**: flecha **hacia afuera** = NPN (corriente sale por el emisor); flecha **hacia adentro** = PNP.
- **Método con multímetro (modo diodo)**: buscar el pin que **conduce hacia los otros dos** (caída de ~0,6-0,7 V en ambas combinaciones) — ese es la **base**. Si la **punta roja** está en la base → **NPN** (la base es P); si la **negra** está en la base → **PNP** (la base es N). Invertidas las puntas, no marca nada.
- **Demostraciones**: 2N3904 (NPN, base al centro, 0,67 V), su complemento 2N3906 (PNP), BD136 (PNP de media potencia, base a un extremo — ¡los pines no siempre van en el mismo orden!) y 2N3055 (NPN de potencia, colector en la carcasa, solo 2 pines visibles).
- Lección implícita: **el orden de pines varía** por modelo — nunca asumir, siempre medir.

## Cruces

- Práctica directa de [[resumen-FAV-502-transistor-explicado]] (BJT, unión P-N) y [[resumen-FAV-499-diodos-explicados]] (la caída de diodo de la unión base-emisor/colector); los transistores identificados aparecen en [[resumen-FAV-503-como-funciona-un-mosfet]] (2N3055 en etapas de potencia) y el clúster detectores (BC547/BC557, FAV-512).
- Canal Humberto Higinio: 1ª fuente → candidato a entidad si reaparece.
