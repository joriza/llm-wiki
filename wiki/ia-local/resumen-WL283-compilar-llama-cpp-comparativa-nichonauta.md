# WL-283 — «Compilar llama.cpp [Comparativa] ⚡ ¿Vale la PENA frente al precompilado?» (Nichonauta)

- **Fuente original**: `raw/ia-local/2026-09-28-compilar-llama-cpp-comparativa-vale-la-pena-frente-al-precompilado.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=R94y_vpg_UM · Canal Nichonauta · Publicado 2026-09-27 · 08:53 · Subtítulos automáticos es
- **Tramo**: 41, fuente útil 4/5 (posición 95 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): ia-uso-practico/ia-local (cruces [[inferencia-local]], WL-239/240/253/254, agentes-de-codigo)

## Qué es

Experimento (9 min): usar un agente de código (Codex CLI) desde la propia carpeta de llama.cpp para clonar el repositorio oficial y compilarlo con soporte CUDA para una RTX 3060 12 GB, y comparar tokens/s contra el binario precompilado oficial con parámetros idénticos.

## Puntos clave

- **El agente trabajando**: lista la estructura de carpetas para orientarse, clona `ggml-org/llama.cpp`, detecta que faltan CMake y NVCC, instala el toolchain en carpetas locales (sin sudo — al pedir contraseña, crea un toolchain portátil en vez de elevar), configura backend CUDA para SM_86 (Amper) y compila CPU + kernels cuSM86.
- **La comparativa**: con exactamente los mismos parámetros de ejecución y un archivo de prueba corregido respecto del video anterior (los ajustes no eran idénticos — corregido aquí), precompilado ≈ 9,2 tok/s vs compilado propio ≈ 9,5 tok/s tras estabilizar (el arranque mostró ~14 tok/s ilusorios, reconocidos como artefacto).
- **Conclusión honesta**: la ganancia es ~5 % «si somos optimistas» — no justifica cambiar la forma de trabajar; con la misma GPU, salvo desoptimización grave, compilar da ventajas marginales. La velocidad está dominada por el tamaño del modelo (parcialmente en CPU/RAM: modelo demasiado grande para la VRAM).
- **Valor secundario**: el video es también una demo de agente con acceso a archivos y comandos del sistema haciendo una tarea real de compilación, con revisión humana de lo que va haciendo («una cosa es pedirle algo a una IA y otra que lo haga bien»).

## Salvedades de triage

- Benchmark propio de una sola GPU y un modelo, sin repetición estadística; el propio autor relativiza el resultado y corrige el método del video previo — buena honestidad metodológica.
- Nombres por transcripción automática («Scuda», «Yama CPP», «Prism ML», «bonsai 2», «Qen 3.8 flash») a normalizar en consolidación.

## Cruces sugeridos

- Cluster [[inferencia-local]] (WL-239/240/253/254): optimización de runtime local; contraste con WL-253 (builds de llama.cpp/rama PrismML ya mencionada ahí — verificar).
- [[agentes-de-codigo]]: agente CLI realizando compilación real — misma línea que WL-137/153 (demos de harness).
