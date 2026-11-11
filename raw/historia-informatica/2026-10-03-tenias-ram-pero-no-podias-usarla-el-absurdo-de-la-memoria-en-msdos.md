# Tenías RAM, pero no podías usarla || El absurdo de la memoria en MSDOS

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Tq2BqalHhTo)
- **Canal**: PC Clásico
- **Publicado**: 2026-10-03
- **Recopilado**: 2026-11-11
- **Idioma**: en (subtítulos automáticos en (yt-dlp) (yt-dlp, auto), transcripción literal)
- **Duración**: 12:23

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] On an old PC, having memory and being able to use it were two very different things. Even though this PC has 4 MB of RAM and this game, Dune 2, only needs about half a megabyte, MSDos tells us that there is not enough memory. And this is just one example. Here's another one, Buzz Aldrin's Race into Space, which also won't start. It tells us that there is no EMS memory. The problem is that although there is only one memory in the PC, in MSDOS there is not just one memory, but many. And today

[00:36] you will finally understand what conventional memory, superior memory, high memory, extended memory and expanded memory are all about. Next to nothing. Let's find out what's going on here, but I warn you, this isn't a video game channel, it's a channel where I explain the technical aspects of classic PCs in an engaging way. almost addictive. The problem is not that there is no memory, but that the memory is in the wrong place. In MS-DOS, having memory wasn't enough. Where I was mattered just as much, if not more.

[01:13] Imagine you have a 486 with 4 MB of RAM. This graph represents memory. 1 MB, 2 MB, 3 MB, 4 MB. Basically, memory is divided into two main blocks, one block below 1 MB and another block above 1 MB. This is because the first processors in the family, the 8086 and 8088, could not manage more than 1 MB of memory. This was its border. If instead of 4 megabytes we had 8 megabytes, the memory above this boundary would be much greater. But let's return to our four omegas. The only thing I need you to remember is that the block below 1 MB is

[02:05] special and fixed; it cannot grow no matter how much RAM you buy. And you're about to understand all of this, I guarantee it. Look, let's put the graph here. This is the conventional memory; I've marked it in red. Conventional memory is what programs and games are fighting for. The executable code must be loaded here. For this reason, and because it has a fixed and limited size, regardless of how much RAM the PC has installed, conventional memory is the most valuable in

[02:41] MS-DOS environments. This is the upper memory. The upper memory is where we can load drivers and resident programs so we don't have to use up space in conventional memory. By the way, in this video I'm not going to talk about drivers or resident programs. If you're curious, leave a comment. This is the high memory. It is a small block where MS-DOS can load a significant part of itself in order to free up more conventional memory, which, remember, is the most valuable. And the rest is extended memory. Extended memory or XMS is where programs and

[03:26] games can store data, only data. The program itself, the executable code, no. This is because the real-mode processor cannot execute code directly from the 1 MB boundary. This in real-world mode, by the way, I explain it to you in this video. And expanded memory or EMS is a way to take advantage of all this memory space; this large block is a way to access memory above the 1 MB boundary through a small window of memory located below the 1 MB boundary. But wait, let me show you.

[04:10] But first, let's use the magic of classic PCs to improve this graphic. Magic. Okay, we can continue. Here we have the conventional memory of 640 KB, the superior memory of 384 KB. These two blocks form the large block that lies below the 1 MB boundary. And then we have the high memory, a block of almost 64 KB and the rest extended memory. Expanded memory or EMS is a way to access this large space through a small window created in the upper memory area. Where you saw just one block before, I've now put three. The one I'm

[05:01] highlighting right now is the window. What the system does is map a small area of extended memory, for example, this one that I highlight on the graph. And we have a portal between two worlds. Now the processor can access this small area of ​​extended memory through this small area of ​​upper memory. And this is something the processor can do perfectly in real mode because the upper memory is below the 1 MB threshold. And in this way, instead of reading this area of ​​the extended memory, we could then read this other one and then any others we

[05:40] wanted. all of it, but little by little in pieces, because at the moment we are accessing this area that I am highlighting right now on the graph, we cannot access the previous one. In other words, we have to cut the extended memory into pieces and access it small block by small block. This was very powerful in its time, but as you can see, it has quite a few limitations. Initially, conventional memory was limited to a maximum of 512 KB. The other half of this block of 1 was reserved for me by the system, not as access to a type of memory,

[06:22] but for access to hardware, both by the motherboard and the expansion cards. Later, this reserved space was reduced to 384 KB and we arrived at that final conventional memory figure of 640 KB. This could no longer be changed, so these 640 KB had to be used very wisely . The upper memory is precisely these 384 KB of reserved space. However, the system does not fully utilize this address space. That's why MS-DOS can take advantage of unused slots to load resident drivers and programs

[07:09] . Now, don't think we can use this 384 KB block, not even close; more like 100 or so, 120 or 130 KB. And of course, if we want to use EMS expanded memory, this space will be much smaller; you can't do everything. And this is because, if you remember, in order to access the EMS expanded memory, a block of memory must also be reserved in this memory area.

[07:40] higher and therefore fewer blocks will be available to load controllers. As I just told you, don't confuse high memory with superior memory. The high memory is a small block above the 1 MB boundary and is the only block, almost 64 KB, that the processor can directly access in real mode. This is due to the mechanism used by the x86 architecture in real mode to access memory based on segments and offsets. By the way, I also explain this in this video. Just as with upper memory,

[08:22] MS-DOS programs cannot load their executable code into high memory. Well, maybe loading it, but not running it. So for all practical purposes it's more or less the same. However, this high memory can be used by MS-DOS to load a significant, very noticeable part of itself into that area, thus freeing up valuable conventional memory. Extended memory emerged with the aim of overcoming this limitation imposed by the 8086 and its narrow-bus sibling, the 8088. The 286 could access, and still can access, 16 MB of RAM, and the 386 could access 4 GB. Yes, you heard right,

[09:12] 4 GB, I also explain this in this video. However, MS-DOS operates in real mode and therefore cannot access more than 1 MB; it cannot directly access extended memory. What was done was to use the famous Himem controller. O Himem, in Spanish, does that ring a bell? Thanks to this, PCs could access memory above 1 MB, extended memory. Unfortunately, its use is not nearly as simple as that of conventional memory or even higher-end memory. And it was necessary to define several standards, criteria,

[09:57] a methodology and also, as I have already told you, the programs could not run from extended memory, but well, they could use it to store large amounts of data. Some games, like Dune 2, used it for some audio, I think to play digital sound, I'm not sure, but it was a very promising start. The 286 also introduced expanded memory or EMS. Again, do not confuse extended memory with expanded memory.

[10:31] The extended one is the one I just told you about, and the expanded one uses a small window in the upper memory to be able to access memory above 1 MB in small chunks. So we have extended and expanded memory to be able to store more data in our programs, databases, video games, it doesn't matter. But it was relatively uncomfortable, and that's what caused him to eventually switch to protected mode and before that to the extenders of the second one. But XMS and EMS in the 286 era were not the same from the user's perspective.

[11:16] Extended memory could be used via software, but expanded memory or EMS with the 286 required the use of special cards, expansion cards. From the 386 onwards, expanded memory or EMS was already emulated through software. Does the emm386 file sound familiar? Well, that's the one that allowed the use of expanded memory without the need for any special hardware, starting with the 386, 486, etc. Of course, do you want to see more content like this, simpler, perhaps more technical,

[11:58] or would you like me to show you how to solve the memory problems that prevented the two games I showed in the introduction from working and get them working properly? I read your comments and encourage you to join as a channel member to help me create more and better content. And we'll see you here very soon with more technical and entertaining content about classic PCs.
