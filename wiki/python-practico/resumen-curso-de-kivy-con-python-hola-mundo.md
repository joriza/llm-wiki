# Resumen: CURSO DE KIVY CON PYTHON - Hola mundo

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-09-30-curso-de-kivy-con-python-hola-mundo.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «kiwi/khyber/kevin/kylie/guild/kim/quien»→Kivy, «pib»→pip, «wins/weeks»→Wheels, «ley bold»→Label, «pulsamos»→from, «de vita»→de Vitta (instructor)) — https://www.youtube.com/watch?v=tleQtdMcUTI — Promise | Dev (instructor: Brian de Vitta), 2021-09-30 (07:19). Nota: primer capítulo del curso de interfaces gráficas con Kivy del canal.

## Instalación: pip y Wheels

Kivy requiere compilarse al instalarse con pip, así que el camino recomendado son los **Wheels** (distribuciones pre-compiladas): primero instalar las dependencias de wheel (comandos de la descripción) y recién entonces `pip install kivy` [00:09-02:53]. Nota de época (2021): hoy Kivy tiene wheels en PyPI y la instalación ya no necesita ese paso manual.

## Primer Hola Mundo: herencia de App

Dos imports: `from kivy.app import App` y `from kivy.uix.label import Label` [03:20]. El patrón Kivy mínimo [04:04-06:56]:
1. Crear una clase propia (nombre libre, aquí `KivySaludos`) que **hereda de App**.
2. Definir el método **`build(self)`** que retorna el widget raíz: `return Label(text='Hola')`.
3. Instanciar la clase y llamar a **`.run()`** — el olvido típico: sin instanciar ni llamar run la ventana no aparece (error cometido en vivo y corregido).

El instructor remarca la POO implícita: App y Label son clases (mayúsculas), self da acceso a los atributos, y build es el punto de entrada de la interfaz.

## Dónde encaja en la wiki

Primera fuente de GUI del dominio: presenta el patrón «clase que hereda de App + build() + run()» que toda app Kivy sigue. Contrasta con la interfaz de escritorio mencionada en la clase de grafos (Tkinter) y con Flet (próxima candidata de la playlist, generación posterior). Contexto: curso de 2021 sobre Python básico; utilidad actual como introducción al patrón, no a la instalación.

---

**Ver también**: [[resumen-clase-de-recorridos-de-grafos-en-python]].
