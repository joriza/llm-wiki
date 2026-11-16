# 7 Great Arduino Simulators for 2026!

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=FFQk0DiTtPE)
- **Canal**: ToP Projects Compilation
- **Publicado**: 2025-10-03
- **Recopilado**: 2026-11-15
- **Idioma**: en (subtítulos automáticos en (auto), transcripción literal)
- **Duración**: 24:38

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hi everyone, welcome back. In this video, we will discuss some great Arduino simulators. Without further ado, let's start with first on the list, we have Simole IDE, which is a beginnerfriendly simulator. After downloading the version for your operating system, simply extract the folder and doubleclick the executable inside. No installation is needed. Upon opening, you will find that the interface is divided into three main panels. The left panel gives you two tabs. A component list from where you

[00:33] can drag components into your circuit and a file explorer which lets you open saved circuits or code files. It offers a wide range of components including inputs, outputs, power sources, and different microcontrollers. For Arduino, it has the Uno, Nano, Mega, and DMlanov boards to simulate the circuits. The center panel is your main workspace with a toolbar at the top for powering the simulation on or off, pausing it, zooming, or accessing settings. Below this toolbar lies the

[01:04] circuit canvas. Status messages and simulation info appear in small panels at the bottom. The right panel is a full editor, compiler, and debugger, which also doubles as a text editor for writing or modifying microcontroller code. Here I've made a simple circuit by dragging an Arduino Uno board, an LED, a resistor, a servo motor, and a ground from the component list. I connected them by simply joining their end terminals.

[01:31] To change a components value, just doubleclick on it. That completes the circuit setup, and the next step is coding. To upload the code, rightclick the Arduino, choose load firmware, and select a hex file with your program. If you've written the code in the Arduino IDE, you can compile it there. Copy the generated hex file and paste it into the firmware box in the Arduino's properties.

[01:57] In the same properties menu, you can also set the clock frequency or adjust other basic settings. Once everything is in place, clicking the power button on the top toolbar starts the simulation. It can be paused or stopped at any time.

[02:12] Right clicking the microcontroller also provides quick tools. Open a monitor to watch RAM, ROM, and flash data or view serial monitor communications. In the meter section, you'll find different measuring tools. One of the most useful is the probe. Simply select it, place it on a wire, and it will show you the voltage at that point in the circuit.

[02:37] You can also use the built-in oscilloscope which has four channels each marked with different colors. Just connect it to your circuit, run the simulation, and you'll see the waveforms in real time. Along with that, there's a logic analyzer with eight channels, also colorcoded, that lets you track digital signals across multiple points in your circuit.

[02:57] You can also use the right panel to write, compile, and debug your code. Just select a new sketch, write or paste your code. We tried using it but faced some issues while compiling. Plus, there were not many helpful resources available online. So, if you know something, do share your helpful suggestion in the comments.

[03:20] Many of you might not have heard of this simulator. It's called Crumb. It created quite a buzz when it was first launched. What sets this simulator apart is its visual engaging environment that mimics the feel of building circuits on a real breadboard.

[03:36] Yes, instead of prototyping a circuit in 2D, here you get a 3D environment building circuits on a real-like breadboard complete with jumper wires and other active and passive components. This simulator is available for Windows and Mac OS through Steam, and it's also available on the App Store. Although it's a paid tool, it's quite affordable, priced at around $9.

[03:58] Once you purchase and open the software, you're welcomed with a clean, playful interface and a large workspace. A top menu provides access to breadboards, passive parts, jumper wires, and power supplies. But as you can see, this simulator has only a limited set of components, and it doesn't include any sensors that you can use with the microcontroller.

[04:21] To start building a circuit, first place a breadboard on the workspace. Crumb currently supports only the Arduino Nano as the microcontroller, but the 3D environment makes designing and viewing your projects more interactive than a flat 2D view. To add a component, select it, then click two holes on the breadboard. The part will snap into place.

[04:46] A panel on the left shows the components details and lets you adjust its values. If you have placed a component wrong, there is no option to move its existing position on the breadboard. You have to delete and read it. After placing all the components, the next step is wiring them. These are added by selecting the wire tool, picking a color, and clicking the connection points.

[05:10] You can zoom, pan, and rotate the scene to inspect your circuit from any angle, giving you a realistic 3D perspective of your build. When you click on the Nano, you'll see an option to open the built-in code editor. It works much like the Arduino IDE, letting you write and upload sketches to the virtual board and view the output in the serial monitor.

[05:32] For powering your circuit, we have a 12vt signal generator for AC circuits and a 12volt power supply for DC circuits. Once you've connected the power supply, change the mode to interact from the top menu. Now flip the switch to turn on the power supply and your circuit will start running.

[05:52] Once your circuit is ready and running in Crumb, you can do much more than just watch it work. The simulator gives you live feedback by highlighting voltage levels on the components, so you can instantly see how power flows through the circuit.

[06:08] You can also open the built-in scope to view real-time graphs of voltage or current on any part of the setup, which makes it easier to understand how the circuit behaves. The settings icon on the top right lets you change the simulation frequency.

[06:24] While to change the lighting, shadows, and projections, click on the viewport settings in the workspace. Before moving to our next simulator, a word from our sponsor. Altium Designer lets you easily move from drawing your circuit to simulating its behavior and then straight into PCB layout all without needing multiple programs.

[06:46] On top of that, Altium 365 takes your work online. It allows you to view, edit, and share your designs from anywhere. You can even invite team members or manufacturers to review your projects directly through a web browser.

[07:01] They can leave comments, suggest changes, and doublech checkck important details like component placement or spacing without needing the full software installed. This makes working with teams or preparing for production much easier and helps you catch mistakes before they become expensive problems.

[07:18] Give it a try. It might just be the upgrade your workflow needs. Next on the list, we have Oaki, a free browser-based simulator that lets you design and test circuits easily. To use it, just head over to oaki.com in your browser. There's no need to install anything, and you don't even need an account to start experimenting.

[07:41] Though, creating a free login lets you save and share your projects anytime you want. On the homepage, you'll first see a selection of development boards and microcontrollers such as Arduino, ESP32, STM32, and Raspberry Pi Pico. Click on Arduino. From here, you can either build a circuit from scratch using the Arduino Uno, Nano, or Mega, or open one of the ready-made example projects. These featured projects are a great way to learn and get familiar with the basics of the simulator.

[08:17] Once inside the editor, you'll see a clean workspace divided into two sections. To the right is the virtual circuit with a blank grid where you'll place the components. To the left is the code editor, which starts with a basic Arduino sketch and supports standard syntax just like the Arduino IDE. Across the top, you'll find buttons to run or stop the simulation, zoom controls, and options to share or export your project.

[08:48] Building a circuit is simple. Just click on the plus icon on the canvas to add parts. This brings up a searchable menu of components. The component library is very large and even has some special parts like different types of displays, a micro SD card, and a custom chip. You can program this chip by writing simple code and set what its inputs and outputs will do. This feature is great because it lets you create your own parts. If you need something that isn't already available, click on a component to place

[09:20] it on the canvas, then connect parts by simply clicking a pin on one and dragging a wire to the pin of another. If you're not sure how to use a component, click the question mark next to it to see more details and instructions.

[09:36] The wire color can also be changed to keep the layout neat and easy to understand. Selecting a component opens a small settings box where you can change values like resistor resistance, LED color or sensor properties. Now here we have connected four LED matrices to create a 32x32 LED matrix tunnel. These mattresses are connected to an Arduino Mega board. Now let's have a look at the code editor. It supports Arduino C, C++ code. You can write or paste sketches directly into it and the simulator

[10:13] compiles them instantly. When you click start simulation, Oaki uploads your code to the virtual board and runs it in real time. One issue that you could face is that sometimes even a simple project might take a while to compile and finish running. The platform also provides a logic analyzer which records all the pin data. When you stop the simulation, it downloads a file with the recorded samples directly to your computer.

[10:42] Projects can be saved online and shared with a simple link. However, you'll need a paid plan to access features like private projects or advanced cloud options. Tinkercad is one of the most popular free electronic simulators. To get started, go to tinkercad.com and sign up for a free account.

[11:03] After logging in, you'll see options to either create a 3D design or build a circuit. Since we're focusing on circuits, click create new and select circuits. This will open the circuits workspace where you can start building and testing your Arduino projects. The workspace has a clean layout. In the center is the large work plane where you'll build your circuit. On the right is the components panel where every part you need is stored.

[11:32] There are sensors like a force sensor and a tilt sensor along with different types of neopixel LED strips. You'll also see several IC's and measuring tools such as a multimeter and an oscilloscope. For power sources, there are the usual options, plus some fun ones like a potato battery and a lemon battery. In the microcontroller section, you'll find the Arduino Uno R3, which is currently the only Arduino board available to use.

[12:03] Along the top, you'll find controls to start or stop a simulation, name your project, or switch between circuit and schematic views. To start building, just click and drag the components you want onto the work area. For example, I'm using an Arduino Uno and an ultrasonic sensor to measure the distance of the object from the sensor. If you're unsure about any component, click the question mark icon.

[12:27] To see a description and helpful details on how to use it, each part can be rotated or moved as per your circuit requirement. When you select a component, a small inspector box appears letting you change its properties.

[12:44] Wiring is done by clicking a pin on one component and dragging a line to the corresponding pin on another. You also get the option to change the wire colors. For example, I'm using red for power and black for ground. Once every component is connected to the Arduino, you can program it by clicking the code button in the top right. You can either use the beginnerfriendly code blocks or the standard Arduino text editor. After writing the program or pasting it directly from the Arduino

[13:15] IDE, click start simulation on the top bar to upload and run it virtually. If there are no errors, the simulation will run immediately. Here, the sensor is measuring the distance of the object and displaying it. One of the handy features in Tinkercad is the debugger. It lets you run your program step by step while showing the updated values of your variables.

[13:39] There's also a built-in serial monitor that displays data when you use serial commands, making it easy to test and troubleshoot your code. Besides the breadboard layout, you can also view your project in schematic mode where it's displayed as a clear circuit diagram using electronic symbols for each component. And if you're a complete beginner, don't worry. The guided tutorials and a large library of projects will help you in your learning journey along the way.

[14:09] Pixim Lab is another great simulator to test Arduino projects and other microcontroller setups with a high level of control. The first thing you'll notice after opening the software is the main window which is organized for easy navigation.

[14:24] At the top is the menu bar along with a frequency selector to adjust the microcontroller's clock speed. A speed indicator shows the ratio of simulation speed to real time and an onoff button lets you enable or disable debugging.

[14:39] The center of the screen displays the board interface where your selected development board appears. The window title also shows the active board and microcontroller. From the board menu, you can choose among a variety of development boards.

[14:53] And from the microcontroller menu, select the chip that matches your project. Pixim Lab supports a wide variety of hardware modules and an oscilloscope that you can add to your workspace through the modules section. By clicking on spare parts, you can see that the components are grouped into categories such as inputs, outputs, and others.

[15:14] You'll find most of the common input and output devices here just like in other simulators, but this one also includes some unique options such as an Ethernet port, an SD card, and an IO expander, which makes it stand out. Coding for Arduino is done outside Pixim Lab, typically in the Arduino IDE or another development environment to create a hex file. In the Arduino IDE, go to file in the top left, then select preferences.

[15:41] In the window that appears, check the option show verbose output during compilation. Next, compile your code for your Arduino board. Here I'm using an Arduino Uno. After compiling, the location of the hex file will appear at the bottom of the window. You can either copy the file path from here or go directly to the folder and copy the hex file itself. To load the file into the simulator, go to file and select load hex. Next, we have to add parts on the workspace. Here, I will be displaying a text on a 16x2 LCD.

[16:15] So, I will click on output and select the LCD. Once you add it, the display will appear in the workspace. Right click on it and choose properties. This will open a window showing the LCD's pins. Now, match each pin with the numbers you've already defined in your code by entering them in the boxes.

[16:34] After the pin setup is complete, the LCD will begin showing the text you programmed. If some issue occurs, click on the power button on the board or click the debug option. To rotate, move or delete a part. Just right click on that component. You can even zoom in and out or drag to reposition the view, making it easier to organize complex circuits.

[16:57] In the tools menu, you can find options including a serial terminal for monitoring communication and the Arduino bootloader. If anything feels confusing, just click on help and then contents. This will take you to a web page with detailed information about every feature of the simulator.

[17:16] Uno sim is a desktop-based Arduino simulator. Though it may feel a bit complex at first for complete beginners, it's a free software that can be downloaded from this website. I've installed and opened the simulator. And as you can see, its interface is quite different from the ones we've looked at so far. Instead of directly connecting components to the Arduino, it uses a different approach to simulate the circuits. The workspace is split into three main panes, plus a menu bar

[17:45] and a quick action toolbar. The code pane on the top left holds your sketch. Double clicking the code pane opens the edit view mode where you can modify code, pick built-in function calls, or define constants from a list.

[18:01] Directly under the code pane is the variable pane. It shows current values for your variables and updates them in real time during execution. The lab bench pane on the right displays the virtual hardware, the selected Arduino board, and attached peripherals.

[18:19] Initially, you'll notice push buttons, resistors, LEDs, and motors placed around the Arduino. You can customize or rearrange the lab bench by opening the configure menu at the top and selecting IO devices. Keep in mind, you can place up to 16 small devices and eight big devices in a single project.

[18:39] The preferences lets you switch the target board between Uno and Mega. Here, running a simulation is simple. You can either write your code directly or paste it from the Arduino IDE. For each component you've used in your code, just enter the pin number in the box next to that component to link it to the Arduino.

[19:00] For example, if you've set a servo motor to pin 9 in your code, simply type 09 in the box, compile the code, and start the simulation. Once it runs, you'll see the motor move, and its position will also be displayed in the variable panel.

[19:16] When the simulation is running, you can also click on any Arduino pin that has a component attached. This will show you its digital waveform. The execute menu controls how your code runs. You can step through one instruction at a time with step into or step over, exit a function with step out of, run to a specific line with run to, or start and stop execution with run, halt, or reset.

[19:46] There's even a slow motion mode to slow the simulation by a factor of 10 for easier debugging. If anything seems confusing, open help and then full help from the top panel to view the supplied PDF manual that explains the software in detail.

[20:03] This simulator only supports some limited libraries that are listed here. Other third party or unsupported libraries will not work because of unrecognized directives or missing files. Execution timing is not modeled precisely at the instruction level. So you often need to use delay and loops to synchronize pin level changes with what you expect to see.

[20:26] Finally, let's look at Proteus by LabCenter Electronics. One of the most advanced Arduino simulators available. Unlike the other tools we've seen so far, Proteus is a professional desktop software that combines schematic capture, PCB design, and simulation all in one package. While the full package is expensive, you do have the option to buy only what you need. For example, you can purchase just the Proteus VSM for Arduino for $300, a much smaller investment, though it's still a

[20:56] significant amount. But they do provide a demo version with limited features if you want to try it out before purchasing. Once installed and opened, create a new project and you'll see the main workspace. The center area is the schematic editor where you'll build your circuits. On the left side is the component mode panel which gives access to the component library terminals and wiring tools. Along the top are toolbars for simulation controls, project settings, and design options.

[21:24] To add parts, select the components tab and click on the P button on the left toolbar. This opens the pick devices dialogue where you can search for components by name or category. Now let's move on to the main part that is Arduino simulation. There are two ways to simulate Arduino boards in Proteus. Method one, when creating a new project, select the development board you want to start with. For example, the Arduino Nano. Once done, you'll see the AT Mega 328P microcontroller complete

[21:58] with the onboard LED reset circuit and crystal oscillator, essentially acting as a nano board. Here you won't see the header pins that you can wire to directly as you might in other simulators. Instead, you create a terminal node from the left toolbar, assign it the pin name you want, for example, D12, and then connect your external components to that terminal.

[22:23] This method allows you to program the board right from the Proteus software itself. Just click on the source code window to open the IDE. Here you can write the program or paste it directly from the Arduino IDE. But for this to work, we need to install the Arduino AVR compiler first. Go to system and then compiler configuration and download the compiler.

[22:46] Once done, run the simulation from the source code window. You can also use the debugger, which is super helpful. You can set break points, step through your code line by line, and watch variables update as the program runs. Really handy for catching logic errors before you ever touch real hardware. Now let's look at method two.

[23:07] This method requires you to first download and install a specific Arduino library for Proteius. Just search on Google for the Proteus Arduino library. Download it from a trusted source and install it properly by following the given steps. The next time you open the software and go to the components panel, you will see the Arduino boards listed there.

[23:28] Using this same approach, you can install libraries for different sensors or output devices. There are plenty of community-made libraries available for download. Simulating the Arduino is simple. Just connect all your components directly to the header pins as shown in your circuit diagram. Programming with this method is a bit different. You need to upload a pre-ompiled hex file. Double click on the Arduino board in Proteus and paste the hex files address into the specified field. Once done, just click on run

[23:59] simulation. The drawback, you can't use the integrated debugger anymore. One of the most powerful tools for spotting logic errors. One of the most powerful features of Proteus is its virtual instruments. From the left panel, you can place an oscilloscope, logic analyzer, signal generator, or voltmeter right into your circuit. These tools behave just like the real ones, letting you measure signals, analyze waveforms, or debug timing issues. If you've made it till here, then drop a like and

[24:31] subscribe to our channel to keep supporting us. We'll be back with some great ideas soon.
