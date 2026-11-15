# How to install Pi-hole on Casa OS

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=uOvB0CIhb5k)
- **Canal**: BigBearTechWorld
- **Publicado**: 2023-09-22
- **Recopilado**: 2026-11-15
- **Idioma**: en (subtítulos automáticos en (auto), transcripción literal)
- **Duración**: 11:37

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] hello my name is Christopher today I'm going to show you how to install pie hole on Casa OS this video was suggested by a viewer so so thank you for that and if you have any video sessions let me know so a little bit about this series I'm going over homelands or on state solid days getting things set up everything like that so if you interested in that subscribe comment like and support the channel and let's get started so I'm on the big rear video assets there will be a link down in the

[00:35] description to get to this so I'm going to go into how to install pie hole on Casa OS right here and we're gonna need the Clear Port 53 so I'm gonna go into Big Bear scripts right here and then how to use this is you just run the script but you can also go in here and you can see what it's going to be doing so it's going to check for privileges it's gonna a display open files so it's going to display uh if a what's open on Port 53 and what's listening on it and then it's gonna ask

[01:11] the user for confirmation if they really want to proceed so yeah uh y or n so Y is for yes and n is for no and then if you say why to this it's going to proceed and it's going to disable and stop the system D resolved a DOT service and then at the end it's going to check if Port 53 is clear so I'm going to go backwards I'm going to copy this script and then I'm going to go go over to my server and I'm going to run this and get Port 53 uh not listening on anything so now on my uh installation of Casa OS

[01:53] I'm going to paste this in the terminal so I'm going to go into my my um my lxc then I'm going to go to console and then I'm going to paste it in here and then I'm going to run it by return or enter and then it's going to say what's listing on Port 53 right here so something is in that system D resolve right here so this is just an internal DNS server uh that uh Ubuntu or Debian comes with so I'm going to go ahead and press y and then enter or return okay now it's going to remove this it's gonna stop it

[02:35] disable it and then it's going to say Port 53 is clear so now Port 53 is clear so we can start uh installing pile on cos OS so now we are going to start on the big bear video assets right here there will be a link down in the description to get to it and then I'm going to go to um to I'd install pile on cos OS right here and then I'm gonna go into document pose and then I'm going to start with Docker compose version three and then I'm going to Define some services and then the service is called

[03:13] pie hole the container name is called powhole and then I'm going to set an image so if this doesn't have a URL in the beginning of this this means it's coming off Docker hub and then I'm gonna set a version of 2023 5 2. so you might have a newer version so you can set it right here you can find it on Docker hub the other versions and then I'm all exposing ports so I'm going to expose 53 and 53 on TCP and UDP and then I'm going to expose 7300 on the host side so the left of these is the

[03:53] host side the right is the container side you cannot change the right side so I'm gonna set some environment variables so I'm going to set the time zone you can set your time zone here and then I'm going to set the web password to actually sign into the web UI so I'm going to set it as password but I would recommend you changing this and then I'm going to set a uh volumes so data app data pie hole data and then Pi hole and then data app data pie hole data and DNS mask so the the left side of these is the

[04:31] host the right side is the container you cannot change the container side so the container is ETC pile and then that's put in there and then eetc a DNS mask so these all sync back and forth and makes it to where uh you can always see the data on the host side so now I'm going to set a restart policy so I'm going to set unless stopped so that means if you stop it for any reason it will not try to restart but if it fails for any reason or any other reason then it will try to restart

[05:04] I'm gonna set some DNS servers for the resolution on the container side and then I'm gonna say localhost for the internal resolution and then 1.1.1.1 on the cloudflare DNS for the external resolution [Music] and then now I'm going to copy the raw file and I'm going to go over to my casa OS and try to get this installed so now that we got Port 53 cleared everything good so now we can go in the App Store uh we can start on cost OS then go to the app store then go to custom install up here and then go to

[05:42] import and then now we're going to paste in our Docker compose that I I explained in the last then now submit okay now I'm going to give it a name so I'm going to give it pie hole and then I'm going to give it an icon new rail so I'm going to go over to Big Bear video assets I'm going to go backwards then I'm gonna go to here and copy it then I'm going to go over here cos OS again I'm going to paste it in and then now you got icon URL so I'm gonna set the webview airport to 7300

[06:21] and then that's looks good so I'm gonna install now installation completed so it looks like it's installing successfully you can continue your background and wait for here what this is doing is it downloaded it off Docker hub and um and and started up with Docker and pose in the background and then now it's looking for a a latest image a newer image so I'm gonna go over the container options so I'm gonna go up these vertical dots right here and you can open the container uh you can uh put put custom tips in say

[07:27] like if you put test in and you saved it and then it's going to reload the container so now you can go back into tips and you can see it saved you can go into settings you can see terminal logs great for debugging and then you can export the docker compose and then if you change things in here you just press the save button right here so I'm gonna go out of this so you can check for updates for the current tag it's on so um and you can uninstall restart power off and on so now I'm going to show you where the

[08:08] files live so in cost OS it's really easy to do files so you can go in the files app right here then you go to app data and then pie hole and then the data and then you can see the DNS Mast uh a director right here and then now you can go backwards and you can see the pie hole directory you can see the databases everything like that so that's how to see the data in cos OS so now I'm going to set up the UI so I'm going to go over here and I'm going to say open and you can see it it's 403 Forbidden

[08:46] error so I'm gonna go backwards and I'm gonna go here to settings and then I'm going to change this to admin I'm gonna save it then I'm going open okay now you can see that it's going to the administration panel now so it's going to the the IP and then 7300 and then add an admin on it so now I'm going to put the web password that we have in our environment variables some and mine's called password so I'm going to log in you can see that it's working so the UI is actually up now so so you can

[09:27] see that there's acute query logs and you can Blacklist you can see the long-term data on Graphics carry logs top list you can go in here to add list and you can go and find list uh that are normally in GitHub and you can add more to the block list to The Blacklist and then um you can disable the blocking for a certain amount of time you can go to the the local DNS you can see DNS records and then cname so you can have these in there for the uh to have your own custom DNS and then you can see Diagnostics you can

[10:11] see the settings so you can go over here and you can turn off Google and you can turn on cloudflare so it's turning on for ipv4 so you can scroll down and um you can see this the save button right here okay now the DNS uh has been changed so it now it's resolving with quite nine on the upstream and cloudflare you can also put in custom DNS resolvers too you can go into dhp and have your own DSP server running you can change the theme the interface settings the per browser settings

[10:57] you can see an API settings you can see privacy settings and make sure you can back it up restore it so that's how to get pie hole running on Casa OS so I just showed you step by step on how to get pie hole running on cos OS so if you enjoyed this video subscribe comment like and support the channel and if you have any video sessions or need support you can go to the Big Bear community and join our Discord and there's a link in the YouTube description so stay tuned for more
