# Why We All Gave Up on Smart Homes

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=dVM3fzPavMg)
- **Canal**: Slidebean
- **Publicado**: 2026-05-18
- **Recopilado**: 2026-11-16
- **Idioma**: en (subtítulos automáticos en (auto), transcripción literal)
- **Duración**: 33:37

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] I had this dream of a smart home. Cuz we had seen this thing, right? Hollywood had sold it to us. >> Welcome home, sir. >> [music] >> And yet >> Why not? >> Broadcasting beautiful views 24 hours a day. >> I'm in the future.

[00:14] >> For good or worse, Hollywood imagined this future with a smart home. And tech companies were making it happen. >> I am putting myself to the fullest possible use. >> Hollywood has predicted this future maybe too many times.

[00:28] >> race of machines. >> So, why are we stuck with this? >> Alexa, bedroom lights. >> A few things share the name bedroom lights. Which one did you want? >> A much younger version of me made a video about smart homes on YouTube about 7 years ago. And nothing has changed since then. My home doesn't feel any smarter. I still need five different apps to manage it. One in three Americans are frustrated about their smart home with Alexa leading the race.

[00:55] So, what the hell happened? >> [music] >> In a world of AI, of new phones every week, why does smart home innovation stop? So, I've spent the last few weeks testing, [music] reconfiguring, reconnecting. I've spent far much money than I should trying to figure this out.

[01:10] Is a smart home where everything just works even possible? Is it my fault? Is it a setup problem? Is it a device problem or a technology problem? Or is that promised smart home just some Hollywood dream? What I found out after all of this is that there is a deeper, fatal flaw with what we imagined smart homes could be. And I don't think that tech companies are ever going to be able to solve it. There is a way. It just requires you to jump into a rabbit hole with me.

[01:43] >> [music] >> There's something that we need to get out of the way first, which is that smart homes are not for everyone. Cuz there are smart home users and there are smart home users. Now, before I started making this video, I considered myself somewhere around there [music] in this scale. I configured up own Wi-Fi, my Alexa, and my smart stuff. But if you click this video, I'd expect most of you watching are somewhere on the right side of this scale. But to build that smart

[02:05] home that I dream of, that smart home that Hollywood made me imagine, I had to level up. But see, that's also the first problem with our smart homes today. Setting them up, it's our job. And that's not how smart homes started at all. Cuz we've had smart homes since the '70s. It's just that they weren't built for us. Take this thing, for example. This is a Crestron [music] ICs TPS 6000. This was one of the first modern home control hub systems, and it was released around the year 2000. And check it out, it had a

[02:37] 15-in touchscreen. It could monitor audio and video sources. It could control your lights and your drapes. [music] Could check security cameras. All on this screen. And this is in the '90s, almost 10 years before the iPad.

[02:49] [music] But if you could get that thing to work 30 years ago, why does Alexa struggle to turn on a light? >> Good morning. >> Who is she? >> That's the voice of our computer. >> Will that she cook as well? >> Not yet. >> Yeah, well, those things, yeah, they existed in the '90s, >> [music] >> but they were closed system. Most of the devices either came from the same company or companies that were closely working together. And that's what made this experience >> [music] >> so seamless. But they were expensive.

[03:16] So, a pro installed complete Crestron style system today can cost 20 to $100,000, and you were of course locked into that company. Those millionaires with their smart homes, they've always been the user. Like anyone can run a smart home if somebody else sets it up for them. But for today's smart homes, we are expected to do the setup and the maintenance. I've often felt that I've spent so much time getting this thing to work that by the time it works, it's not even worth the effort. The fact that

[03:47] we're expected to do this ourselves, the fact that this needs to be end user friendly, or at least try [music] to be. Well, that's the beginning of our problems. >> Open the pod bay doors, Hal. >> Alexa, open the door. >> I'm not quite sure how to [music] help you with that.

[04:05] >> So, why can't this extremely [music] simple command work? Alexa should be able to send the signal to the lock, right? The website says that it supports Alexa. I know I set it up correctly. In fact, I know this is actually working. I got it working last week.

[04:23] Siri, who's even dumber than Alexa, can actually open my door. Siri, open the front door. See? So, when I talk to Siri on my phone, my phone is going to try to reach the lock directly. It's going to try to do it via simple, straightforward, local Bluetooth, like this.

[04:43] But, if I'm not at home, then my request is going to have to go through Apple's servers. And then, through my Apple TV, which in this case kind of works like a hub that forwards the signal from the cloud to the lock. Now, just the fact that plan A is this signal being sent locally here in my house, that's huge.

[05:00] That's fast. That's efficient. Plan B is okay, I guess. It's possible thanks to Apple's framework. I'm going to explain what a framework is in a sec, so don't worry about it. But, Alexa Alexa can't do this stuff. So, when I ask Alexa, my request can't go directly to the hub. It needs to make the journey from the speaker through my Wi-Fi [music] to then go to the Amazon server so they can interpret what I said, and then through the Alexa skill by Aqara, that makes a bridge to the Aqara cloud, which

[05:31] then sends a signal back to my Wi-Fi, and then to the Aqara hub so that my open door signal can finally make its way to the lock using Zigbee as the last step. This is a mess. This is just one device. Each of those connections is a failure point. Something might not work, which explains why this counter has never gone above like 3 days. On the other hand, HAL >> Good evening, Dave.

[05:56] >> How you doing, HAL? >> Everything's running smoothly, and you? >> doesn't need any of this stuff. Like, he is directly wired to everything. >> This mission is too important for me to allow you to jeopardize it. >> HAL is not only wired, probably by cable, to anything. Like, all devices were designed to work on this ship. A big underestimated challenge with smart homes today is that you need to get all these devices that come from all of these different companies and get them

[06:23] to work together and to message each other through bunch of different networks. Just in our lock example, we've already seen Wi-Fi and Bluetooth and Zigbee, and those are just a few. These devices not only don't speak the same language, but they don't want to speak the same language. Like, this isn't an Alexa or an Apple HomeKit problem. Smart homes have been trying to deal with this thing for over 50 years.

[06:48] Now, like I said, there is a solution to this, but to get there, I first had to understand what was wrong with our current tech and how we ended up in this mess. All the way back in 1975, this company called Pico Electronics came up with this first the first consumer-facing smart home protocol. No Wi-Fi, no Ethernet, no hubs. It used [music] the power cables, the electricity cables that you already have in your walls. What X10 did was piggyback tiny bursts of data directly onto the AC alternating current power

[07:23] [music] line. So, you have these 120 kHz bursts that were timed right around the zero crossings of the 60 Hz waveform in your electricity. It worked for Europe as well with 50 Hz and 100 kHz. This is actually really, really clever. So, a motion sensor could turn on a light using this technology even if those two devices were from different brands. Even if this was the '70s, as long as they both spoke X10. They could understand each other.

[07:53] >> We are all, by any practical definition of the words, foolproof and incapable of error. >> X10 was the first time that normal people, not millionaires with custom installs, could actually automate their homes. By the way, normal people is a bit of an overstatement. It's not like this guy could have figured this out or set this up himself, but I'm going to get back to this. And X10 was insanely clever, very primitive, and with a few problems.

[08:20] It wasn't easy to use. It often failed because the power lines were very noisy. Stuff like your microwave or your hair dryers could mess up the signal, and you could only fit a really small number of devices. It [music] was very slow cuz you could only synchronize it to the power waveform, so you really got only about 60 bits of raw data [music] every second. And if your neighbor had X10, well, there wasn't any encryption to protect you, so his system could very well interfere with your

[08:47] lights. But we have to respect X10 because [music] they were the first. This is true retro tech, and dozens of alternative protocols have come in the years after, and every single one of them solves a problem, but also creates a new one.

[09:01] Now, Z-Wave came in 1999, and it was revolutionary because it was wireless. With a Z-Wave hub at the center, you could send signals to devices up to 100 m away. The problem with Z-Wave is that it was still kind of slow, and it was expensive. It's still expensive today.

[09:21] But then along came Zigbee, which we already touched on. Zigbee is what my smart lock is supposed to support. Now, Zigbee introduced mesh networks. So, you still needed a hub at the [music] center to send all the instructions, but if devices were outside of the range of this main hub, they could relay messages to each other, which is very clever on paper, but an absolute mess in practice.

[09:45] I'm going to get to that. And then came Thread and HomeKit protocol and Bluetooth and Matter. So, who can keep track of the difference between all of these? But if you ever dream of that Hollywood smart home, you have to know. And if you already do, you probably know where this video is going. Don't worry, we'll get there. But most of us don't, or I guess didn't.

[10:07] Take this guy over here. He's something like my mom. My mom can't afford those fancy millionaire systems. She can't set this up herself. Heck, I still need to go to her place to repair the Wi-Fi or the TV settings [music] when they break.

[10:20] >> Wake up, Daddy Sean. >> Welcome home, sir. >> [music] >> Congratulations on the opening ceremonies. They were such a success. >> Now, Hollywood might still have planted that dream in their heads. In the 2010s, for example, it almost looked like it was going to happen, like smart homes were happening.

[10:36] And then Alexa came around. >> Is it on? >> Oh, it's always on. >> Can it hear me right now? >> hear you from anywhere in the room. >> I enjoy working with people. >> These guys, they might have watched a Super Bowl ad, and maybe they were convinced to buy into it, but that bubble pops the moment you have to set up your first device. This may feel like a no-brainer to you people on the right side of the scale, but for most people, Alexa is this nightmare, frustrating experience. 9.6

[11:06] out of 10 in that frustration scale. It [music] is not easy. Now, a few people realize that we've reached this point in AI where we actually don't need to rely on the not-so-great solutions that these big tech companies give us. Platforms like Emergent actually let you build your own solutions now and stop depending on expensive SaaS or products that harvest your data. Emergent is an AI app builder where you describe [music] what you want out loud, and it actually builds it for you like a real

[11:34] conversation and it's not just a web app. Emergent can build native iOS and Android apps. It can connect to stripe. It can handle authentication, multi-tenant data all from a single prompt. Build me an app that shows my calendar meetings for the day, my top unread emails and and daily stripe revenue all in a dashboard [music] and deliver it at 8:00.

[11:55] In about 30 minutes with no back end setup, no separate API accounts, [music] it was just done. Like 3 years trying to get Alexa to open a door, 30 minutes to build [music] a custom dashboard that I actually use every morning now. If you have any type of software idea, tool for your business, client portal, something that you're currently paying $80 a month for it that you could just own, Emergent [music] is worth trying. They sponsored this section of the video. There's a link in the description if you want to

[12:18] try it out. Now, that didn't stop this boom of IoT around 2015. The internet of >> everything can all integrate and work more efficiently. >> connected through 5G technology. >> change the way that you and I live. >> The era of the internet of things is quickly approaching.

[12:37] >> Our company wasn't around back then. I remember every other pitch deck I saw was about some IoT smart sensor or smart device. For a startup in 2015, saying IoT was like saying AI last year. Like money was pouring into these companies.

[12:56] Everything was going to be connected. Beacons and NFC tags, finally [music] smart everything. >> Put on a suit and load your mom's shotgun. >> Hello Mr. Yamamoto. [music] Welcome back to the gap. >> At the start, I was hooked on it. I was ready for my smart home, Anna. Like we all were. Like smart speakers became a billion dollar industry in no time. By the end of the decade, 30% of US households had a smart speaker. Amazon was selling these things practically at a loss just for the odd chance that

[13:23] you'd order some stuff on Amazon through them. Our smart home dream was about to finally come true. And with smart speakers, well, now we just need smart devices. And this is where the bubble started popping. This is where we saw what owning a smart home was really like.

[13:41] And it wasn't pretty. Take Iris, for example, a set of smart devices released by [music] Lowe's. And really the epitome of everything that's wrong with smart homes today. Now, Iris smart devices used to run over the Zigbee and the Z-Wave >> [music] >> protocols. So, I guess it's about time I explain what a protocol means.

[13:59] Now, a protocol is a set of rules for how devices talk to each other. It's like a language that devices used to speak. Now, Zigbee, for example, speaks over the 2.4 GHz frequency, which is the same frequency that we use for Wi-Fi, which is kind of another protocol.

[14:19] Now, Bluetooth is also a protocol. It's another language that also happens to work around the 2.4 GHz frequency. So, all of these three, they overlap. They overlap and they crowd that 2.4 GHz frequency, which is the cause of many of our problems. Like, even though the language is different, when you have all these devices in the same place speaking over the same channel, they are going to interfere with each other. Now, we might not see those errors daily, but they do translate into

[14:46] dropped packets of data, bad connections, slower speeds, and the occasional reset on my little tracker thing. Now, Iris also supported Z-Wave. Despite being the oldest of the bunch, Z-Wave worked at a frequency of 800 to 900 MHz, which is kind of around here in the spectrum. And that gave it a much longer range, but a slower connection.

[15:08] Now, the thing with the Z-Wave is that it's still around, people use it. It's just not used as much in homes as Zigbee. So, anyway, we've established that the band is the highway, and the protocol is the language through which we speak. So, how do we control them? By the way, we've now entered a realm of stuff that I had heard about before I started researching this video, but that I didn't really understand. And that is kind of the thing. If you want a smart home, you have to be one of those guys.

[15:34] Remember that Lowe's Iris smart devices ran on a Zigbee network. So, Lowe's had this central hub device that would send messages to all of the [music] devices. And again, because Zigbee is a mesh network, those devices could relay messages if needed. Now, for you to talk to that hub, you could use the Lowe's app, which is great, right? Well, their app worked great for Lowe's devices under the Lowe's hub, but it couldn't talk to other devices.

[16:02] No, no, wait, wait. I just said that Zigbee is a language. Everyone on Zigbee speaks Zigbee, don't they? Well, not really. If you bought, for example, a Staples smart plug, even though it also ran on Zigbee, it didn't necessarily talk to Lowe's's hub. Or I should say, it didn't want to cuz [music] to control Staples devices, you needed the Staples hub and the Staples app. And even though they're both operating on Zigbee, on the same channel, on the same highway, the same protocol, devices speak the same

[16:36] language, no. You could not control Staples devices using the Lowe's app. Why would companies not make this thing cross-compatible? Just save us all a headache. So, how about smart speakers? Are those a solution? Now, Alexa in this case operates like a framework. A framework like Alexa or Google Home or Apple HomeKit, it's it's this layer that tries to connect all of these devices together. Devices that may work on the same protocol or even across different protocols. [music]

[17:06] Now, a framework is also not just the app that controls everything. It's an app that adds a layer of automation or room combinations. And Amazon Echoes have a Zigbee hub. We can use that, right? Right? Well, not always.

[17:21] Not always cuz cuz you have different versions of Zigbee and different versions of Echoes and not all of them have a Zigbee hub. Even worse, your smart device might be designed to require a hub that's made by its own manufacturer. It makes a difference if you already connected this device to its own hub and you're trying to connect it to Alexa device manager, right? Do you see where I'm going with this? Nobody can keep up with this stuff. Nobody. And to make matters worse, both of those

[17:45] examples I just gave you, Lowe's Iris and Staples, they have discontinued their smart [music] devices. So, what happens then? Often times, devices just turn into bricks, really expensive bricks at that, cuz you just can't use them anymore. App discontinued, hub discontinued. Like these walled gardens that companies create, they never consider the possibility that the company might go under or they just don't care. And so, why do these smart home companies die all the time? Well, part of it is that

[18:19] making smart home devices uh it's not really a great business. Look at the business of selling smartphones. These are $800 to $1,000 devices that could last, that are supposed to last [music] 4 to 5 years, but the company often manages to convince us to replace them 2 years in, even though we don't really need one. They've even turned renewing iPhones into a subscription now.

[18:43] Now, on the other hand, look at a smart home device. This is maybe a $50, maybe 100, 150 device that you are not going to replace until it breaks. Could be years. Could be 10 years. Given my smart home is largely unchanged over the past 4 years, they've proven to be a reliable foundation.

[19:01] >> I've had this guy for a few years and it's been rock solid. So, I've kept it. I've had it for 3 and 1/2 years, still works great. >> And we're still using HomePods for the speakers on the Apple TV and And been working great.

[19:11] >> Like not [music] even the smart home YouTubers are replacing these devices. It's not a recurring [music] business. And it's not a high margin business either. It does remind me a bit of the light bulb companies with the whole Phoebus cartel mess. In the '20s and '30s, all the light bulb companies in Europe and in the US, they got together [music] and they agreed to reduce the life expectancy of light bulbs from what they could be, which was about 2,500 hours, to about 1,000 hours. So, you needed to

[19:40] buy more light bulbs. Cuz again, just like with smart devices, selling light bulbs every 2,500 hours is not so great of a business. And that explains why some smart devices >> [music] >> feel so overpriced, right? It's a simple plug, right? It It should be worth 10 bucks, 5 bucks. Oh, it's worth 40.

[19:57] Well, cuz the margin needs to come from somewhere. But that pricing was also a gateway for their own doom. Competition from China. Cuz Chinese smart devices are cheap. And so, they compete. So, why would a Western company want to get into this business? It's kind of this self-fulfilling prophecy, right? People grow tired of these protocol hiccups.

[20:25] They stop buying devices. Companies die. Devices turn into bricks. People get more tired. Loop starts again. That That's where we are now. It's 10 years later. We're stuck in a loop. There is no real motivation to level up the quality or ease of use or to innovate.

[20:45] >> He had received um audio files, recordings from what was going on in our house. >> You could argue it's even worse now because so many IoT devices have shown us their true colors. And it's not pretty. Alexa recordings leaking online.

[21:01] We looked twice at this Internet of Things revolution and realized that having all these cameras and microphones and sensors in our home, all connected to the internet, all managed by different companies, maybe it's a little dangerous.

[21:16] Maybe we don't want a connected fridge that one day randomly decides to play ads. Maybe we don't want an AI in our homes listening to everything. That's it. That's the answer. Smart homes are stuck between a rock and a hard place.

[21:28] It's a nightmare of protocols that few people can make sense of and a bad non-recurring business that companies don't want to get into or or that have to compensate by selling your data or ads or subscriptions. >> [music] >> But the dream is not dead. Like researching this video has brought me close to another group of nerds. A huge group of nerds that I think still believe that this Hollywood smart home future is possible. A smart home that doesn't rebel against you or that uses

[21:56] your conversations to advertise you. It's possible and I believe that it is. But for them. But but if you're with me to this point in the video, well, I've sort of tricked you into understanding the basics of protocols and frameworks.

[22:09] Now you know what Zigbee means and how it's different from Z-Wave. I tricked you into leveling up in our scale and now I can give you the solution that I found. I give you guys Home Assistant. >> Really? All this fuss about Home Assistant? Who doesn't know about Home Assistant?

[22:26] >> Well, I don't know. I had no idea before I started making this video, but it it's a thing and for the past [music] few weeks I've been leveling up and I've been setting it up in my own place. So every smart home video I found online, every review, automation tip, hack, everything led to this platform, Home Assistant. So I had to try it myself. [music] So this is by no means sponsored or paid. I've done the work and I've been setting up Home Assistant in my house. The story is that

[22:53] this dude, Paulus Schoutsen, started tinkering with his set of Philips Hue back in 2012. >> [music] >> His tinkering evolved from just a few lines of code of Python to an open source GitHub to a project to a platform to an operating system and now a little non-profit foundation that for many years the nerds that that kind of nerds built it.

[23:14] Thousands of forks on GitHub, the second most active open source project on the platform and slowly but surely documentation made it to a point >> [music] >> where normies like me could mostly use it. But but but the problem is the problem is you have to do this stuff yourself. That immediately means that smart homes they're just not for everyone cuz you actually need to level up to build a smart home or to set up one for your house. Like hopefully this video has helped out a little bit. Now

[23:45] the big perk about Home Assistant here is that it can run locally. So remember that Amazon Alexa diagram I did earlier that had to go through all that cloud processing. Now Home Assistant is not in the cloud it's like an operating system for your house and you don't even need to connect it to the internet if you don't want to. So the most complicated part which again nerds will probably find very easy it's not for everyone is installing this operating system. You can do it on a Raspberry Pi which I

[24:09] guess is like three out of four in the scale of difficulty. Um you can install it in an old laptop running a virtual machine which is what I did and more recently you can also use this thing. This is like Home Assistant's own computer which you can buy for like 150 bucks. So Home Assistant is open source, it's free it is really free it supports everything.

[24:29] As of April 2025 about 2 million households use Home Assistant. It operates under this non-profit Open Home Foundation which is partially funded by another branch of the company that's called Nabucasa. So Nabucasa um makes money from stuff like the Home Assistant Green that's like a for-profit branch and they also make money from stuff like this. This thing for example is a Zigbee/Thread antenna or a router. It's kind of like the equivalent of that Hue Hub or that Iris Hub. So this device talks to all

[24:59] Zigbee devices. I actually got rid of my Hue hub and connected all of my Hue lights directly to Zigbee and all the other Zigbee devices in the house, they're all connected to this antenna. So, Home Assistant is running here on a virtual machine. I can access it from a browser, from a phone app, which is just connecting to this local computer. The big advantage of all of this is that because this platform is open source and honestly, also because of the hard work that these guys are putting in, they've

[25:23] integrated to everything. There are 3,400 plus integrations on the last count. Some are community built, some companies are already building their own on the platform. And with a single Zigbee hub, you can pretty much ignore all the other hubs from other devices and connect everything to this one. So, no more translation or no more skills integration, everything runs together locally. Now, this also supports Thread, which is the most recent complication of smart homes. Definitely built with the

[25:50] best intentions, there's great potential, but it's one more protocol that we have to be compatible with and on stand, especially now that Thread and Matter are popping up in devices everywhere. Now, remember that we said we have hubs on one side and devices on the other. The channel is the 2.4 GHz network where they operate and Zigbee on top of that was the protocol. But in reality, Zigbee was two things. First, Zigbee is the mesh network. Remember that network that can relay messages to

[26:16] each other even if they're if they're out of the range of the main hub. And second, Zigbee was the language that these devices spoke. Okay, so you might have run into these logos more recently. So, what's up with those? Now, just to screw with our brains a little more, Thread is a new network layer, which is similar to what Zigbee did. Now, the big practical advantage beyond other technicalities is that instead of depending on one hub, a network can have a backup, multiple hubs, in this case

[26:43] they're called leaders, which is useful when one of them fails. Now, the confusion part is that Thread is not the full protocol. Thread is just the network part. So, this [music] would be incorrect. Thread still needs a protocol and in this case, the most popular one is Matter. Now, Matter works over the Thread mesh network. It's two different things. Well, Zigbee does both of these things in one name. [music] Now, the big advantage of Thread is that it connects more directly to other

[27:12] devices in the network and in like an IP network versus Zigbee, which always has to go through the framework of the app controlling the hub. But, back to Home Assistant. Like, once you have a Home Assistant OS running, you can plug one of these or one of the dozens of Zigbee and Thread antennas that you can find on Amazon and basically make that your hub.

[27:29] Home Assistant is a framework that connects directly to all the protocols and it does things locally. Now, some examples of stuff that I that I built. First of all, I really like physical buttons and think they're important, so I installed a couple of these around the house. We use it for stuff like dinner time, so there's button number two is dinner time. That is connected to an Apple Music playlist, so when you hit it, lights get set in like dinner mode and there's a playlist that we all

[27:54] contribute to that starts playing immediately. We have like automatic dimming as it gets dark, like I think 10:00 p.m. lights start sort of transitioning, like winding down sort of lights and start getting darker until they shut down completely around midnight. One of my favorite automations [music] is I connected my balcony lights. I wrote a script that gets tomorrow's weather forecast and puts it in the lights. So, I have four lights, morning, noon, afternoon and [music] evening. So, you get yellow for sunny,

[28:23] white for cloudy and blue for rain. I I think I said purple for thunderstorms, but it hasn't happened yet. But, that's that's really cool. I get the forecast without even checking. Uh my favorite, by by far my favorite, is I have this NFC tag hidden on top of that speaker.

[28:36] What happens is you tap it with your phone, it automatically sets the house to movie mode and movie mode is like this 4-hour setting where turns off all all lights or the sets them to like the absolute minimum brightness for some of them. Uh just enough [music] so you can kind of find your way. But if you pause the movie, all the lights increase in brightness a little bit, so that lets you kind of find your way to the bathroom or grab a [music] snack. And then when you play the movie again, all

[28:59] the lights dim again. And when the movie's over, you turn off the TV, the lights boot back up so you can kind of find your way. Now, the last experiment that I've been running and maybe I'm going to be judged for this a little bit is I installed Open Claw in the computer that runs Home Assistant. Now, Open Claw is this open source agentic AI that Silicon Valley's going crazy about. That's a video for another day. We actually made that video if you want to check it out. But thanks

[29:25] to that, I can do stuff like this. Hey HAL, so I'm throwing a Halloween party tonight. Um and I want you to come up with like the spookiest possible setup for all the lights in the living room and the balcony. We're also trying to impress some of our YouTube subscribers, so uh go nuts.

[29:50] Take that, Alexa. Now, ironically, I called this whole thing HAL, which I really hope really really hope doesn't backfire. But th- this is all possible and not crazy risky because of the local nature of both of these things, right? So, this is Home Assistant running locally, Open Claw, which also runs locally. It lives They both live in the same laptop old laptop that I repurposed, and they're connected together via Home Assistant's API. HAL doesn't have access to the internet except for receiving and

[30:18] sending messages, which I get via iMessage. [music] So, this again would be much more dangerous if if, for example, I was using Alexa. There's a company on the other end that's listening to your conversations, that's gathering your data and harvesting and using all this data for for whatever, right? But this local model runs under APIs that I control, that I pay for, and therefore are not harvested for data, and stuff like the voice translation I even do that in the computer cuz it's it's like

[30:44] really lightweight AI. Something like this could be the future. A local smart home that learns from your patterns and automates based on that. I actually asked Hal to like do a review of stuff that happened and find patterns that we could automate. For example, it discovered the other day that whenever you pause a movie, if you're in movie mode, the bathroom light turns on immediately after. It has a sensor, so why not automate that? It's so it's kind of observing those potential

[31:09] automations, which for now are mostly light patterns because that's what I mostly have. But I I think that we're on to something here and there is no Bezos spying on me. >> [laughter] >> There's no connections that have to go through the cloud. Everything is happening here in house like the real Hal.

[31:29] >> Good afternoon, Mr. Aimer. Everything is going extremely well. >> Now just to be safe, by the way, just to be safe, the whole system has no control over the front door lock, which is smart, but it's the only smart thing in the house that's not connected to anything. We'll get there. We'll get there. Baby steps. Remember, everything that has hindered smart homes over the past decade, the fact that we have too many hubs, too many apps, that we have useless devices whenever a company goes

[31:51] bust, or that our data has to go to the cloud, that everything exists in these walled gardens. Like this could be the solution to that. All we need to accomplish this is devices. Hopefully, hopefully now with stuff like Home Assistant, hardware companies can stop focusing their time on building new apps and building new hubs that only control their stuff. They can get on this boat and focus that time on the hardware innovation part. It's 2026. We should be past curtains and lights and plugs that

[32:22] we have to create rules for. I've spent hours configuring all this stuff. It has not been easy. Get me smart, local AI rules that learn from my behavior. Get me a smart kitchen that cooks for me. >> This detects what you're craving >> [music] >> and makes it for you.

[32:39] >> Thanks, Hal. You're the best. >> Now, Hollywood did predict that My Halo might [music] go rogue and that is a risk that I'm willing to take you know in the in the purpose of this experiment. >> [music] >> But all of those Hollywood ideas, they never ever predicted this [music] terrible reality that we live in now, which is that companies might invent smart stuff [music] in order to harvest your data. And that's just a grimmer version of the future that I think Hollywood failed to predict. [music]

[33:08] Now, this big remodeling that you saw as we were doing this video, it actually has to do with another catastrophic [music] issue I found in my house. There's something very wrong about my TV settings and I think your TV might be suffering the same fate. We made a whole video about it. You should check it out.

[33:26] Catch you next time.
