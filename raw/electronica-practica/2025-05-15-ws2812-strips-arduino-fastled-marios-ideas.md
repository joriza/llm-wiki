# LED Strips & Arduino – Control WS2812 LED Strips with Arduino and FastLED

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=YKSFRmvA9A0)
- **Canal**: Mario's Ideas
- **Publicado**: 2025-05-15
- **Recopilado**: 2026-11-14
- **Idioma**: en (subtítulos automáticos en (auto), transcripción literal)
- **Duración**: 15:49

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] It's time for the third video in my LED series. If you want to find out everything about individually addressable LEDs, stick around. [Music] [Applause] [Music] In my last video, we explored RGB LED strips and how to control the color of the entire strip using an Arduino.

[00:27] during the close-up of an RGB segment. You may have noticed the LED has six SMD connection pads. But what if I told you there is an alternative? One that uses only four connections and lets you control each individual LED on the strip. This is the WS2812B LED, the main feature of this video.

[00:51] It has four connection paths, VCC, ground, data in, and data out. The data input receives color data from the microcontroller, and the data output passes the data to the next LED in the strip. Since the parts aren't labeled directly on the LED, there is a small physical queue, a notched corner, which indicates the ground connection to help you orient it correctly.

[01:18] And here is the same LED integrated into a segment of the LED strip. You can see the four connections extended to the solder paths on the strip. VCC which is 5 volts in this case, ground, data in and data out. Each segment also includes 100 nanofarad capacitor placed between VCC and ground pads. This capacitor helps to stabilize the power supply by filtering out voltage spikes and noise that could affect the LED's operation.

[01:48] In case of RGB LED strip, it didn't matter from which side of the strip the RGB soldering pads were connected to microcontroller. But with this type of digital strip, it absolutely does. You must connect the microcontroller to the correct end, the one marked DIN, data in. The microcontroller sends data through the DIIN pin and the signal flows in the direction clearly indicated by the arrows printed on the strip. So how is it possible that the LED with less connections is capable of so much

[02:21] more? It is all thanks to the driver chip inside each LED itself. Simplifying wiring and installation. We no longer have to think about sending PWM signals to composite LEDs inside the RGB LEDs. We just send the bits that carry the color definition. And it is this driver that translates them into PWM and does all the heavy lifting. The connectivity is very simple. If you're controlling just a few LEDs like in this example, we can power them directly using 5V and ground pins of the Arduino. If we have

[02:57] more LEDs to control or we are using strips that require a higher operating voltage like 12 volts, we need to use an external power supply. Just make sure it can provide enough current for the total number of LEDs. The data in pin connects to any digital pin on the Arduino. Since the data line operates at 5 V logic, we don't need any complex level shifting circuits or MOSFETs. Unlike we sometimes need for single color or analog RGB strips, for some LED strips like WS2815, you might see additional

[03:36] connection paths labeled B I and BO. These are backup input and output lines. We should connect the BI pad to the same Arduino pin as the main data input. They serve as a redundancy in case the main data line fails. Let's look at the libraries. Now I mentioned that there are two popular libraries for controlling this type of LEDs fast LED and nail pixel. I will briefly describe both but since I have a clear favorite I will continue using that one in the rest of the video. Let's compare them using a

[04:10] very simple sketch. We want to set all the LEDs to a single color. Red using fast LED and green using nail pixel. For both libraries, we begin by including the library header. Then we define the pin connected to the LED strips data input along with a number of LEDs in the strip. This setup is essentially the same for both. On the fast LED side, we declare an array of CRGB objects. Each element in this array represents a single LED. The CRGB type is defined in the fast LED library and consists of

[04:46] three bytes, one for each red, green, and blue components. You can think of this as a 24bit representation of the color in the RGB color model. I really like this tablelike representation of the LED strip in the code. It makes things intuitive. To initialize the strip, fast LED uses a single command inside the setup. In the nano pixel library, we declare the strip object globally and call its begin method in the setup. In the loop function, we use a for loop to iterate through each LED

[05:20] and assign a color. In the fast LED example, we set them all to red. In the nail pixel example, we use green. Once the colors are assigned, both libraries require a function call to actually update the strip and apply the changes.

[05:35] Time for a quick test. Let's load neopixel code. You can see all LEDs lit up nice and bright and green. Now let's do the same test using fast LED. This time all LEDs light up in red. Fast LED also lets you use predefined color constants like this one or directly assign a 24-bit color value to an LED in the array. As you can see, I clearly prefer fast LED. I find it easier to use and more intuitive. So from here on I will stick with fast LED for the rest of the project. If you feel

[06:11] differently or prefer no pixel library, I would love to hear your perspective and why it works better for you. Quite often in my projects, I don't use full RGB color spectrum. Instead, I limit myself to 255 colors using HSV color scheme. I actually made the whole video dedicated to this topic. Go and check it out. With just 255 colors, you still get vibrant saturated options which are more than enough for most LED strip projects.

[06:40] You select colors using CHSV command which takes three parameters. The color index from the palette shown in this graphic, then saturation and finally brightness. All three values range from 0 to 255 making it really straightforward. So if you want to light up the strip red, we'll use this command in our code. Let's pick few more distinct colors. Nice and simple. So how is individual control of each LED in the strip actually achieved? Let me demonstrate with a simple example. Let's

[07:27] say we have a strip with just four LEDs. Using the fast LED library, we define an array of CRGB objects and initialize the strip. Now, we can assign a different color to each LED by setting the corresponding CRGB entry in the array.

[07:43] In this case, let's set the first LED to blue, the second to red, the third to magenta, and the fourth to cyan. Each color requires three bytes. one for red, green, and blue. So for four LEDs, we are sending 12 bytes or 96 bits in total. This sequence of bits is constructed based on the color order specified when initializing the strip.

[08:08] I'm not certain whether each 8bit color component is transmitted most significant bit first or last. The actual bit order might differ slightly from this illustration, but you can get the idea. Once we have set the colors in the array and call fast LED show method, the data transmission begins. The first 24 bits enter through the DIIN pin and are captured by the driver chip in the first LED. It's important to note that in this protocol, a one is represented by a high signal lasting approximately 8

[08:43] of a microsconds. A zero is a high signal of about 4 microsconds. Both are followed by a low signal to complete a full bit cycle of roughly 1.25 microsconds. After the first LED buffers its 24 bits, it passes the remaining data through data outp. The second LED captures the next 24 bits and so on until all LEDs have their color data. But none of the LEDs actually update their color immediately.

[09:19] They all wait until the entire data stream has been received. And only after a brief reset signal, a low signal held for around 50 microcond do they all update simultaneously. I just set up a coffee page for anyone who'd like to show support with one-time contribution like buying me a coffee. I know that many of you have joined my Patreon as free members and I get it. Not everyone wants to commit to monthly subscription. Coffee gives you simple one-time way to show your appreciation whenever one of my videos

[09:54] really clicks with you. Every bit of support means a lot and helps keep project like this going. Thank you. You will find plenty of exciting code examples in the fast LED library. But let's write our own demo using the HSV color model and the chsv command to set individual LEDs. In short, we want to start by setting the first LED in the strip to HSV color zero, which is red.

[10:25] Then wait for 50 milliseconds. Shift that color state to the second LED and update the first LED with a new color by increasing its hue value by three. On the next step, we shift the color states from LEDs one and two to LEDs two and three and once again increment the hue of the first LED by three. This time setting it to hue value six. We repeat this process until the entire strip is lit, cycling smoothly through the HSV color spectrum. All right, let's start writing the code. We will quickly go

[10:59] over the parts we've already covered. Declaring the fast LED library, defining all the parameters needed to initialize the LED strip, setting up the array that represents the individual LEDs. Next, we declare a few variables and constants.

[11:16] Start color defines the hue value we begin the animation with set to zero. Red color step determines how much we increment the hue value after each update. Time tracking variable will help us measure the time elapsed since the last update. So the strip only changes every 50 milliseconds as defined by the time step variable. In the setup function, we initialize the LED strip with the parameters we defined earlier.

[11:43] set the desired brightness and ensure that all the LEDs are initially turned off. In the loop, we capture the current time using millies and compare it against our time tracking variable. If 50 milliseconds have passed since the last strip update, we refresh the time tracking variable with the current time stamp for future checks. Next, we shift all the LEDs one step to the right and insert a new color at the front of the strip by taking the previous hue and increasing it by three. Once that's

[12:14] done, we run the fast LED show command to reflect the changes on the strip. Let's connect the strip to the Arduino. We are powering it directly from the microcontroller and controlling it via pin 13. The code is already loaded, so all we need to do is power it up and the color animation begins.

[12:36] What can I say? It looks magical. It already looks good on a tangled LED strip. But just wait until I show you how it looks when I use proper LED strip channels with a plastic diffuser. I'll mount the LED strip inside the channel, then snap in the plastic panel. Here it is. Let's power up the Arduino. You can see the strip filling up with HSV colors one step at a time, continuing smoothly through the whole HSV spectrum. I also wrote another sketch, which I called comets, which

[13:15] lights up the first LED and pushes it forward, leaving a comet-like trail behind. I won't break down the code line by line for this one, but you can find it in the video description below. The sketch is loading and voila, the comets are being released. It may not be as visually striking as the previous one, but they have a special purpose for this effect and I will get to that shortly. WS2812 strips come in many shapes and forms. Here is a 32x8 LED matrix, but at its core, it's still just

[13:53] a strip. 256 LEDs in total. It's not immediately obvious how the LEDs are laid out. So, let's use the custom comet sketch I wrote to demonstrate it. The LED matrix is powered the same way as the regular strip. This time, I will connect it to Arduino Nano, but the concept is identical. We power it from Arduino and control it via one of the digital pins. This time, it's going to be digital pin 6. The sketch is loading.

[14:25] And here comes the first comet and the second one. Now we can clearly see how the LEDs are arranged in a snake layout. But by chance, I noticed something interesting. Have you? To make it clearer, I will place the matrix inside the 3D printed diffusion panel. And as you can see, the multicolored comets create a stunning wavelike effect. How about that?

[14:55] It not only looks cool, but also shows that when LEDs are arranged this way, you can project not only vibrant color patterns, but also more complex visual information like what you are seeing now. In one of my projects, I even created an LED strip shaped like a seven segment display. That way, I build a singledigit display that uses just one digital pin to control. So remember, you can use individually addressable LEDs in endless ways, shapes, and forms. Your only limit is your

[15:30] imagination. Let's wrap up this video. It's already too long. Thanks for your likes, shares, subscriptions, and I will see you in my next video. Ciao. [Music] [Applause] [Music]
