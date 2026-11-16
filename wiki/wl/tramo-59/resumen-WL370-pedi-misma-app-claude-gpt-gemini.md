# Resumen WL-370: Pedí la misma app de escritorio a Claude, GPT y Gemini: solo una abrió sin tocar código — Código Espinoza

**Fuente original:** `raw/wl/tramo-59/2026-09-16-pedi-la-misma-app-de-escritorio-a-claude-gpt-y-gemini-solo-una-abrio-sin-tocar-c.md` (YouTube: `KTp_fzlTKKM`, canal **Código Espinoza - Automatiza tu Vida**, publicado 2026-09-16, 5:21).

---

## Síntesis

Comparativa práctica (5:21) de **tres LLMs** (Claude, GPT, Gemini) construyendo la **misma app de escritorio Python** (inventario, 4 pantallas, SQLite, ejecutable Windows instalable) bajo reglas estrictas: mismo prompt exacto, PC limpia Windows sin Python previo, cero edición manual ronda 1, empaquetado idéntico. **Resultado: ninguna de las tres entrega un ejecutable listo para cliente real sin intervención humana.**

| Ronda | Claude | GPT | Gemini |
|---|---|---|---|
| **1. ¿Abre el .exe?** | ❌ Roto: ruta relativa a BD (PyInstaller no está en carpeta proyecto) | ❌ No compila: falta librería gráfica nativa Windows (no advertida) | ✅ **Abre a la primera** (4 pantallas, BD ok) |
| **2. Importar Excel sucio** (columnas desorden, vacías, precios como texto con $/comas) | ❌ **Se cae**: no valida datos sucios (símbolo moneda, coma miles) | ✅ **Maneja limpio**: limpia $, ignora vacías, avisa filas fallidas | (no probada en video tras ganar r1) |
| **3. PC limpia sin Python** (segunda máquina, Windows fresco) | ✅ Abre (ruta corregida) pero **200 MB, 8 s arranque** (dependencias completas innecesarias) | ✅ **Arranca <2 s, peso mínimo** (estructura limpia desde prompt original) | ❌ **Windows Defender alerta** → cliente no técnico cierra sin abrir |

**Conclusión del autor**: Para app de escritorio real que instala cliente sin ayuda → **GPT** (manejo datos sucios + empaquetado liviano). Para debug puntual en código existente → **Claude** (explica error mejor). Para explicar proyecto a no-programador → **Gemini** (insuperable), **pero no confiar en que corra en máquina del cliente**.

**Prompt ganador** (añadir al final de cualquier pedido de app escritorio):
> *"Assume que se va a empaquetar a un ejecutable y correr en una PC limpia sin Python. Maneja rutas absolutas y valida los datos de entrada como si vinieran sucios."*

Esa línea hizo que la ronda 2 se diera vuelta. Video hermano mencionado: mismo punto de venta en Tkinter, Flet, PyQt frente a cliente real → solo uno sobrevivió.

---

## Detalles técnicos de los fallos

| Fallo | Modelo | Causa raíz | Solución |
|---|---|---|---|
| **Ruta relativa BD** | Claude | `sqlite3.connect("inventario.db")` asume CWD = carpeta proyecto; PyInstaller extrae a temp (`_MEIPASS`) | `os.path.join(sys._MEIPASS, "inventario.db")` o `os.path.dirname(sys.executable)` |
| **Librería gráfica nativa faltante** | GPT | `tkinter` / `customtkinter` / `PyQt` requieren DLLs (Tcl/Tk, Qt) no incluidas en Python Windows estándar | Incluir `--hidden-import` / `--collect-all` en PyInstaller; o usar librería pura Python |
| **Validación Excel sucio** | Gemini (ganó r1) | `pandas.read_excel()` sin `dtype=str` + limpieza de `$`, `,`, vacíos | `df['precio'] = df['precio'].astype(str).str.replace(r'[\$,]', '', regex=True).astype(float)` + `dropna()` |
| **Empaquetado inflado** | Claude (r3) | PyInstaller incluye todo `site-packages` sin `--exclude-module` / `--add-data` selectivo | `--exclude-module=matplotlib` etc., `--add-data` solo lo necesario |
| **Windows Defender false positive** | Gemini (r3) | Ejecutable sin firma digital, heurística de empaquetador (PyInstaller) | Firmar certificado (`signtool`), o usar `cx_Freeze` / `py2exe` con manifest |

---

## Normalizaciones ASR (solo en este resumen)

- "Cloud" → **Claude** (ASR oye "Cloud" por "Claude").
- "Código Espinoza" → **Código Espinoza** (canal, nombre propio).
- "SQ Lite" → **SQLite**.
- "Potex" → **PyInstaller** (ASR: "PyInstaller" → "Potex" / "Potyex").
- "Teekinter" / "FLED" / "PQT" → **Tkinter / Flet / PyQt** (ASR fonético).
- "conías" → **PyQt** (ASR final del video).
- "Patreon" → **Patreon** (plataforma, mencionada para prompts completos).
- Cifras: 5:21 duración, 6 min código completo, 200 MB vs fracción, 8 s vs <2 s arranque, 3 rondas.

---

## Dominios destino sugeridos (consolidación aplazada, sin dominios nuevos)

- **agentes-de-codigo** — primera opción (comparativa LLMs para código, empaquetado, entrega real).
- **ia-uso-practico** — segunda opción (uso práctico de IA para desarrollo, prompt engineering).
- **python-practico** — tercera opción (Python desktop, PyInstaller, SQLite, pandas, empaquetado).

---

## Entidades / conceptos para cablear (búsqueda en `wiki/`)

- [[codigo-espinoza]] — canal (entidad consolidada: WL-334, 348, 370... 3+ fuentes).
- [[claude]] / [[gpt]] / [[gemini]] — modelos (entidades transversales).
- [[pyinstaller]] / [[empaquetado-python-windows]] — herramienta / problema central.
- [[sqlite-desktop-app]] — patrón (BD local en app escritorio).
- [[validacion-datos-sucios]] / [[excel-sucio-manejo]] — concepto transversal (clave para software real).
- [[windows-defender-falso-positivo]] — problema de distribución.
- [[prompt-engineering-desktop-app]] — prompt ganador (rutas absolutas + validación sucia).
- [[tkinter-flet-pyqt]] — frameworks GUI comparados en video hermano.