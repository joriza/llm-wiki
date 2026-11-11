# Concurrencia vs Paralelismo explicado como debieron enseñártelo

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=7WkswDqDMhI)
- **Canal**: Torti Code
- **Publicado**: 2026-05-13
- **Recopilado**: 2026-11-11
- **Idioma**: en (subtítulos automáticos en (yt-dlp) (yt-dlp, auto), transcripción literal)
- **Duración**: 11:36

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] Are concurrency and parallelism the Are concurrency and parallelism the same thing? same thing? same thing? No. And if you confuse them, you'll write No. And if you confuse them, you'll write No. And if you confuse them, you'll write code that seems fast, but is actually slow.

[00:09] code that seems fast, but is actually slow. code that seems fast, but is actually slow. Code that appears simultaneous, but is actually Code that appears simultaneous, but is actually Code that appears simultaneous, but is actually one person doing everything. Or worse, one person doing everything. Or worse, one person doing everything. Or worse, code that you think is safe, but code that you think is safe, but code that you think is safe, but has invisible bugs that only appear

[00:18] has invisible bugs that only appear has invisible bugs that only appear when there are many users. when there are many users. when there are many users. Hi, I'm Torti and this is TortiCode. Hi, I'm Torti and this is TortiCode.

[00:24] Hi, I'm Torti and this is TortiCode. In 10 minutes you will understand what In 10 minutes you will understand what In 10 minutes you will understand what concurrency with one waiter is, what concurrency with one waiter is, what concurrency with one waiter is, what parallelism with multiple waiters is, parallelism with multiple waiters is, parallelism with multiple waiters is, when each one is convenient for you, and the when each one is convenient for you, and the when each one is convenient for you, and the most common mistake that makes your code

[00:35] most common mistake that makes your code most common mistake that makes your code break in production. Let's get break in production. Let's get break in production. Let's get started. Imagine a restaurant. started. Imagine a restaurant.

[00:40] started. Imagine a restaurant. Case one, Case one, Case one, one waiter, one waiter, one waiter, one person, one person, one person, five tables to serve. five tables to serve. five tables to serve. What are you doing? He What are you doing? He What are you doing? He goes to table one, takes the order, goes to table one, takes the order, goes to table one, takes the order, takes it to the kitchen, takes it to the kitchen, takes it to the kitchen, while the kitchen prepares, he goes to table

[00:53] while the kitchen prepares, he goes to table while the kitchen prepares, he goes to table two, takes the order, takes it, while two, takes the order, takes it, while two, takes the order, takes it, while the kitchen prepares both, he attends to the kitchen prepares both, he attends to the kitchen prepares both, he attends to table three and so on.

[01:01] table three and so on. table three and so on. One person, five tables, none One person, five tables, none One person, five tables, none waiting too long. waiting too long. waiting too long. But is he serving five tables at the But is he serving five tables at the But is he serving five tables at the same time? No.

[01:10] same time? No. same time? No. She's attending to one at a time, switching She's attending to one at a time, switching She's attending to one at a time, switching quickly between them. quickly between them. quickly between them. That's concurrency.

[01:17] That's concurrency. That's concurrency. A single person handling several A single person handling several A single person handling several tasks, alternating between them, giving the tasks, alternating between them, giving the tasks, alternating between them, giving the feeling of simultaneity.

[01:24] feeling of simultaneity. feeling of simultaneity. Case two, five waiters, each with Case two, five waiters, each with Case two, five waiters, each with a table. a table. a table. Each waiter attends to their table, Each waiter attends to their table, Each waiter attends to their table, actually, physically, at the same time.

[01:34] actually, physically, at the same time. actually, physically, at the same time. Five orders arriving at the kitchen at the Five orders arriving at the kitchen at the Five orders arriving at the kitchen at the same time. Five dishes coming out at the same time. Five dishes coming out at the same time. Five dishes coming out at the same time.

[01:39] same time. same time. That's parallelism. Several people, That's parallelism. Several people, That's parallelism. Several people, several tasks, really simultaneous. several tasks, really simultaneous. several tasks, really simultaneous. Concurrency is handling many things at Concurrency is handling many things at Concurrency is handling many things at once.

[01:49] once. once. Parallelism is doing many things at the same Parallelism is doing many things at the same Parallelism is doing many things at the same time. time. time. Repeat that phrase in your head. Repeat that phrase in your head.

[01:54] Repeat that phrase in your head. It is the cleanest definition that exists. It is the cleanest definition that exists. It is the cleanest definition that exists. Your computer has CPUs. Your computer has CPUs. Your computer has CPUs. Each CPU is like a cook.

[02:02] Each CPU is like a cook. Each CPU is like a cook. If you have a core, you can't have If you have a core, you can't have If you have a core, you can't have true parallelism, you can only have true parallelism, you can only have true parallelism, you can only have concurrency.

[02:07] concurrency. concurrency. If you have eight cores, you can run eight If you have eight cores, you can run eight If you have eight cores, you can run eight tasks truly in parallel. tasks truly in parallel. tasks truly in parallel. But in programming, you as a developer can But in programming, you as a developer can But in programming, you as a developer can design your code in two ways.

[02:17] design your code in two ways. design your code in two ways. Concurrent. Your program is Concurrent. Your program is Concurrent. Your program is structured to handle multiple tasks structured to handle multiple tasks structured to handle multiple tasks by alternating between them.

[02:22] by alternating between them. by alternating between them. Async, await, event loop, callbacks. One Async, await, event loop, callbacks. One Async, await, event loop, callbacks. One piece of code, multiple tasks. piece of code, multiple tasks.

[02:30] piece of code, multiple tasks. Parallel. Your program launches multiple Parallel. Your program launches multiple Parallel. Your program launches multiple processes or threads that run processes or threads that run processes or threads that run simultaneously on different cores.

[02:36] simultaneously on different cores. simultaneously on different cores. Worker threads, multithreading and without. Worker threads, multithreading and without. Worker threads, multithreading and without. And here comes the key question.

[02:41] And here comes the key question. And here comes the key question. When is concurrency and When is concurrency and When is concurrency and when is parallelism more suitable? It when is parallelism more suitable? It when is parallelism more suitable? It depends on the type of work. And this depends on the type of work. And this depends on the type of work. And this changes everything. Before looking at code, changes everything. Before looking at code, changes everything. Before looking at code, you need to understand a word that will

[02:51] you need to understand a word that will you need to understand a word that will appear throughout the video. appear throughout the video. appear throughout the video. Bound. Bound. Bound. In English it means limited by.

[02:58] In English it means limited by. In English it means limited by. And every program that runs is And every program that runs is And every program that runs is limited by one of these two things. limited by one of these two things.

[03:02] limited by one of these two things. IO bound. IO bound. IO bound. Your code is limited by the waiting period. Your code is limited by the waiting period. Your code is limited by the waiting period. IO stands for input and output.

[03:09] IO stands for input and output. IO stands for input and output. Everything your program asks of the Everything your program asks of the Everything your program asks of the outside world and has to wait for outside world and has to wait for outside world and has to wait for a response from a server, for the a response from a server, for the a response from a server, for the disk to return a file, for the disk to return a file, for the disk to return a file, for the database to finish the query, for the

[03:19] database to finish the query, for the database to finish the query, for the user to click. user to click. user to click. While your code waits for those things, the While your code waits for those things, the While your code waits for those things, the CPU is almost doing nothing. She's CPU is almost doing nothing. She's CPU is almost doing nothing. She's bored.

[03:28] bored. bored. CPU bound. Your code is limited by CPU bound. Your code is limited by CPU bound. Your code is limited by the job. the job. the job. The CPU is at 100% performing calculations. The CPU is at 100% performing calculations.

[03:35] The CPU is at 100% performing calculations. Hashing a large file, resizing Hashing a large file, resizing Hashing a large file, resizing an image, compressing a video, training an image, compressing a video, training an image, compressing a video, training a machine learning model. There's a machine learning model. There's a machine learning model. There's no waiting here. The CPU is sweating.

[03:45] no waiting here. The CPU is sweating. no waiting here. The CPU is sweating. And this is the rule. And this is the rule. And this is the rule. If your task is IO bound, If your task is IO bound, If your task is IO bound, concurrency is a good option. There's concurrency is a good option. There's concurrency is a good option. There's no point in having eight cooks if they no point in having eight cooks if they no point in having eight cooks if they 're all waiting for the

[03:55] 're all waiting for the 're all waiting for the supplier's delivery. supplier's delivery. supplier's delivery. A single cook who takes advantage of every A single cook who takes advantage of every A single cook who takes advantage of every wait to start another task is wait to start another task is wait to start another task is enough.

[04:02] enough. enough. If your task is CPU bound, you need If your task is CPU bound, you need If your task is CPU bound, you need true parallelism. true parallelism. true parallelism. If the CPU is sweating at 100% on one If the CPU is sweating at 100% on one If the CPU is sweating at 100% on one task, you can't switch to another.

[04:12] task, you can't switch to another. task, you can't switch to another. You need another physical brain. You need You need another physical brain. You need You need another physical brain. You need another core working.

[04:17] another core working. another core working. Practical examples. Practical examples. Practical examples. Make 10 HTTP requests to Make 10 HTTP requests to Make 10 HTTP requests to different APIs. IO bound, concurrency. different APIs. IO bound, concurrency.

[04:25] different APIs. IO bound, concurrency. Process 10 large images. CPU bound, Process 10 large images. CPU bound, Process 10 large images. CPU bound, parallelism. parallelism. parallelism. Read 100 small files from the disk.

[04:32] Read 100 small files from the disk. Read 100 small files from the disk. IO bound, concurrency. IO bound, concurrency. IO bound, concurrency. Calculate the hash of 100 Calculate the hash of 100 Calculate the hash of 100 large files. CPU bound, parallelism.

[04:41] large files. CPU bound, parallelism. large files. CPU bound, parallelism. If you confuse this and add If you confuse this and add If you confuse this and add concurrency to a CPU-bound task, your concurrency to a CPU-bound task, your concurrency to a CPU-bound task, your code won't speed up. It still takes the code won't speed up. It still takes the code won't speed up. It still takes the same amount of time. The CPU remains the same amount of time. The CPU remains the

[04:49] same amount of time. The CPU remains the same. same. same. Conversely, if you add parallelism to Conversely, if you add parallelism to Conversely, if you add parallelism to an I/O bound task, you waste extra memory an I/O bound task, you waste extra memory an I/O bound task, you waste extra memory without gaining anything.

[04:58] without gaining anything. without gaining anything. All the workers will be equally All the workers will be equally All the workers will be equally bored waiting for the network. Let's put this bored waiting for the network. Let's put this bored waiting for the network. Let's put this into code.

[05:04] into code. into code. The example. The example. The example. Download 10 images from different URLs. Download 10 images from different URLs. Download 10 images from different URLs. Each download takes one second waiting Each download takes one second waiting Each download takes one second waiting for the server. That's IO bound.

[05:14] for the server. That's IO bound. for the server. That's IO bound. The slow way is the sequential one. A loop The slow way is the sequential one. A loop The slow way is the sequential one. A loop that downloads one, waits, moves on to the that downloads one, waits, moves on to the that downloads one, waits, moves on to the next. Total, 10 seconds.

[05:22] next. Total, 10 seconds. next. Total, 10 seconds. The CPU is bored nine times out of ten. The CPU is bored nine times out of ten. The CPU is bored nine times out of ten. The fast way is concurrent. You The fast way is concurrent. You The fast way is concurrent. You throw them all at the same time and wait for them to throw them all at the same time and wait for them to throw them all at the same time and wait for them to finish together. In total, finish together. In total,

[05:33] finish together. In total, approximately one second. You approximately one second. You approximately one second. You do this with promise.all in do this with promise.all in do this with promise.all in JavaScript, asyncio.gather JavaScript, asyncio.gather JavaScript, asyncio.gather in Python, completable future in Java, and in Python, completable future in Java, and in Python, completable future in Java, and go routines with wait group in go.

[05:48] go routines with wait group in go. go routines with wait group in go. One line per language. Go became One line per language. Go became One line per language. Go became famous for Go Routines, famous for Go Routines, famous for Go Routines, lightweight runtime threads, ideal for lightweight runtime threads, ideal for lightweight runtime threads, ideal for servers that handle thousands of servers that handle thousands of servers that handle thousands of connections.

[05:58] connections. connections. Java has real system threads and Java has real system threads and Java has real system threads and since Java 21 also Virtual Threads since Java 21 also Virtual Threads since Java 21 also Virtual Threads similar to Go Routines.

[06:04] similar to Go Routines. similar to Go Routines. Python traditionally loads the GIL from the Python traditionally loads the GIL from the Python traditionally loads the GIL from the standard build, which is released while standard build, which is released while standard build, which is released while waiting for IO. Since Python 3.13, there's a waiting for IO. Since Python 3.13, there's a waiting for IO. Since Python 3.13, there's a build without GIL, but if you want videos

[06:14] build without GIL, but if you want videos build without GIL, but if you want videos about that, leave it in the comments. about that, leave it in the comments. about that, leave it in the comments. And Node runs your JavaScript in a thread And Node runs your JavaScript in a thread And Node runs your JavaScript in a thread of the event loop, but below libuv has of the event loop, but below libuv has of the event loop, but below libuv has a pool and since Node 12 there are a pool and since Node 12 there are

[06:24] a pool and since Node 12 there are worker threads for JS in parallel. worker threads for JS in parallel. worker threads for JS in parallel. Since the task is IO bound, you don't need any Since the task is IO bound, you don't need any Since the task is IO bound, you don't need any more cores. You need to stop standing around more cores. You need to stop standing around more cores. You need to stop standing around waiting. Now a CPU bound case. The waiting. Now a CPU bound case. The

[06:36] waiting. Now a CPU bound case. The example. example. example. Calculate the SHA-256 hash Calculate the SHA-256 hash Calculate the SHA-256 hash of 10 large files. of 10 large files. of 10 large files. The CPU is at 100% calculating.

[06:48] The CPU is at 100% calculating. The CPU is at 100% calculating. This is where the trap is biggest. This is where the trap is biggest. This is where the trap is biggest. Many people think that the tools we Many people think that the tools we Many people think that the tools we saw a while ago speed up saw a while ago speed up saw a while ago speed up anything.

[06:55] anything. anything. For CPU bound, it depends on the language. For CPU bound, it depends on the language. For CPU bound, it depends on the language. In Node and in Python with GIL, In Node and in Python with GIL, In Node and in Python with GIL, promises and async IO.gather do not speed up promises and async IO.gather do not speed up promises and async IO.gather do not speed up heavy computation. You jump to worker threads heavy computation. You jump to worker threads heavy computation. You jump to worker threads or multiprocessing.

[07:09] or multiprocessing. or multiprocessing. In Java, an executor service distributes In Java, an executor service distributes In Java, an executor service distributes tasks across cores. tasks across cores. tasks across cores. In Go, the same Go Routines work In Go, the same Go Routines work In Go, the same Go Routines work automatically.

[07:17] automatically. automatically. The solution is always to jump to something that The solution is always to jump to something that The solution is always to jump to something that the operating system can assign to the operating system can assign to the operating system can assign to another core.

[07:22] another core. another core. If you have eight cores, eight files at the If you have eight cores, eight files at the If you have eight cores, eight files at the same time, really. That's same time, really. That's same time, really. That's real parallelism.

[07:29] real parallelism. real parallelism. IO bound. IO bound. IO bound. Concurrency tools are sufficient. Concurrency tools are sufficient. Concurrency tools are sufficient. CPU bound. In Node and Python, you jump to CPU bound. In Node and Python, you jump to CPU bound. In Node and Python, you jump to worker threads or multiprocessing.

[07:39] worker threads or multiprocessing. worker threads or multiprocessing. In Java and Go, parallelism is already a reality. In Java and Go, parallelism is already a reality. In Java and Go, parallelism is already a reality. And now comes the most subtle bug in And now comes the most subtle bug in And now comes the most subtle bug in modern programming: modern programming: modern programming: race conditions.

[07:48] race conditions. race conditions. They occur when two concurrent or They occur when two concurrent or They occur when two concurrent or parallel tasks attempt to modify the same parallel tasks attempt to modify the same parallel tasks attempt to modify the same data at the same time.

[07:57] data at the same time. data at the same time. For example, For example, For example, two waiters grabbing the last plate two waiters grabbing the last plate two waiters grabbing the last plate from the buffet at exactly the same time. There's from the buffet at exactly the same time. There's from the buffet at exactly the same time. There's only one plate, only one plate, only one plate, someone's going to miss out.

[08:07] someone's going to miss out. someone's going to miss out. But worse, if no one is checking But worse, if no one is checking But worse, if no one is checking properly, the two of them think they got it and properly, the two of them think they got it and properly, the two of them think they got it and promised it to different clients.

[08:14] promised it to different clients. promised it to different clients. You have a stock variable that starts at You have a stock variable that starts at You have a stock variable that starts at one, there is only one product left.

[08:18] one, there is only one product left. one, there is only one product left. A purchase function that receives a A purchase function that receives a A purchase function that receives a user checks if stock is greater than user checks if stock is greater than user checks if stock is greater than zero, calls to process payment which takes zero, calls to process payment which takes zero, calls to process payment which takes 500 milliseconds, subtracts one from the stock 500 milliseconds, subtracts one from the stock

[08:29] 500 milliseconds, subtracts one from the stock and returns purchased. and returns purchased. and returns purchased. If there was no stock, return it without stock. If there was no stock, return it without stock. If there was no stock, return it without stock. Now imagine two users at the same Now imagine two users at the same Now imagine two users at the same time, Ana and Luis, calling to buy time, Ana and Luis, calling to buy time, Ana and Luis, calling to buy concurrently.

[08:41] concurrently. concurrently. Both calls read stock equal to one, Both calls read stock equal to one, Both calls read stock equal to one, both pass the check, both process both pass the check, both process both pass the check, both process payment, both subtract.

[08:48] payment, both subtract. payment, both subtract. Result: two purchases sold with a Result: two purchases sold with a Result: two purchases sold with a single product. single product. single product. The bug is identical in JavaScript, The bug is identical in JavaScript, The bug is identical in JavaScript, Python, Java, and Go for the same reason.

[08:58] Python, Java, and Go for the same reason. Python, Java, and Go for the same reason. In Java and Go it is more dangerous because their In Java and Go it is more dangerous because their In Java and Go it is more dangerous because their threads or go routines can be threads or go routines can be threads or go routines can be reading and writing stock in the same reading and writing stock in the same reading and writing stock in the same nanosecond.

[09:07] nanosecond. nanosecond. In JavaScript and Python, the bug appears In JavaScript and Python, the bug appears In JavaScript and Python, the bug appears due to the await pause, not due to due to the await pause, not due to due to the await pause, not due to actual simultaneity, but the effect is the actual simultaneity, but the effect is the actual simultaneity, but the effect is the same.

[09:15] same. same. This is fixed with locks, atomic This is fixed with locks, atomic This is fixed with locks, atomic operations, or database transactions operations, or database transactions operations, or database transactions .

[09:21] . . But the problem is, if you don't know it But the problem is, if you don't know it But the problem is, if you don't know it exists, you don't know that your code has it. exists, you don't know that your code has it. exists, you don't know that your code has it. This isn't just about your app; it lives in This isn't just about your app; it lives in This isn't just about your app; it lives in things you use every day.

[09:31] things you use every day. things you use every day. Your operating system runs hundreds of Your operating system runs hundreds of Your operating system runs hundreds of processes on eight cores; the kernel processes on eight cores; the kernel processes on eight cores; the kernel distributes and alternates them.

[09:38] distributes and alternates them. distributes and alternates them. He's the restaurant's waiter, but at a He's the restaurant's waiter, but at a He's the restaurant's waiter, but at a machine level. Your browser opens a machine level. Your browser opens a machine level. Your browser opens a separate process for each tab. That's why separate process for each tab. That's why separate process for each tab. That's why if one hangs up, the others keep going.

[09:48] if one hangs up, the others keep going. if one hangs up, the others keep going. Postgres starts a process for each Postgres starts a process for each Postgres starts a process for each connection to the database. One bad connection to the database. One bad connection to the database. One bad query doesn't invalidate the others. Whenever query doesn't invalidate the others. Whenever query doesn't invalidate the others. Whenever something happens simultaneously in something happens simultaneously in

[09:57] something happens simultaneously in real systems, there are scheduling processes, threads, or real systems, there are scheduling processes, threads, or real systems, there are scheduling processes, threads, or processes underneath. If you ask the AI ​​"do this processes underneath. If you ask the AI ​​"do this processes underneath. If you ask the AI ​​"do this quickly", it throws out Promise.all or the quickly", it throws out Promise.all or the quickly", it throws out Promise.all or the equivalent. And if the task is CPU bound

[10:08] equivalent. And if the task is CPU bound equivalent. And if the task is CPU bound in Node or Python, that doesn't speed things up at all. in Node or Python, that doesn't speed things up at all. in Node or Python, that doesn't speed things up at all. The correct thing to do is to tell them what kind of task it is The correct thing to do is to tell them what kind of task it is The correct thing to do is to tell them what kind of task it is and in what language. You tell it, "this is

[10:18] and in what language. You tell it, "this is and in what language. You tell it, "this is IO bound in JavaScript" and the AI ​​uses IO bound in JavaScript" and the AI ​​uses IO bound in JavaScript" and the AI ​​uses Promise.all. You tell it, "this is CPU Promise.all. You tell it, "this is CPU Promise.all. You tell it, "this is CPU bound in Python" and the AI ​​uses bound in Python" and the AI ​​uses bound in Python" and the AI ​​uses multiprocessing.

[10:28] multiprocessing. multiprocessing. And the most critical one, pay attention, "this code And the most critical one, pay attention, "this code And the most critical one, pay attention, "this code will have concurrency, it identifies race will have concurrency, it identifies race will have concurrency, it identifies race conditions and adds locks or conditions and adds locks or conditions and adds locks or transactions where needed." Without transactions where needed." Without

[10:38] transactions where needed." Without that question, the AI ​​writes that question, the AI ​​writes that question, the AI ​​writes optimistic code that crashes when optimistic code that crashes when optimistic code that crashes when real users enter. You are the pilot.

[10:44] real users enter. You are the pilot. real users enter. You are the pilot. Before asking anything of the AI, practice Before asking anything of the AI, practice Before asking anything of the AI, practice race conditions manually.

[10:49] race conditions manually. race conditions manually. Break the stock once, add a Break the stock once, add a Break the stock once, add a lock, debug. lock, debug. lock, debug. Once you understand what's happening, you ask Once you understand what's happening, you ask Once you understand what's happening, you ask the AI ​​and check what it tells you. You're the AI ​​and check what it tells you. You're the AI ​​and check what it tells you. You're the pilot, the AI ​​is the co-pilot. If you don't

[11:00] the pilot, the AI ​​is the co-pilot. If you don't the pilot, the AI ​​is the co-pilot. If you don't know where you're going, it takes you to the know where you're going, it takes you to the know where you're going, it takes you to the wrong place at full speed.

[11:03] wrong place at full speed. wrong place at full speed. To recap. Concurrence is one To recap. Concurrence is one To recap. Concurrence is one waiter, several tables alternating. waiter, several tables alternating. waiter, several tables alternating. Parallelism means several waiters, several Parallelism means several waiters, several Parallelism means several waiters, several tables, simultaneous.

[11:14] tables, simultaneous. tables, simultaneous. IO bound, concurrency. CPU bound, IO bound, concurrency. CPU bound, IO bound, concurrency. CPU bound, parallelism. parallelism. parallelism. Race conditions, the invisible bug that Race conditions, the invisible bug that Race conditions, the invisible bug that appears under load.

[11:23] appears under load. appears under load. If this helped you, subscribe, because there's a new video coming out If this helped you, subscribe, because there's a new video coming out If this helped you, subscribe, because there's a new video coming out about the JavaScript event loop about the JavaScript event loop about the JavaScript event loop that directly relates to this.

[11:30] that directly relates to this. that directly relates to this. Send a video to the colleague who tells you, Send a video to the colleague who tells you, Send a video to the colleague who tells you, "I'm going to sync it and it'll be "I'm going to sync it and it'll be "I'm going to sync it and it'll be faster."

[11:35] faster." faster." Goodbye torticoders.
