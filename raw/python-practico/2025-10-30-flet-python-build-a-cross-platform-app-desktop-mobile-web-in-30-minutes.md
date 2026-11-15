# Flet + Python: Build a Cross-Platform App (Desktop | Mobile | Web) in 30 Minutes

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=jqAQ4oQGUH0)
- **Canal**: Code with Josh
- **Publicado**: 2025-10-30
- **Recopilado**: 2026-11-15
- **Idioma**: en (subtítulos automáticos en (auto), transcripción literal)
- **Duración**: 30:15

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Building an app sounds hard. Am I right? You've got front-end code, backend code, dependencies, all of it. It's a lot. But what if I showed you a way that you could create your own app with pure Python? No HTML, no CSS, and no JavaScript. That's exactly where Flat comes in. In this video, I'm going to share with you guys exactly how you can get started with Flet today. Step by step, I'm going to break it all down and we're going to build out a mini project to help you really understand how you

[00:32] can spin up an app in minutes with pure Python. If you've ever wanted to build something that feels like a real app but not touch the front end, this video is for you. I have videos coming out every single Thursday, so make sure you subscribe to follow along with all the action. Welcome back to the channel.

[00:51] All right, guys. So let's kick off our intro to flat application. The first thing we are going to do is import flat. Now we're not going to do anything like import star here. No, flat is too big for that. Typically we can just do import flat as ft. If you haven't already, make sure you open up your terminal and you're going to pip install flat. Okay, I already have this on my system, but this is going to get the whole flat on your system.

[01:19] Now how flat works is it's a little bit different from other web frameworks or UI frameworks like piqt tkinter things like that in order to create a a more mobile type of application the app that we're building today a desktop app we need to create a function and this function is going to store everything that this app can do on flex that they have a class called page.

[01:51] So I need to inherit page. And anytime I want to refer to the page class from flat, I'm just going to use page. Here at the top, I can start to tap into certain properties like temperature uh converter. I can take page just like I did here, use one of the properties to help better style the application.

[02:17] I am going to go here into what they call theme mode. This will allow certain color schemes to come into play. And I will say theme mode. You can choose from light, dark or system. Any of those are fine. We are going to say here uh window width and I'm going to mark this as 500.

[02:38] I'm going to give the window a height. So at launch, this is really just the settings of the window, but I can still make the window uh more responsible. I uh responsive. I can say resizable is equal to true. And let's say we want to give some padding. I'm going to give some padding to the application. Now, this is just me styling the app itself, the homepage. Okay. Um but internally let's see even maybe I can say dark. Uh in order to run an application we're just going to say if name is equal to

[03:18] our main I am going to take my flat app. So I'm going to say ft.app and I need to give it a target. What's the target of the app when we run the code? That's the name of your function. Okay. So I've called it main. I'm giving it as the target and this is what executes when we run the code. When I run my code, we're just going to see an empty window appear on the screen. Okay, this is the canvas. This is the container for our application where all the widgets can kind of go on this. Now,

[03:56] speaking of widgets, let's start to get some general widgets on the screen uh to really structure out, you know, what we're building here. Now we are building a temperature converter. So I need different input fields. We need input fields for uh Celsius, Fahrenheit, and Kelvin, let's just say. So I'm going to create uh an object here. I'll say Celsius uh input. And this is equal to what we call a text field. And I'm just going to use that class. Okay. And while we're here, I'm just going to copy and paste

[04:36] this. And we're going to do this the same thing for the next two. Okay, we have Celsius. We're going to go in into uh Fahrenheit. And then we'll do Kelvin. Okay, just like that. Now, I haven't given these any keyword arguments. I just want you to see what it looks like when we get them onto our screen. Okay.

[05:01] So, for now I'm going to keep these blank. You have three objects. These are the widgets we want to appear on the screen. We now need to create the main UI of the application. This is really done through something called containers or you can visualize it as a container.

[05:23] I'm going to take the flat page and I want to add something to it. Right now, what do we want to add? You can view this whole part here as like a container. I want to add, let's say, a column. I can add a column. I can add a row. And then what do you want to put inside this column? If I'm going to stack everything top to bottom, let's just start off with some text. Okay, what kind of text do I want to put here?

[05:50] I'm going to say temperature converter. This is going to appear on the screen. I can give this a size. Gonna give this a weight. Let's say uh font weight. Let's just do bold here. By the time you see this, it might be too late. Maybe it's not. The first link in the description is my live Python cohort that's launching in just a few weeks. If you've ever wanted to get started with Python A to Z and have a real live interactive class with a teacher like me and a bunch of other

[06:27] collaboration and tools and materials, this is for you. Head on down to the first link in the description and you should be asking yourself, will you learn Python? The answer is yes. Head on down first link in the description.

[06:39] Check out my live Python cohort. And I have my other full Python master class down there in case you guys don't want the live program, but you're more leaning towards the self-paced approach. We can do some text align. And I'm going to go text align. Right. So everything I'm using here is just a property from flat as we can see. Okay, it's just styling. If you go to the flat documentation, you're going to see all this stuff here broken down. Text has this. And in fact, let's just go to this

[07:11] box here. Uh, well, not only does it explain everything, that's just how VS Code is turned on. You can see here that they just give me examples right in the latest version of VS Code, which is cool. Um, this might also be partially because I have updated to Python 3.14 now. But if I just go here, let's just uh open this page. I'm going to trust it.

[07:34] Boom. So, it takes me to the flat documentation. And inside here, right, you can scroll down, start to read around, but here are the properties. I can give a text background color color, right? How does this work? I can just kind of click into here, and it gives me a fullon example of how this is going to work. So their documentation is really really good and you should get comfortable just kind of reading this experimenting with this. Uh I've added size already. I've added text

[08:04] align right. Uh value is of type text align. I could have gone left right center. Right? That's what I did. This is just kind of all CSS type stuff. So we have uh text aligned to the center. Right. Why don't I just give it a color?

[08:19] I'm going to say here uh flat colors and let's just do a blue color. Let's do like a 700. Okay. So, this is going to appear at the top of our app. Now, under this maybe I want to give some space here. I'm going to give what we call a divider. Now, this divider is going to have let's say a height of 20.

[08:45] And under the title now I can start to build out containers that are going to hold certain elements of our application. Uh for now let's just uh let's just run this a sec. I just want to make sure. Yeah, look at that. Dark mode is now implemented. Okay, cuz we have stuff on the screen. Temperature here is my divider. This is what we're building out in this application. So this is great.

[09:12] This is really really good. Now, most of the work you can see is going to come down to how we style out the application, which is done as I'm doing here. I'm taking the page, we're adding it, and we're adding different elements along the way. So, additionally, now that I've have a divider in here, I'm going to add the input fields. Okay?

[09:38] So, I'm going to take the Celsius input. Uh, and then under each item, let's just give it another divider. So, I'm going to say divider. Let's do the Fahrenheit input. I'm going to give it a divider. And then let's do the Kelvin input. Um, and I can give this a divider as well.

[09:58] Let's just make these two 10. And let's see how this looks now. So, these input fields are empty. They're dark. You can't even really see them, right? So, how can I structure this to become slightly different? Let's say, right? Maybe there's some stylings that we want to do here. So, I'm going to go up now because those input fields were empty. And let's start with our Celsius input field. I'm going to give this a label. And I want this to say Celsius.

[10:28] And let's just say what key do I have to press? No, not that one. Uh, I'm trying to get the that I guess we'll go with that. Okay. The Celsius. Uh, we can give some hint text. What do I want the user to see here? Enter temperature in Celsius.

[10:59] We're going to have here our keyboard type. So, what type of data is going to be entered from the keyboard? I can specify here. I could just leave it blank, but this will make it easier later when I build out functions. I'm going to say keyboard type right here.

[11:15] And let's just say this is the type of a number. Now, I do want to get access to the text field because I'm thinking uh do they provide it? I'm thinking that the text is going to be black most likely. And um I would like the color to be different. So, background color, border color. Oh, 36 different ones. Eh, that's going to be a lot.

[11:49] fill color. Oh, do any of Oh, text color. Yeah. Okay. So, I can just use color. Okay. Based on this, um, that's good. So, where was I? Let's go up here. Let's just say color is going to be equal to FT colors. I want to just do like a white.

[12:13] Let's run this. Make sure. Yeah. Boom. Okay. Look at that. Much better. the label color. But when I click it, we can see that everything is highlighted, easier to see. Typing in a number. This is excellent. Okay, now that I have this, I'm I'm going to take all this um and really this just becomes the values of the other ones. We're just going to have to change it here uh to say our uh fair heights.

[12:41] Let's give this an F. Color is white still. That's fine. This is going to be our Kelvin. Excellent. Quick run. Always doing mini checks on the application. And we can see here this is this is wonderful. Um I suppose we can look into a style here. Let's uh let's try and find the border color. I want to see uh let's see if I can just type that. They might have something like that. Border.

[13:14] Yeah, border color. Uh, I'm just going to do FT colors white again. Let's see if this is what I'm after. But it's a bit hard to see with the dark mode turned on. And I would like to be able to just clearly have the user see that looks way better. Way way better. Okay.

[13:34] So, we're going to take that and apply these stylings just to the other ones. Okay. So, these these text fields are done. Um, I am going to finish my design, but we need to basically give them information and calculate some type of information. Before we do anything like that, let's wrap up the UI so we have everything how we want it to be. Okay, so quick recap. I created a column. This is the container. And then I'm just stacking all the elements in order that I want them to appear within this

[14:13] container. Okay. Now I have this is almost like a parent container my column. We can also have internal containers as well that could hold other information which I'll actually get to here in a moment. But we have all the input fields. We are going to go down here and I am going to create a button uh elevated button. Okay, this is the next one that we want. So, I want this to basically just clear all when this is clicked. Um, and a few stylings I can give it here. I can tap into icon. And

[14:52] Flet has a boatload of just icons you can use. So, I'm going to say icons. Let's say clear. Uh, and really going in here. Let's see if I can uh show you guys. Going over to our elevated button docs. I'm going to search for icon. Uh, right here it is. Icon color. Icon show button. Is there elevated buttons with icons?

[15:19] Yeah, it's it has like these icons we can put in here. Um, I would like to just see a list of icons if possible. Uh, elevated button.py. They don't necessarily have that right in front of me. Okay. But there are a boatload of icons we can use. Now, the one I'm using is just the clear one. It should be an X. Um, and then let's just give this as well. I can give this an actual style of how this should look. I'm going to say FT flat. We can go into a class called button style. And we can give this, for

[15:56] example, a background color. I'm going to say colors. And we're going to go to red. Uh, red 400 might be good for us. And then the color of the text. Remember, just like CSS, the color always just represents text. So, I'm going to say colors, and we're going to go just with a white.

[16:16] Okay, so that is my clear button. Now, coming down, I'm continuing to stack out the elements. Let's go through. Let me mark. I have text. We have our inputs. Each divider is an element as well. I'm just not marking them. We have the elevated button. So each of these are appearing on our screen in some way or another. Let's add a divider down here.

[16:42] And I want to provide some information just to show you guys how we could store this inside my column. I can use the container class, right? And this is really just allowing us to structure internal elements. This is kind of like I guess if you want to think of it like a div in HTML if you're familiar with that. And inside this child container, I can specify the type of content.

[17:11] So for example, I would like to see another column within this child container. And I'm just going to put a bunch of text here. Uh, so let's just put uh h I'm going to have probably like the name and let's just add the formulas. For example, let's just say conversion uh formulas.

[17:37] And I'm going to give this some weight. Let's say ft font weight uh bold. Okay. Uh, and then internally I'm just going to drop in here each formula that we need for this. Excellent. Let's just bump them out a little bit. Spacing is equal to five. And I'm going to quickly run this to check. Look at that. So very clean. My buttons don't do anything.

[18:03] Nothing does anything. Um, but it just looks really clean, really nice. And Flat does a really good job with that. So, I've been having a lot more fun recently on my builds trying to use flat. Uh, I guess some final styles here. I'm just going to bump in. Let's see what I can give. I can probably give some padding to the overall app. Uh, let's just do padding to everything. I think I can say all here. We can go down and we can give a bg color. I'm just going to say uh colors. Let's just do

[18:38] like a gray this gray one. Gray 100. Keep it in the dark. And then the last one will be border radius. We're going to do border radius of 10. The final touches would be the actual uh column itself, the parent column. And in the parent column, we can set a few features like uh scroll. Do I want the ability to scroll? Well, it depends on the size of the app. So, I'm going to say scroll mode is just auto. And then our spacing is equal to zero. So, my UI guys, it is done. This is the UI. And

[19:20] before we do the functionality, you should spend time focusing on the UI. Boiling it down, we have page add. Inside there, you can add a column or a container. I could have done either here. So quickly in this case I did a column. I can then just stack things very nicely in the order I want them to be. All my widgets, my objects. If you want to do a col a container that's fine. You can create a container but then you have to specify the content which is where we set the column this

[19:54] time or the row. Then I can drop in items. So it works the same way. I can start with one or the other. Now we have all these inputs and really I'm going to mark here add functionality to the app. Okay, when I run this um if I type oo I don't actually like that at all. I'm going to change that to probably just remove it. But when I type in a number I want these to automatically convert. I don't want to have to press a button.

[20:26] Everything is automatic. For each of these, I need to create a quick function that just does this conversion formula for me. If you guys want to pause the video now to give it a shot, pause the video. When I click clear, it should delete everything. Okay, so let me fix that color real quick. That is not a good said gray 100. Honestly, let's just I don't need a background color there. It look better with white for adding the functionality to the app.

[21:00] Okay, let's just start with let's create a function called convert to Celsius I suppose and this is going to take some kind of value. It's going to take the value that the user enters into the input field. So if there is a value and I can strip the value in case the user does anything with spaces, we want to remove that extra white space. So if we have a value, what do I want to do here? Well, I need to try to convert that value into a float number. So I'm going to say Celsius is equal to a

[21:41] float. And we're just going to pass in the value. At the same time though, I need to collect all the other information from the other three input fields to update them all at the same time. So I'm going to say here Fahrenheit is equal to what?

[22:02] I need to calculate those right now. Kelvin is equal to what? I know what Celsius is because I typed that into the input box. I need to do the conversion for Fahrenheit. So, I'm going to take Celsius. I'm going to multiply it by 9 / 5. And we're going to add 32.

[22:24] For Kelvin, I'm going to take Celsius, the easiest one we have here, and I'm going to say 273.15. Now, we just want to update the input values of Kelvin and Fahrenheit to show this equation, whatever they got. I'm going to say here Fahrenheit input.

[22:45] Let's take the current value and I'm going to say the current value is now equal to our variable uh Fahrenheit. And I'm just going to round it down real quick. I'm going to do the same thing for Kelvin. I'm going to take Kelvin's current value and we are just going to update it to what we have currently gotten. So Kelvin Whoops. What is going on here? Uh, Kelvin 2F. Just like that. Um, anytime we make changes to our application, you always need to take the page and you need to

[23:24] update the page. If you don't update the page, nothing is going to show. If we get a value error, okay, uh, you could handle this how you want to handle it. So, let's say that there's a value error. I'm going to say Celsius input.

[23:41] is equal to error there. Okay. So now the question becomes we have a single function. Okay. How do we call this function? I'm not entering or clicking any button. All we need to do is up here in an input field. I'm going to use something called onchange.

[24:06] When I change the input field, I want it to automatically call the function we just made, convert to Celsius. I'm going to write here just a real quick lambda function. And this is going to take an event. When I trigger this event, I'm going to say convert to Celsius. Uh event.Control.

[24:27] It is going to collect the value from the input box. Super easy, super straightforward. Look at that. 44° C, 30° C. Everything converts instantly. Okay. Super super nice. Now, we just need to do the same for the other ones.

[24:47] So, really this function, I mean, h I'm going to take it. Okay, maybe I shouldn't. Maybe I should. Uh I'm going to say here convert to Kelvin. And we are going to say here convert to Fahrenheit. Okay, kind of the same thing. Now I'm going to say Fahrenheit. This is where we're going to say Celsius. Now Fahrenheit again, I'm going to try to convert to a flow value. How do we get Celsius from Fahrenheit? Well, I'm gonna say Fahrenheit - 32 times 5 over 9 Kelvin is going to be still our Celsius

[25:40] plus this number here 273 cuz I have the Celsius that doesn't change anything. Uh we are going to change our Celsius input to become the Celsius value. Done. Super straightforward. Okay. Very very easy. Now for Kelvin, uh the only changes we're going to make here is we will call this variable Kelvin. We have our Fahrenheit and we're going to have Celsius. Now how do we get Fahrenheit from Kelvin? We probably first want to calculate Celsius because it's easiest to work with Kelvin and Celsius. So the

[26:19] Celsius is just going to be equal to Kelvin minus 273. And then our Fahrenheit is still the same number here. That doesn't change. I'm just going to change here. I'm going to say Celsius input. And we will change this word instead of Kelvin to say Celsius.

[26:44] Excellent. Go up to our input fields and we just need to put an onchange function inside each of those. Convert to Fahrenheit. Convert to Kelvin. Done. I'm going to run this. Okay. Uh, we know Celsius works. Let's say 88°. Look at that. 88 Fahrenheit is 31.1 Celsius. Uh, if I come down here, let's say 100 Kelvin. Wow, that is Is that accurate? That's really cold. Uh, 273 should be Yeah, I mean that's accurate. 273.15 is 0 degrees across the board. The last button here is just our clear all

[27:35] button. Okay, this is going to be a super straightforward one. Uh, we're basically just going to update the values. So, I am inside where I want to be here. There we go. Uh, let's create a function here. I'm going to say clear all. This is going to take an event that we pretty much trigger. I'm going to say Celsius input. I want to get the value and just update it to become an empty string. I'm going to say my Fahrenheit becomes an empty string and our Kelvin becomes an empty string. Okay, that's

[28:08] all we're really doing. We're just updating the face value. Take our page and we're going to update that page because I'm making a change to it. We always need to update that page. Going down to where we made the button clear all. We are just going to go here and I'm going to say this time on click.

[28:30] Before we used the event on change. This time we're doing on click. This is going to be equal to clear all. Done. Run the code for a final time. We are going to do 44 clear. Look at that. Okay, a responsive application.

[28:55] Okay, we learned about text input and we learned about how to create events as well as creating a very nice UI experience for us and the users. This is a great great introduction to building out a flat application. This video is designed to give you guys a hands-on approach with Flat to help you get started and just understand the concepts and how we piece them together.

[29:24] And I hope you saw that not only is Flat incredible. I love it, right? The code is easy to understand once you understand how to put it together. Super straightforward. The documentation is huge. And I hope you saw how I used the docs here to read through scan. What can we add? that really helps you grow and build out your career as a developer, build out apps, and understand the flow of products. If you guys got value in today's video, hit that like button.

[29:52] That means the world. And subscribe to the channel. I have videos coming out every single Thursday, and you want to make sure that you kept caught up with all the action. Remember guys, the first link in the description, that is my live Python cohort launching in a few weeks.

[30:05] By the time you see this, might be too late, but my Python master class is down there for you to grab at any point in time. Until next week's episode, guys. I will see you then.
