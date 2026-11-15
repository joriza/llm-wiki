# Resumen: FastHTML — El nuevo framework para crear webs con Python

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2024-08-07-fasthtml-el-nuevo-framework-para-crear-webs-con-python.md` (video en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «fazas html»→FastHTML, «ovicon»→uvicorn, «riat»→React, «RX»→Reflex, «esite»→site, «v021/021»→0.21, «versel»→Vercel) — https://www.youtube.com/watch?v=wzyriWPkh8U — MoureDev TV, 2024-08-07 (05:43, video de noticia/primeras impresiones; el tramo final [04:15-05:43] es autopromoción de su curso de JavaScript — chuleta de variantes de console.log — excluida de la síntesis).

## FastHTML: otra apuesta por la web 100 % Python

Video de presentación (a días de su salida, agosto 2024) del contexto y las primeras impresiones sobre **FastHTML**:

- **Contexto**: momento de efervescencia de frameworks web en Python — «hemos pasado media vida con Django» y ahora surgen varios. Diagnóstico del canal: Python cada vez más importante y rápido; y el espejo inverso de JavaScript, que pasó de solo navegador a también servidor — Python pasa de servidor a también frontend. Tesis: quien ya domina Python no debería necesitar sí o sí aprender JavaScript/HTML para desarrollar web.
- **FastHTML en sí**: desarrollo con Python puro, componentes, JS/CSS embebibles cuando se necesita (importar el Script y «esto tira para adelante igual»); dinámico, reutilizable y con soporte de bases de datos. Por debajo usa **htmx**; corre con **uvicorn** como servidor; Vercel ya le dio soporte de despliegue sin configuración (igual que a React). La propia web del framework está hecha con FastHTML. Estado de madurez honesto: versión 0.21, 22 releases, nacido en enero de 2024, ~2.000 estrellas — «muy en pañales», aún lejos de la madurez de Reflex, aunque con documentación y tutoriales ya seguibles.
- **Diferencia con Reflex**: FastHTML es menos independiente — está más ligado internamente a cómo se haría la web con HTML; Reflex abstrae más.

## Dónde encaja en la wiki

Tercera fuente del hilo «frontend todo-Python» del dominio, tras Reflex ([[resumen-como-crear-una-web-con-python-desde-cero]] — mismo canal, contraste directo: «aún no tan maduro como Reflex pero buena pinta») y ReactPy ([[resumen-reactpy-tutorial-aplicaciones-frontend-creadas-con-python]]). El mapa de frameworks web de [[mapa-del-ecosistema-python]] acumula así Django/Flask/FastAPI + Reflex + ReactPy + FastHTML, y el servidor uvicorn ya visto en el primer FastAPI ([[resumen-crea-web-apis-con-python-y-fastapi-paso-a-paso]]) reaparece. Notas de época 2024: proyecto recién nacido; su estado actual y adopción real habrían que verificarlos; video declarativo — sin código.

---

**Ver también**: [[resumen-como-crear-una-web-con-python-desde-cero]] · [[resumen-reactpy-tutorial-aplicaciones-frontend-creadas-con-python]] · [[mapa-del-ecosistema-python]].
