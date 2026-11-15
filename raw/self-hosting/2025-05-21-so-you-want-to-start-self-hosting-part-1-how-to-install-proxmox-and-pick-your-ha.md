# So, you want to start self-hosting? Part 1 - How to install Proxmox and pick your hardware.

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=zngSuqCM4d8)
- **Canal**: Tailscale
- **Publicado**: 2025-05-21
- **Recopilado**: 2026-11-15
- **Idioma**: en (subtítulos manuales en (manual), transcripción literal)
- **Duración**: 20:13

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hello, I'm Alex from Tailscale and in this video series I want to introduce you to the wonderful world of self hosting. The idea of taking a cloud service, so something like a Google Photos or a Netflix subscription, and bringing that stuff in-house behind your firewall.

[00:17] Of course I will show you how to use Tailscale to connect all of this stuff together and build your own personal private secure network. Now you could in the old days pick up a Raspberry Pi, really cheap and affordably.

[00:30] This is a Raspberry Pi 4, so it's a few years old now. But the idea with a Raspberry Pi was that this is a single board computer, this has got a CPU, that's what's under this blue thermal pad right here. You've got a CPU, destroying this thermal pad, and you've got the RAM on here, you've got network ports, you've got USB.

[00:51] You've got everything you need in a little single board compute package. The trouble is, they're kind of slow. And it's kind of hard to connect things to them, so where would you plug a hard drive into this? You can't do it any other way except USB, which is kind of slow, it's kind of not the most reliable thing to do.

[01:10] And especially on the Raspberry Pi 4 at least, you're sharing bandwidth between the USB bus and the Ethernet bus. So again, performance is just not very good on a Raspberry Pi. Not to mention that a Raspberry Pi 5 these days, starting price for a kit on Amazon is like $130 or something.

[01:29] So let me introduce you to this. This is a 1 litre small form factor PC from Dell. I think I picked this up off of dellrefurbished.com for about $150. And this is a fully fledged, what's called X86 PC. Now the nice thing about this, first of all, is it's really cheap, but it's also really expandable.

[01:49] So in here, in this blue caddy, I have a 512GB SATA SSD. You can see there's a couple of ports on here, one for data and one for power. The small ones for data, the big ones for power. And this is a 512GB SSD, but you could very easily pick up a 1, a 2, a 4, even an 8TB variant of one of these for not a huge amount of money.

[02:13] Inside we've got the CPU, which is what's underneath this fan here. And because these CPU units were kind of designed to go in office buildings and sort of on the back of monitors and stuff, they're designed to be really easily serviceable without tools.

[02:25] So you can see the fan here just comes out with just a couple of plastic tabs. You can upgrade the RAM on these things, which is another problem with the Raspberry Pi. The RAM that these ship with from the factory is all soldered directly onto the Raspberry Pi, so they're not very flexible.

[02:41] But here it's just a couple of laptop DIMMs, so I've got two 16GB sticks of memory for 32GB of total memory in this system. And that's useful if you want to run things like machine learning models to run a self-hosted Google Photos backup software called Image.

[02:58] And so that's going to be the target for this video series, taking real problems that you have in your digital life and figuring out how to self-host them. So we're going to put Image on here, which is a self-hosted Google Photos clone.

[03:10] Also, we'll probably take a look at Jellyfin or Plex or maybe even Audio Bookshelf to solve some of your media needs. And then I'll also introduce you to one of my absolute favorite open source projects of all time, to be honest, Home Assistant.

[03:24] An open source home automation platform that will very comfortably run on a box like this. So get subscribed. This is part one in this video series where we're going to install Proxmox and kind of get you out of the ground and build the foundations for this.

[03:38] And then part two and the ones that follow will be how to set up a few basic self-hosted applications to dip your toe in the beautiful pool of self-hosting. So first things first, we're going to need to install an operating system onto this computer.

[03:53] And to do that, we flash an ISO onto a USB stick and turn it into a bootable medium. So head over to Proxmox.com and click on downloads and then download the ISO file. Whilst that's downloading, we're also going to want to search for something called Balena Etcher.

[04:09] Now, if you're on Windows, I would recommend not using Etcher. I'd use something called Rufus instead. This is a way of turning USB sticks into a bootable USB drive. So if you're on Windows, use Rufus. If you're on macOS, use Balena Etcher.

[04:24] If you're on Linux, well, you probably already know how to make a bootable USB because you probably installed Linux yourself. So head on over to your downloads folder, wherever that may be. And you can see I've got Balena Etcher already downloaded here.

[04:37] Drag that into your applications folder. We're going to replace the existing one that's there to make sure that what we downloaded gets installed. And so that the Balena Etcher is the most up to date version it can be. And then I'm going to launch Balena Etcher just by double clicking on it.

[04:52] I'm going to click on open, followed by flash from file. I'm going to select the Proxmox ISO that we just downloaded. Click on open. And then I'm going to put my USB drive into one of the USB ports on my laptop. Next, I'm going to select a target disk to flash.

[05:08] So in this case, this is the USB SanDisk 3.2 123GB drive. This is going to completely override everything that's on that USB disk. So make sure this is a spare drive and there's nothing important on it. It's going to ask me for my password, which I've just entered.

[05:24] And then it's going to flash the Proxmox ISO onto the USB stick. Once that's complete, we then want to put it into here. But before we get there, I've got to finish reassembling it. So I'm going to put my SATA SSD back into the case.

[05:39] This is a hot swap type deal, tool-less type deal. So it can be a little bit fiddly to line it up right. But once it's in, it's just a case of sliding it in until it clicks. Then I get my lid and put that back on. And again, just tighten the thumb screw.

[05:57] Alright, so now the flash is complete. There's a few things we're going to want to do before we power this on. First of all, we're going to need something in the way of networking. This is a Ubiquiti switch and you absolutely don't need to use Ubiquiti.

[06:10] But I like them because these are what's called managed switches. So you can buy very cheap unmanaged gigabit switches off of, well, any online retailer. Unmanaged means it's kind of dumb. There's no way of rooting packets around cleverly inside.

[06:28] This is basically a mini computer inside a switch. So I can carve up this switch into multiple different what are called VLANs. It's well beyond the context of today's video. Essentially what we want to do is grab an ethernet cable.

[06:40] This is going to represent our internet into the building. So I'm going to just put that into the first port here until it clicks. And then I'm going to grab another ethernet cable. So this is a Monoprice Slim cable. Again, you can find these online very readily available.

[06:56] And I really like these because just look at how malleable they are. And I'm going to put this into one of these ports here. In fact, I might undo my very pretty knot right here. I'm going to put this into one of the ports on the ethernet switch.

[07:08] And then on the back of the Dell box, you can see there is an ethernet port right here. So that just plugs in like that. Now the next thing you probably want to consider is a keyboard, a mouse maybe. Although for a headless server you probably don't need a mouse.

[07:21] And some kind of a monitor. And I have a bit of a trick up my sleeve for this today. This is called a Jet KVM. This is a little, basically keyboard, monitor and mouse in a very tiny sort of little Apple Watch size device.

[07:34] This is going to emulate effectively what a full size keyboard and mouse would do. And do it in such a way that I can record the screen of this laptop and show you what's going on here. So for demonstration purposes it makes life a lot easier.

[07:48] But essentially the way this works is there's a USB cable here which connects into the back of the Dell box. Just in one of the standard USB 3 ports. Like so. Then there is this little splitter here. And one side of this goes to a wall outlet.

[08:05] So this connects to a charger of some description. And then the other half obviously goes into the back of the Dell box right here. On the back of the Jet KVM there's a USB C port. And this is kind of like a two in one deal.

[08:18] So this does power and control as well. So the Jet KVM should power up any second now. We're going to need to connect this with another ethernet cable into our switch over here. So in we go over here. And in we go into the back of the Jet KVM.

[08:35] Now there's one thing missing. How do we get the video out of this box into the Jet KVM? And we need to use an HDMI cable. Very straight forward. The back of the Dell box here has an HDMI out. And then that just goes into the HDMI in on the Jet KVM.

[08:51] Obviously if you're hooking up a real keyboard, a monitor and a mouse. It's going to be very straight forward. But this little box here as I say emulates all of that functionality for us. And now it's time to take our bootable USB stick out of our laptop.

[09:05] And put it into the back of our little Dell computer right here. So once we've done that we're now ready to switch this thing on and get it booting. But before we do that I want to pull up the interface for the Jet KVM.

[09:20] So in my case this is running on 192.168.1.70. And this prints that out beautifully simply on the little screen for me right here. And this is it. So this is the Jet KVM interface. This is just replacing the keyboard, video and mouse that you would have physically on the desk in front of you.

[09:38] So here's the power cord for the Dell box. It's just a standard 19 volt kind of barrel jack, you know, laptop power supply type situation. With that connected up we should see any second now that the Dell box boots. In fact there we go.

[09:52] And it's now going to boot from the USB stick instead. So it says welcome to Grub. And don't worry about these error messages. They just unfortunately happen sometimes. And we can click on either graphical or terminal. I'll just do graphical right now because I think that's probably the easiest thing.

[10:08] So what we're doing right now is we're installing Proxmox. And this is going to be the sort of base layer, the foundational layer of our sort of mini self hosting home lab platform that we're doing here. And Proxmox is what's called a hypervisor.

[10:21] Basically in simple terms this means it can run virtual machines and containers for us. Those are logical ways of slicing up this one machine into multiple machines. So we could have one container for image, we could have another container for Plex or Jellyfin or something like that and so on and so on.

[10:39] And the reason I picked Proxmox is because I use it in all of my Tailscale videos. In fact if you look on the home lab subreddit it's probably one of if not the most popular projects out there. Now in terms of installing Proxmox it's quite straightforward.

[10:53] We can just click our way to victory here. I'm going to select I agree to the license. I've got two drives I can install Proxmox onto. I'm just going to select the NVMe drive because that's going to be the most performant for us.

[11:04] And then I'll leave the other 500GB disk just for data, that kind of thing. So in terms of countries I can type in the standard way, United States, here we go. Time zone, I'm going to pick America, New York. And then keyboard layout, leave that as US.

[11:21] Password, I'm just going to set a random password. And then for email just pick an address that you don't mind any alerts going to from Proxmox. I'm just going to call this one admin at test.com. Now on this page, this is important, we pay attention to the various networking things that are going on.

[11:39] This particular box only has one network interface, that's this gigabit ethernet port right here. But some of them have multiple so you do need to pay attention potentially to which interface you plugged into. In terms of a host name or a fully qualified domain name, this is up to you.

[11:54] You can buy a domain very cheaply, I just released a video a couple of weeks ago on how to do that with a custom OIDC provider in Tailscale. But for now I'm just going to call this one Proxmox.alexishouse.com. I don't own alexishouse.com but maybe that will come back to bite me later, but for now that will do just fine.

[12:14] Now we're also going to want to set a static IP address for this system. I typically do for the primary server on my network 1.10, personal preference entirely but that's what I like to do. The default gateway on this particular network is 192.168.1.254 and that also happens to be the DNS server as well, at least for now.

[12:37] One of the other things you can start doing with self-hosting is hosting ad-blocking DNS servers so you don't have to worry about something, you've probably heard of Pi-hole. You can self-host that on here as well. The beauty of modern hardware is that it's so insanely overpowered for a lot of the stuff that we want to do at home.

[12:52] Whilst the install is running, let's cover a few basic network fundamentals, things like where did I get my gateway IP from, how did I know what my DNS server is, all that kind of stuff. In the UniFi world at least, it's fairly straightforward. It's all presented to you in a dashboard that you can see right here.

[13:08] This is one of the reasons I like UniFi personally, because my switch here can talk to the firewall or the router and get all of that information all in one place and all in one dashboard. If you have a different router or an ISP provided one, get yourself logged in to the admin page of that router and look for something along the lines of DHCP range or IP range or subnet mask or something along those lines.

[13:35] What you're looking for really is this information right here. It won't look exactly like this, but this should give you a starting point at least as to where to find it. In my case, you can see that my gateway IP is 192.168.1.254 and that refers to the actual firewall in this case itself that's doing all the routing into and out of my network to my internet service provider.

[13:58] This box, the UniFi box, also happens to be my DNS server and that's a pretty common setup for most networks to be honest. Most firewalls are set up to be what's called a DHCP server. As part of DHCP, which is the process of automatically handing out addresses to devices that connect to your WiFi or your network, you will get a bunch of information automatically through DHCP.

[14:21] You get the gateway, you get the DNS, all that kind of stuff. You can see here the DHCP range is 1.6 all the way through to 1.254. When a client requests to connect to your network, it will say, hello, I exist, can I have an IP address please?

[14:36] The DHCP server will then give it an address with all that information in. Proxmox though, needs a static IP address. It doesn't announce itself and say, hi, I'm Proxmox, I need an IP. We need to manually configure that, which is what we did in the previous step a few minutes ago.

[14:52] Typically speaking, the gateway IP is either 192.168.1.1 or 1.254 depending on how your network is configured. There's a bunch of other stuff you can typically configure in DNS and all the rest of it. You can see here that the DNS server will be assigned to client devices automatically by DHCP.

[15:11] In this scenario at least, the DNS server and the gateway are one and the same. As we can see, Proxmox has now installed and rebooted this computer so we can remove our USB stick. The first thing I like to do is get logged in via SSH because this tiny little writing is not good for anybody's eyes these days.

[15:31] What we need to do is do SSH root at and then the IP address of the box that we just installed. In my case, that's 192.168.1.10. We also set a root password as part of the installation process. Go ahead and enter that now.

[15:47] Over at helperscripts.com, there'll be a link to this in the description down below, there are a bunch of basically fresh out of the box Proxmox things I like to do before I do anything else. I'm going to search up here for Proxmox post install and here we go. Proxmox VE virtualization environment post install.

[16:07] I'm going to copy this onto my clipboard, go back to my terminal and paste this script into my terminal. This is going to do a few things for us. Let's talk you through it. It's going to correct the Proxmox virtualization environment sources.

[16:22] Proxmox by default will nag you that you need a subscription. It's a fantastic project and if you get a lot of utility out of it, you should go and support the project by buying a license or getting some support from them.

[16:33] They have a bunch of enterprise repos which by default are configured and require a subscription. We don't have a subscription so we need to correct those. Let's remove those, let's remove the enterprise repository, let's correct the Ceph package sources and the PVE test repository.

[16:49] Yes, fine. I'm going to add it as disabled. I'm going to disable the subscription nag and as it says here, you should support your local friendly neighborhood software projects. I'm going to disable high availability right now because we've only got one of these boxes.

[17:03] I'm not going to update Proxmox and I'm not going to reboot because I like to do these things manually. What we want to do now is an apt update. This is going to fetch down the latest versions of all of the packages from Debian.org but it's not going to install them.

[17:21] Essentially how the Linux package management system works is you have on your system a local copy of all the latest, it's like a long list of all the latest versions of all the packages available that make up a Linux distribution.

[17:34] When I do apt update, it downloads a new list, the up to date list of what the current version of packages is. There's a delta probably between those two things and you can see here that there are 11 packages in that delta.

[17:47] So to install them, I want to type pve upgrade. This is going to bring our Proxmox installation completely up to date and you can see there's a bunch of stuff going on here. We're going to install a new kernel. We're also going to update Python and Proxmox and pve itself a little bit because the ISO is a little bit behind what is the most current version.

[18:08] Once this is done, we should actually, in fact we can probably go there now, we can go to https 192.168.1.10 and then we're going to go to what's called a port number. So you see the colon in here, we're going to go to port 8006. This basically means that Proxmox is advertising a website on the IP address of 1.10 on port 8006.

[18:31] But because this is a self-signed certificate, we get the scary your connection is not private message. It's okay, we can proceed past that and again log in with our root username and password using the standard Linux PAM authentication.

[18:45] And this is it. We now have a fully functional Proxmox box. We can create virtual machines, we can create containers and start our self-hosted journey. But before we do, I do want to just reboot the box because I remember there was a fresh kernel applied here.

[19:01] So let's do an apt-auto remove. This is going to just clean up anything that's there. In this case there was nothing and we're going to reboot the box. Now we can jump back to our JetKVM and watch the reboot process happen in real time. Don't forget if you had a monitor you could just watch that.

[19:16] But in my case JetKVM will do the same thing. Okay and now the box has rebooted, it's time to install our very first application. But that's going to come in part two. Sorry to be such a tease but it's going to come in part two. Part one is all of the software and getting kind of out of the ground, our foundational stuff.

[19:34] Part two is where we're going to start installing the image container, home assistant, jelly fin or plex or whatever we pick. And how to configure our phone to talk, take a picture and have our phone send it back to home base over Tailscale all completely encrypted and all that kind of good stuff.

[19:51] Get subscribed, there'll be a link in the playlist down below and part two should be out sometime next week. Thank you so much for watching and until next time, I've been Alex from Tailscale. And I'll see you in the next one.
