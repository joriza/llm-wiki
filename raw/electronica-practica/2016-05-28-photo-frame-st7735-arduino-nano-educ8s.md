# Arduino Project: 1.8" DIY Photo Frame using an Arduino Nano and a 1.8" ST7735 Color TFT display.

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=X8syt55ITUo)
- **Canal**: educ8s.tv
- **Publicado**: 2016-05-28
- **Recopilado**: 2026-11-14
- **Idioma**: en (subtítulos manuales en (manual), transcripción literal)
- **Duración**: 05:36

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Dear friends welcome to another video! This is Nick from educ8s.tv and today we are going to build this small but impressive digital photo frame using an Arduino. Without any delay, let’s get started! If you have watched some of my previous videos, you may have noticed that I use this 1.8” color TFT display a lot recently. The reason for that is that this display is very easy to use, it costs less than $5 and it offers color! At the back, the display has an SD card slot, so I thought that we have to learn

[00:42] how to use that as well. As it turned out, it is really easy to use the SD card slot of the display! That makes this display even better. The project that we are going to build today is this. A simple photo frame which loads images from the SD card. I have placed some .bmp images in the SD card and the project loads them and displays them at the display in full color! As you can see the speed of the project is very high if we take in consideration that the brains of this project is the old

[01:15] and slow Arduino Nano. In my opinion, this is really impressive. But let’s now see how to build this project. The parts needed in order to build this project are these: • An Arduino Nano • A 1.8” Color TFT display • A small breadboard • Some wires • An SD card The cost of the project is around $15 but I am sure you already have some of these parts available so you can build this project with even less money. You can find link for all the parts in the description of the video. Let’s see how to build this project.

[01:51] In order to use the SD card slot with Arduino we need to connect these 4 top pins of the display with Arduino. In have soldered some female header pins to them and we are ready to connect them. The SD card module uses the SPI protocol in order to communicate with Arduino. So we have to use the hardware SPI pin of the Arduino Nano. The SD_CS pin goes to Digital Pin 4. The SD_MOSI pin goes to Digital Pin 11, the SD_MISO goes to Digital Pin 12 and lastly the SD_SCK pin goes to digital pin 13. That’s it. Now we are ready to connect

[02:30] the bottom pins of the display. In order to see how to connect the display check the detailed tutorial I have prepared on that a few months back. You can click on the card here in order to watch this video. Both the display and the SD card module are use the SPI pins so on some Arduino SPI pins we have connected two wires! OK, now we are ready to power up the project. As you can see, everything is working as expected and the images are displayed on the screen one after another. Let’s now see the software side of the project.

[03:04] In order to achieve that result we have to use Adafruit’s libraries for the ST7735 display. We also need the Adafruit GFX library. Adafruit has made an amazing job with the library for the ST7735. The spitftbitmap example loads an image from the SD card and displays it on the display. I slightly modified that code in order to loop forever, load more images and use the landscape orientation of the display. As always you can find the code of the project in a link in the description of the video. With the bmpDraw function that the example

[03:44] offers we can easily load and display bitmap graphics in our projects! You have to be sure though, that your bitmaps have the correct format. In order to convert the images to correct format for this project, I used the Paint.net free software for windows. I loaded my images and then I resized in the correct resolution for the display which is 160x128 pixels. Then I saved the images as .bmp files with a bit depth of 24bits. That’s it, all we have to do now is to save them in the SD card and call the command bmpDraw with the

[04:25] name of the file. As you can see, we very easily build impressive projects using Arduino. This display has become my favorite, because it is so easy to use and offers so much for such a low price. Its library support is great, so I am going to use it even more in the near future. I am going to prepare another tutorial about this display soon, in order to see how to load graphics, and how to draw simple shapes. I would love to hear your opinion about this display. Do you use it in your projects? If

[04:57] so, do you have any tricks to share with us? Please post your comments in the comments section below. Thanks! If this is your first time here, I would love to have you subscribed. In this channel I post videos about DIY projects every Saturday. I love making things and I believe that anyone can make things, anyone can become a maker. That’s why I created this channel, in order to share my knowledge with the community and learn from the community. I hope you will join us. Until next Saturday, Watch, Learn, Build!

[05:30] [ Translating these subtitles? Add your name here! ]
