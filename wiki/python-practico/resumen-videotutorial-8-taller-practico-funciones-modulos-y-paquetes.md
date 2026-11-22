# Resumen: Videotutorial 8 — Taller Práctico Programación con Python. Funciones, módulos y paquetes

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2020-08-04-videotutorial-8-taller-practico-programacion-con-python-funciones-modulos-y-paqu.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «de de definición miel»→def, «por y con»→return, «df»→def, «payton»→Python, «pp y punto»→PyPI, «-- pay caché»→__pycache__, «guión andrés con under score in it punto b»→`__init__.py`, «flash»→Flask, «Ñandú/mnyandú»→ñandú (texto de prueba)) — https://www.youtube.com/watch?v=emLz-uzBScc — César Cancino, 2020-08-04 (22:16). Clase 8 del taller práctico del canal (cesarcancino.com); la autopromoción del sitio queda fuera de la síntesis.

## Funciones: definición, retorno y parámetros

Clase elemental sobre tres niveles de desacoplamiento de código:

- **Definición** con `def nombre():` — no se puede redefinir un nombre ya reservado (ej.: `print`); indentación de 4 espacios; reglas de nombres idénticas a las variables (sin guiones, sin iniciar con número). Se recomienda **no hacer `print` dentro de la función** sino **retornar** valores con `return`, y llamarla desde fuera con `nombre()`.
- **Parámetros**: recibidos por nombre en los paréntesis; el nombre elegido es el que debe usarse dentro del cuerpo; múltiples parámetros separados por coma; valores dinámicos formateados con f-strings al retornar. Regla práctica del canal: si una función necesita más de ~5 parámetros, la lógica está mal planteada (aunque funcione, penaliza orden y performance).
- Dentro de una función puede ir cualquier cosa (condiciones, ciclos).

## Módulos y paquetes

- **Módulo**: un archivo con funciones (u objetos) declaradas, desacoplado del `main` para hacerlo reutilizable; se importa con `from modulo1 import funcion` — se prefiere importar funciones concretas antes que el comodín `import *` (tema de performance/tendencia; notar que los frameworks como Flask o Django trabajan así, referenciando módulos/paquetes). Al importar, Python genera la carpeta `__pycache__` con el caché de ejecución: no tocarla, se regenera sola si se borra.
- **Paquete**: una carpeta que agrupa n módulos; Python la reconoce como paquete por la presencia de un archivo **`__init__.py`** (puede estar vacío). Se importa por ruta: `from paquete import modulo1` y las funciones se invocan con el prefijo del módulo (`modulo1.calcular(2, 4)`).

Progresión del ejemplo: función sin parámetros → con 1 parámetro → con 2 → mover las funciones a `modulo1.py` → importarlas desde `main` → llevar el módulo dentro de `paquete/` con `__init__.py` e importar por la ruta completa.

## Dónde encaja en la wiki

Es la lección base de estructuración de código del dominio: el desacoplamiento en funciones/módulos/paquetes es el prerrequisito de todo lo demás — el pipeline de [[automatizacion-con-python]] asume scripts organizados así, y la gestión moderna de paquetes/proyectos con [[resumen-FAV-333-uv-reemplaza-pip]] (uv vía pyproject.toml) es la evolución de este esquema manual de módulos y `__init__.py`.

---

**Ver también**: [[automatizacion-con-python]] · [[resumen-FAV-333-uv-reemplaza-pip]].
