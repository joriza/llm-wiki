# Resumen: Inductores Explicados

- **Fuente**: `raw/electromecanica/2026-11-15-inductores-explicados.md` ([YouTube](https://www.youtube.com/watch?v=Gckb8cS1h5g), FAV-501, carpeta Electromecanica/Electronica)
- **Canal**: Engineering Mindset (Mentalidad De Ingeniería)
- **Publicado**: 2020-10-20 · **Duración**: 10:15 · **Recopilado**: 2026-11-15

## Qué cubre

Fundamentos del **inductor** — tercero de la serie de componentes del canal en el dominio ([[resumen-FAV-499-diodos-explicados]], [[resumen-FAV-500-capacitores-explicados]], este, transistor FAV-502): cómo almacena energía en un campo magnético y por qué se opone a los cambios de corriente.

## Ideas clave

- **Definición**: componente que **almacena energía en un campo magnético** y puede liberarla casi instantáneamente.
- **Analogía estructurante** (contrapunto del tanque del capacitor): una **rueda de agua pesada** en una rama de tubería — al abrir la bomba le cuesta arrancar (opone resistencia), al acelerar deja pasar casi todo el flujo, y al apagar la bomba su **inercia sigue empujando agua** por un tiempo. Conductor paralelo con lámpara: al energizar la lámpara brilla primero (el inductor resiste), luego se apaga (el inductor, ya sin oposición, cortocircuita el camino); al cortar la fuente, la energía del campo mantiene la lámpara encendida un instante más.
- **Física**: corriente → campo magnético alrededor del cable (brújulas); enrollar en bobina fusiona los campos de cada vuelta en uno mayor. Al cortar la corriente el **campo colapsa y se convierte de vuelta en energía eléctrica** que empuja electrones.
- **Principio central: el inductor «no le gusta el cambio»** de corriente — genera una **FEM (fuerza electromotriz)** que se opone a la que lo creó: frena el aumento al encender y empuja electrones para sostener la corriente al apagar. En osciloscopio: la resistencia sube/cae en escalón vertical, el inductor en **perfil curvo** (rampa exponencial) en ambos sentidos.
- **Formas y unidades**: cable de cobre enrollado en cilindro o anillo, a veces con cubierta para apantallar el campo; símbolos estándar. **Todo lo que tenga cable enrollado actúa como inductor: motores, transformadores y relés**. Inductancia en **henrios (H)** — más henrios = más energía y campo más lento en formarse.
- **Usos**: convertidores elevadores **boost** (suben V de CC bajando I), restricción de CA dejando pasar CC, filtrado/separación de frecuencias, transformadores, motores y relés.
- **Medición**: un multímetro estándar no mide inductancia (algunos modelos la incluyen, con poca exactitud); lo preciso es un **medidor LCR**.

## Notas

- ASR con garbiñeos («frame/feng» por FEM); normalizado solo aquí.
- Canal Engineering Mindset **5ª fuente de la ventana** (490/498/499/500/501) — entidad candidata firme. Serie componentes diodo/capacitor/inductor/transistor casi completa (falta FAV-502/503 en esta ventana) → candidata a página de concepto serie al cierre. Cruce con [[condensador-rc]] (contraste capacitor/inductor).
