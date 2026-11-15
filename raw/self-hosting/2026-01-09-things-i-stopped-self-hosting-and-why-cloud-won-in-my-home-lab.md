# Things I Stopped Self-Hosting (And Why Cloud Won in My Home Lab)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=-W-ayVXtFQs)
- **Canal**: VirtualizationHowto
- **Publicado**: 2026-01-09
- **Recopilado**: 2026-11-15
- **Idioma**: en (subtítulos automáticos en (auto), transcripción literal)
- **Duración**: 15:03

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hey everyone, Brandon Lee here with Virtualization How To and today I want to talk about something that feels almost a little bit controversial in the home lab and in the self-hosting world. For a long time, especially when I was first getting started with a home lab, my answer to almost everything was I should self-host that. And honestly, I still think that mindset has a lot of value. Self-hosting teaches you an incredible amount about networking, storage, virtualization, firewalls,

[00:32] backups, containers, and many other core skills. But somewhere along the way, I realized something that was important to me. Not everything actually makes sense to self-host at home. This is not a rejection of self-hosting at all. It is more about being intentional with my learning and with my self-hosting adventures. Some services just do not add enough value for me to justify the time, the stress, and the operational overhead that it requires to actually self-host those services. And that's my

[01:08] opinion. So today I want to walk through the services that I stopped self-hosting and why cloud or managed solutions for those particular services ended up winning for me. So let's dive in and get started. So the first thing that we're going to do is draw for the mini PC, the ST9 Max.

[01:39] And we've got our names here. And there we go. We've got a winner. Alonszo Smith, you just won yourself a brand new Blink ST9 Max. Congratulations. Let's start with the service of email. A decade or more ago, self-hosting email felt like a right of passage. gave you total control and it was one of those core services that really made you feel like you were running your own infrastructure. Now, fast forward to 2026 and emails become absolutely painful to manage on your own. Due to

[02:17] how bad spam has gotten, email delivery depends on so many moving parts. You have to worry about DKIM, SPF records, reverse DNS, IP reputation, and that is just the baseline. Many ISPs will not even allow outbound port 25 unless you are a businessgrade circuit, so residential connections are often filtered. On top of that, some recipient domains have even more requirements layered on. What finally pushed me over the edge was realizing that email was not just another service. It is

[02:50] constantly a moving target that can quietly break without obvious errors. And at some point, the cost benefit for me just stopped making sense. Moving email to a managed provider that does nothing but email hosting removed a huge amount of friction for me. No more troubleshooting deliverability issues and wondering why some messages get tarpitted while others sail right through. For me, letting go of self-hosted email was one of the best decisions that I made. And really and

[03:21] truly for me, email just wasn't that exciting anymore to self-host. Now, many also site privacy issues with email, but frankly for me, I carry a smartphone and use cloud email services across the board with work and other places. So, having that privacy concern with email is just not something that to me was that alarming due to the fact that I was already invested so heavily with cloud email. And also, if I want to send something completely private and make sure of privacy, I'm probably not going

[03:58] to do that via email anyway. That's my take on the privacy aspect. But please know there are tons of really great uh services as well as open- source solutions that allow you to host your own email at home. However, I do think there are still going to be hurdles that you're going to have to overcome if you are truly hosting your email. the storage aspect and the networking aspect that your IP address that you're hosting at home is the target for those email providers. The next service that I

[04:31] stopped self-hosting publicly is DNS, specifically public DNS. I still think running your own internal DNS server is one of the best learning experiences that you can have in the home lab. DNS has always fascinated me and especially internal DNS. It unlocks so many powerful workflows that you can handle yourself. It allows you to do some really great routing of traffic.

[04:53] However, public DNS is a very different story for me. You absolutely can run your own authoritative DNS servers for externally facing services, but the blast radius is much larger. If you self-host those, you may have certificates that depend on those DNS servers, API endpoints, monitoring systems, external clients, all of those depend on that public DNS. So even if your services are perfectly healthy, if your public DNS goes down, they might as well be offline. So for me, the tipping

[05:25] point was the reality of home power outages and ISP issues, which happen at least for me a couple of times a year. I did not want a local outage to take down my public DNS services. So that was a service that I moved off to the cloud provider. So I moved my services out to Cloudflare and I still take care of my internal DNS. I use split horizon DNS.

[05:49] So internal clients I can control those which records those point to. It also gives me the flexibility to have different records for other clients that may not exist inside my home network. I really love the internal DNS control that we have with so many great solutions. And please do check out my recent video on Technidium clustering, which is a feature they recently came out with. Allows you to do a lot of really powerful and cool things in your HomeLab network with DNS. Now, the next

[06:21] service for me that I stopped self-hosting was remote access gateways. When I first built out my home lab, and I know many of you probably felt this way, I was really super excited about running my own cool remote access solutions, things like WireGuard, OpenVPN. I had all of the custom firewall rules, multiple entry points, and failover logic. But at some point after a couple of machines and my DMZ got compromised, it became very clear to me that running a remote access gateway

[06:52] that was wide open, at least wide open in the sense of being accessible from the internet, was a risk that really was not worth it. Exposing services directly to the internet, even when you think you're doing everything right, firewall rules, hardening rules, and many other security features, it's still very easy to have those things compromised on the edge. So for me in my home lab, my remote connectivity is all in on zero trust. I'm a big fan of services like Twate as well as open source solutions

[07:22] like Panggalan that you do not have to open any inbound firewall ports at all and that alone is a huge benefit. The user experience in my opinion is also better for modern home labs. I think this approach makes so much more sense for me. So remote access gateways are just something that I no longer self-host in my environment and instead have gone allin on zero trust solutions.

[07:48] Another service I no longer self-host is push notifications. Now many may say why push notifications? There are so many great open source solutions out there like Godify and others. Well, I love notifications when they work and are useful, but I absolutely hate them when they are fragile and unreliable. Now, at one point, I realized I was spending more time maintaining certain solutions that I had in place for remote notifications and push notifications, and I really was benefiting from those

[08:22] solutions. And that felt completely backwards. Alerts need to arrive when they should, and if something fails, I don't want to have to debug my notification deliveries at midnight or at worst times. These days, I use Mail Rise paired with push notifications that are hosted with Pushover. And I think Pushover is a rockolid solution that I highly recommend. And you can literally pay $5 for a lifetime subscription to Pushover for a single device. So for me that made a whole lot of sense. Allow

[08:56] them to host those services and then I can literally just consume those from my home lab environment. And again maybe a little bit of a controversial one to not self-host. And I totally respect everyone else's ideas and opinions there. And again there are a lot of great and simple solutions like Goify, Notify, and others that you can self-host. I just for me chose to no longer self-host the notification systems on prim in my home lab and instead consume those out in the cloud.

[09:28] Now I saved probably the most controversial one for last and that is password managers. And I think this one will probably open a can of worms with all of the viewers. Many self-host password managers as part of their self-hosted services in the home lab.

[09:44] And I think self-hosted password managers are incredibly cool and you can do this successfully. There are some excellent projects out there, including projects like Vault Warden as well as self-hosted Bit Warden and many others.

[09:59] But for me, I sat down, I thought about exactly what the risk versus the return was for self-hosting a password manager. And the risk for me was just I felt a little bit too high. I had a super resilient backup strategy for my critical passwords. It was just not something I wanted to worry about or spend time on. For me, I also have a massive a number of accounts across all kinds of services, apps, platforms, and the idea of potentially losing access to all of that because of a catastrophic

[10:29] home lab failure or a cascading failure that affects synchronized data potentially before I realize it was just too much for me. It was just a risk I wasn't really wanting to take. I also like separating lab specific credentials from everything else. Lab passwords can live in the lab, but critical personal and business credentials for me live in the cloud with a cloud password manager provider. And you don't want to get in a chicken and egg scenario where you need your password manager to recover your

[11:03] lab or services or decrypt backup data. you need your lab up and running to get to that password manager. So, that possible catch22 was enough to convince me that this was a service left better managed as a SAS service. Now, I know for many the privacy concerns with trusting your passwords to a cloud entity is unnerving and I get it. At the end of the day, for me, this was something that I no longer wanted to self-host. And so, I currently don't self-host a password manager inside my

[11:35] home lab. Again, I totally respect you guys' opinion and I'm not knocking self-hosting password managers. Totally cool, totally fine service to do that, but it was just one of those services that I would rather leave to someone else and then spend more of my time self-hosting services that I really think are a lot cooler than password managers. Now, at the end of the day, stress and time are real metrics that I pay attention to. If a service takes away more time through troubleshooting

[12:04] and breakage than it really gives back in learning or real value for you personally, that is a pretty strong signal that it might not be a good fit for self-hosting in your particular environment. If a service makes you uneasy every time you leave town, that matters. If you dread updating it because you know it might break and cost you hours to recover, that also matters.

[12:27] I stopped self-hosting anything that caused more stress for me than the enjoyment or value that I got in return from the home lab. That line is different for everyone, but for me, it has become the most honest way that I can truly make a good decision about a service, whether it's worth self-hosting or potentially hosting in the cloud.

[12:48] That said, I'm still very serious about self-hosting. In fact, I'm running more self-hosted services now than ever before. I love self-hosting core infrastructure, storage, internal DNS, identity services, reverse proxies, logging, AI tooling, and DevOps platforms. These are areas where the learning, control, and flexibility still for me far outweigh the operational cost, and they're services I love to self-host, and you'll see many of these services that I feature in my posts and

[13:19] videos. Well, wrapping this up, self-hosting is not a one-sizefits-all solution for every single person. Just like Home Labs themselves, knowing when not to self-host something is just as important as knowing when to do it yourself. Giving up control to cloud or SAS in a few strategic areas, made my home lab feel more reliable, more enjoyable, and far less stressful. It also freed up time for me to focus on the parts of my home lab that actually excite me, like experimenting with new

[13:51] projects and technologies. So, long story short, your home lab should work for you, not the other way around. Hopefully, this list of things that I stop self-hosting gets you thinking about your own setup. And if you love to self-host all of the services that I've mentioned in this video, that is totally fine. But what I'm hoping to accomplish with this video is just to get all of us thinking about running our labs as efficiently as possible. Just because you can self-host something, it doesn't

[14:21] necessarily mean that it is truly a wise thing to do or actually worth it. Have you recently stopped self-hosting a service? And if you did, which one was it? Let me know in the comments. I really want to know what you guys maybe have recently stopped self-hosting and if you've decided to host those services in the cloud. Well, if you like the video, do give it a thumbs up. Please do subscribe to the channel. Keep on home labbing. Do stay safe out there and I will see you in the next video.
