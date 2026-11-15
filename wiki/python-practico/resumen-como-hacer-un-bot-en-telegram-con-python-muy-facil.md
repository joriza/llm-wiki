# Resumen: Cómo hacer un BOT en TELEGRAM (CON PYTHON MUY FACIL)

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-01-15-como-hacer-un-bot-en-telegram-con-python-muy-facil.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «la voz/televoto»→TeleBot (pyTelegramBotAPI), «espn star telegram bots up»→pip install pyTelegramBotAPI, «wood/but father»→BotFather, «voto/voz/bots/bote»→bot, «toque»→token, «polín»→polling, «land»→lambda, «repito/robot cepli»→reply_to, «post fighter»→BotFather) — https://www.youtube.com/watch?v=wxOeEb2ElSU — Promise | Dev, 2021-01-14 (08:43).

## Setup: librería y token

Bot de Telegram mínimo con **pyTelegramBotAPI** (`import telebot`): `pip install pyTelegramBotAPI` y creación del bot vía **BotFather** en Telegram (comando `/newbot`, nombre y username); BotFather devuelve el **token** que identifica al bot en el código: `bot = telebot.TeleBot("<token>")` [00:00-02:07].

## Comandos con decoradores

El primer handler usa el decorador `@bot.message_handler(commands=['start','help'])` sobre una función que recibe el mensaje; dentro, `bot.reply_to(mensaje, "hola como estas")` responde al usuario [02:41-04:00]. El bucle se abre con **`bot.polling()`**: mantiene el bot atento a los mensajes entrantes [04:00]. Prueba real: pulsar «Iniciar» en el chat del bot dispara el comando start y la respuesta [04:42-05:17].

## Eco: repetir cualquier texto

Segundo handler con filtro por expresión: `@bot.message_handler(func=lambda m: True)` captura cualquier mensaje; la función responde con `bot.reply_to(mensaje, mensaje.text)` — el bot repite lo que el usuario escriba [05:53-07:49]. Detalle práctico de la demo: un `:` en vez de `_` produce error al abrir el script; el truco del canal es mirar si la ventana de consola sigue abierta (sin error) para validar el código.

## Configuración extra del bot

Cierre en BotFather: opciones de edición del bot (descripción, imagen, comandos visibles) desde el mismo chat [08:23]. Nota de época (2021): el token se maneja pegado en el código fuente, sin variables de entorno ni secretos.

## Dónde encaja en la wiki

Fuente de automatización de mensajería: los patrones decorator-handler + polling de TeleBot son la contraparte conversacional de consumir APIs con requests ([[resumen-taller-consumir-apis-con-python-poke-api]]) — el bot es un consumidor push de la API de Telegram — y un bloque de construcción natural de los flujos de [[automatizacion-con-python]]. La recomendación moderna que esta fuente no cubre: el token como secreto gestionado ([[dynaconf]]).

---

**Ver también**: [[resumen-taller-consumir-apis-con-python-poke-api]] · [[automatizacion-con-python]] · [[dynaconf]].
