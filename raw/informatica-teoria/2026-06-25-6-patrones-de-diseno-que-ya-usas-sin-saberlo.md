# 6 Patrones de Diseño que YA USAS sin saberlo 🧩

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=YVZw-58IeaA)
- **Canal**: Torti Code
- **Publicado**: 2026-06-24
- **Recopilado**: 2026-11-11
- **Idioma**: en (subtítulos automáticos en (yt-dlp) (yt-dlp, auto), transcripción literal)
- **Duración**: 23:33

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] In the previous video you saw the six In the previous video you saw the six most used design patterns. most used design patterns. most used design patterns. Singleton, observer, factory, strategy, Singleton, observer, factory, strategy, Singleton, observer, factory, strategy, decorator, builder.

[00:11] decorator, builder. decorator, builder. If you've made it this far, I assume you already If you've made it this far, I assume you already If you've made it this far, I assume you already understand them. Today we'll cover the other six that were understand them. Today we'll cover the other six that were understand them. Today we'll cover the other six that were missing, the ones that appear in the code missing, the ones that appear in the code missing, the ones that appear in the code of the libraries you use every

[00:19] of the libraries you use every of the libraries you use every day, even if you don't notice it. Once day, even if you don't notice it. Once day, even if you don't notice it. Once you understand these six, you'll open the you understand these six, you'll open the you understand these six, you'll open the Stripe SDK, the code of an ORM like Stripe SDK, the code of an ORM like Stripe SDK, the code of an ORM like Hibernate, or a framework like Express and Hibernate, or a framework like Express and

[00:29] Hibernate, or a framework like Express and you'll say, "Ah, this is an adapter, you'll say, "Ah, this is an adapter, you'll say, "Ah, this is an adapter, this is a proxy, this is a facade." And this is a proxy, this is a facade." And this is a proxy, this is a facade." And you'll read code from senior developers without feeling like they you'll read code from senior developers without feeling like they you'll read code from senior developers without feeling like they 're writing in another language.

[00:40] 're writing in another language. 're writing in another language. Hi, I'm Torti and this is Torti Code. Hi, I'm Torti and this is Torti Code. Hi, I'm Torti and this is Torti Code. In the next 22 minutes, command, In the next 22 minutes, command, In the next 22 minutes, command, adapter, repository, proxy, facade and adapter, repository, proxy, facade and adapter, repository, proxy, facade and iterator. Visual analogy for each one, iterator. Visual analogy for each one, iterator. Visual analogy for each one, minimal code in four languages ​​and

[00:56] minimal code in four languages ​​and minimal code in four languages ​​and where each pattern lives in where each pattern lives in where each pattern lives in real systems. Let's get started. Command. real systems. Let's get started. Command.

[01:01] real systems. Let's get started. Command. The order on paper. The order on paper. The order on paper. You are in a restaurant. You You are in a restaurant. You You are in a restaurant. You tell the waiter, "Bring me a tell the waiter, "Bring me a tell the waiter, "Bring me a margarita pizza without onions."

[01:10] margarita pizza without onions." margarita pizza without onions." The waiter doesn't cook, he takes out his notebook and The waiter doesn't cook, he takes out his notebook and The waiter doesn't cook, he takes out his notebook and writes it down on a piece of paper.

[01:14] writes it down on a piece of paper. writes it down on a piece of paper. That paper goes to the kitchen. That paper goes to the kitchen. That paper goes to the kitchen. The cook executes it hours later if he The cook executes it hours later if he The cook executes it hours later if he wants, passes it to the assistant, stores it wants, passes it to the assistant, stores it wants, passes it to the assistant, stores it in a pile, you cancel it if you in a pile, you cancel it if you

[01:23] in a pile, you cancel it if you change your mind. change your mind. change your mind. Look at what happened. Look at what happened. Look at what happened. The act of making the pizza ceased to be The act of making the pizza ceased to be The act of making the pizza ceased to be something that happens in the instant; it something that happens in the instant; it something that happens in the instant; it became a thing, a piece of paper, an became a thing, a piece of paper, an became a thing, a piece of paper, an object that exists on its own, and since it is

[01:37] object that exists on its own, and since it is object that exists on its own, and since it is now an object, you can do with it now an object, you can do with it now an object, you can do with it what you would do with any object: what you would do with any object: what you would do with any object: pass it from hand to hand, stack it, pass it from hand to hand, stack it, pass it from hand to hand, stack it, put it in a drawer for tomorrow, put it in a drawer for tomorrow, put it in a drawer for tomorrow, tear it up to cancel.

[01:48] tear it up to cancel. tear it up to cancel. That's command. That's command. That's command. Instead of directly calling a Instead of directly calling a Instead of directly calling a function, you encapsulate the action within function, you encapsulate the action within function, you encapsulate the action within an object. That's the whole play.

[01:57] an object. That's the whole play. an object. That's the whole play. A function call executes and A function call executes and A function call executes and disappears; you cannot save or disappears; you cannot save or disappears; you cannot save or undo it. But an object that represents undo it. But an object that represents undo it. But an object that represents the action can be saved, enqueued, the action can be saved, enqueued, the action can be saved, enqueued, repeated a thousand times, logged, and,

[02:09] repeated a thousand times, logged, and, repeated a thousand times, logged, and, above all, undone. And here's above all, undone. And here's above all, undone. And here's why. why. why. You separate the one who requests the action from the one who You separate the one who requests the action from the one who You separate the one who requests the action from the one who performs it. The person requesting it simply assembles the performs it. The person requesting it simply assembles the

[02:18] performs it. The person requesting it simply assembles the object and sends it; they don't know when or object and sends it; they don't know when or object and sends it; they don't know when or how it will be executed. That's decided by how it will be executed. That's decided by how it will be executed. That's decided by someone else later, somewhere else.

[02:25] someone else later, somewhere else. someone else later, somewhere else. Let's look at a specific example. Imagine a Let's look at a specific example. Imagine a Let's look at a specific example. Imagine a remote control that turns on a light.

[02:30] remote control that turns on a light. remote control that turns on a light. Every action, like turning on the light, becomes Every action, like turning on the light, becomes Every action, like turning on the light, becomes a mini-lesson with two a mini-lesson with two a mini-lesson with two methods. One who executes, turns on the light, methods. One who executes, turns on the light, methods. One who executes, turns on the light, and another who undoes, turns it off. The key

[02:41] and another who undoes, turns it off. The key and another who undoes, turns it off. The key is that second method. The object knows is that second method. The object knows is that second method. The object knows how to reverse itself. Now the how to reverse itself. Now the how to reverse itself. Now the remote control receives those objects.

[02:49] remote control receives those objects. remote control receives those objects. When you press a button, it executes the When you press a button, it executes the When you press a button, it executes the command and pushes it onto a stack, a command and pushes it onto a stack, a command and pushes it onto a stack, a history. And undo? He history. And undo? He history. And undo? He takes the last one out of the pile and asks it to be takes the last one out of the pile and asks it to be

[02:57] takes the last one out of the pile and asks it to be reversed. Pressing undo again reversed. Pressing undo again reversed. Pressing undo again removes the previous one. That's the Z control of removes the previous one. That's the Z control of removes the previous one. That's the Z control of any editor, for free, because every any editor, for free, because every any editor, for free, because every action was saved as an object.

[03:08] action was saved as an object. action was saved as an object. If instead of a direct call If instead of a direct call If instead of a direct call you had typed light.turnon, you had typed light.turnon, you had typed light.turnon, you would have nothing to save and nothing to you would have nothing to save and nothing to you would have nothing to save and nothing to undo. The call was made and then undo. The call was made and then undo. The call was made and then vanished. The object no.

[03:20] vanished. The object no. vanished. The object no. The object remains and knows how to reverse itself. The object remains and knows how to reverse itself. The object remains and knows how to reverse itself. Where does this live in real-world systems? In Where does this live in real-world systems? In Where does this live in real-world systems? In any editor with control Z, such as VS any editor with control Z, such as VS any editor with control Z, such as VS Code or IntelliJ. Everything you do is

[03:31] Code or IntelliJ. Everything you do is Code or IntelliJ. Everything you do is a stacked command, and undoing is a stacked command, and undoing is a stacked command, and undoing is unstacking and reverting. He unstacking and reverting. He unstacking and reverting. He also lives in the homework queues.

[03:38] also lives in the homework queues. also lives in the homework queues. BullMQ in Node, Celery in Python, BullMQ in Node, Celery in Python, BullMQ in Node, Celery in Python, Sidekiq in Ruby. When you send a Sidekiq in Ruby. When you send a Sidekiq in Ruby. When you send a job to the queue, you're not calling job to the queue, you're not calling job to the queue, you're not calling a function; you're creating an object with a function; you're creating an object with a function; you're creating an object with the action inside, serializing it, and then a

[03:51] the action inside, serializing it, and then a the action inside, serializing it, and then a worker in another process takes it from the queue and worker in another process takes it from the queue and worker in another process takes it from the queue and executes it when it's their turn. The executes it when it's their turn. The executes it when it's their turn. The person who queues and the person who executes are person who queues and the person who executes are person who queues and the person who executes are completely separate. That's command-

[04:00] completely separate. That's command- completely separate. That's command- scale adapter. scale adapter. scale adapter. The translator plug. The translator plug. The translator plug. You arrive in Madrid with your You arrive in Madrid with your You arrive in Madrid with your American charger.

[04:08] American charger. American charger. The wall has a round The wall has a round The wall has a round European socket. European socket. European socket. Your charger has flat feet. They do Your charger has flat feet. They do Your charger has flat feet. They do n't get in.

[04:15] n't get in. n't get in. What are you doing? What are you doing? What are you doing? Don't throw away the charger. You don't buy a Don't throw away the charger. You don't buy a Don't throw away the charger. You don't buy a new laptop.

[04:20] new laptop. new laptop. You buy a €3 adapter. You buy a €3 adapter. You buy a €3 adapter. Your American charger fits on one side. On the other Your American charger fits on one side. On the other Your American charger fits on one side. On the other hand, it has round legs that do fit hand, it has round legs that do fit hand, it has round legs that do fit on the European wall.

[04:30] on the European wall. on the European wall. In the middle, he does the translation. In the middle, he does the translation. In the middle, he does the translation. The adapter does not change your charger. The adapter does not change your charger.

[04:35] The adapter does not change your charger. The wall doesn't change. It just gets between The wall doesn't change. It just gets between The wall doesn't change. It just gets between the two of them to make the connection work.

[04:40] the two of them to make the connection work. the two of them to make the connection work. That's an adapter. That's an adapter. That's an adapter. You have code that expects an interface. You have code that expects an interface.

[04:45] You have code that expects an interface. He expects them to speak to him in a certain way. He expects them to speak to him in a certain way. He expects them to speak to him in a certain way. You have an object that offers a You have an object that offers a You have an object that offers a different interface.

[04:50] different interface. different interface. Speak differently. Speak differently. Speak differently. Instead of rewriting one of the two, Instead of rewriting one of the two, Instead of rewriting one of the two, you put a translator in between.

[04:56] you put a translator in between. you put a translator in between. The advantage is that you don't touch the The advantage is that you don't touch the The advantage is that you don't touch the external library, which you often can't even external library, which you often can't even external library, which you often can't even touch, nor do you rewrite touch, nor do you rewrite touch, nor do you rewrite all your code that already calls it.

[05:04] all your code that already calls it. all your code that already calls it. You put a new piece between the two. Let You put a new piece between the two. Let You put a new piece between the two. Let 's look at the example.

[05:08] 's look at the example. 's look at the example. Your app expects a payment service with Your app expects a payment service with Your app expects a payment service with a simple method, collecting payment, to which you a simple method, collecting payment, to which you a simple method, collecting payment, to which you pass an amount in dollars.

[05:14] pass an amount in dollars. pass an amount in dollars. Spot. This is how your app speaks. Spot. This is how your app speaks. Spot. This is how your app speaks. But the payment library you But the payment library you But the payment library you got doesn't talk like that.

[05:20] got doesn't talk like that. got doesn't talk like that. His method is called different. It expects the His method is called different. It expects the His method is called different. It expects the amount in cents, not dollars, and amount in cents, not dollars, and amount in cents, not dollars, and also requires a currency code.

[05:27] also requires a currency code. also requires a currency code. Two languages ​​that don't fit together, like the Two languages ​​that don't fit together, like the Two languages ​​that don't fit together, like the legs of a charger.

[05:31] legs of a charger. legs of a charger. Then you write the adapter. Then you write the adapter. Then you write the adapter. A class, let's call it a payment adapter, A class, let's call it a payment adapter, A class, let's call it a payment adapter, that outwardly exposes exactly the that outwardly exposes exactly the that outwardly exposes exactly the method of charging that your app expects, method of charging that your app expects, method of charging that your app expects, receiving dollars.

[05:41] receiving dollars. receiving dollars. Inside, it receives those dollars, Inside, it receives those dollars, Inside, it receives those dollars, multiplies them to convert them to cents, multiplies them to convert them to cents, multiplies them to convert them to cents, adds the currency code, and only adds the currency code, and only adds the currency code, and only then calls the strange method from the then calls the strange method from the then calls the strange method from the external library.

[05:51] external library. external library. Your app thinks it's communicating with your Your app thinks it's communicating with your Your app thinks it's communicating with your usual payment service. He actually spoke with usual payment service. He actually spoke with usual payment service. He actually spoke with the translator. And the specific advantage?

[05:58] the translator. And the specific advantage? the translator. And the specific advantage? The rest of your app doesn't know or care The rest of your app doesn't know or care The rest of your app doesn't know or care that down below there's a library with a different that down below there's a library with a different that down below there's a library with a different name, a different unit, and a different signature.

[06:05] name, a different unit, and a different signature. name, a different unit, and a different signature. All that difference is contained within All that difference is contained within All that difference is contained within a single piece. If you change a single piece. If you change a single piece. If you change payment providers tomorrow, you just rewrite that payment providers tomorrow, you just rewrite that payment providers tomorrow, you just rewrite that adapter and that's it. Your app doesn't

[06:14] adapter and that's it. Your app doesn't adapter and that's it. Your app doesn't know. know. know. Where does it live in real-world systems? Where does it live in real-world systems? Where does it live in real-world systems? The classic example is payment SDKs, The classic example is payment SDKs, The classic example is payment SDKs, such as Stripe or PayPal. Under the hood, paying such as Stripe or PayPal. Under the hood, paying such as Stripe or PayPal. Under the hood, paying means sending raw HTTP requests with

[06:26] means sending raw HTTP requests with means sending raw HTTP requests with headers, authentication, and a headers, authentication, and a headers, authentication, and a custom-formatted body. The SDK wraps up all that custom-formatted body. The SDK wraps up all that custom-formatted body. The SDK wraps up all that noise and presents it to you as a noise and presents it to you as a noise and presents it to you as a clean method in your language. However, such an SDK clean method in your language. However, such an SDK

[06:37] clean method in your language. However, such an SDK usually mixes adapter and facade. It's a usually mixes adapter and facade. It's a usually mixes adapter and facade. It's a pure adapter only when your code already pure adapter only when your code already pure adapter only when your code already expected an interface and the SDK adapts expected an interface and the SDK adapts expected an interface and the SDK adapts to it. If it only gives you a new, to it. If it only gives you a new,

[06:48] to it. If it only gives you a new, more comfortable interface, it's more of a facade. Another more comfortable interface, it's more of a facade. Another more comfortable interface, it's more of a facade. Another case, this one a book adapter, you case, this one a book adapter, you case, this one a book adapter, you have it at hand with Axios. Inside it have it at hand with Axios. Inside it have it at hand with Axios. Inside it comes with interchangeable transport adapters

[06:57] comes with interchangeable transport adapters comes with interchangeable transport adapters . One uses the . One uses the . One uses the browser mechanism and the other uses browser mechanism and the other uses browser mechanism and the other uses Node's HTTP module. You always call the same thing and below Node's HTTP module. You always call the same thing and below Node's HTTP module. You always call the same thing and below comes the adapter that corresponds to the comes the adapter that corresponds to the

[07:08] comes the adapter that corresponds to the environment where you run. Repository, the environment where you run. Repository, the environment where you run. Repository, the librarian. librarian. librarian. Before we begin, a note. Repository is Before we begin, a note. Repository is Before we begin, a note. Repository is not part of the Gang of Four catalog. It was not part of the Gang of Four catalog. It was not part of the Gang of Four catalog. It was cataloged by Martin Fowler in Patterns of

[07:20] cataloged by Martin Fowler in Patterns of cataloged by Martin Fowler in Patterns of Enterprise Application Architecture in Enterprise Application Architecture in Enterprise Application Architecture in 2002 and popularized by Eric Evans in 2002 and popularized by Eric Evans in 2002 and popularized by Eric Evans in Domain Driven Design in 2003. I include it Domain Driven Design in 2003. I include it Domain Driven Design in 2003. I include it here because today it appears in almost every

[07:32] here because today it appears in almost every here because today it appears in almost every serious backend. You go to the library, serious backend. You go to the library, serious backend. You go to the library, you want 100 Years of Solitude, you ask the you want 100 Years of Solitude, you ask the you want 100 Years of Solitude, you ask the librarian, he turns around, comes back librarian, he turns around, comes back librarian, he turns around, comes back with the book. Where did he get it?

[07:42] with the book. Where did he get it? with the book. Where did he get it? You have no idea. And that's precisely the point. He You have no idea. And that's precisely the point. He You have no idea. And that's precisely the point. He could have had it 1 m behind him, he could have gone down to the could have had it 1 m behind him, he could have gone down to the could have had it 1 m behind him, he could have gone down to the basement, he could have called another library

[07:50] basement, he could have called another library basement, he could have called another library to have it sent to him, he could have looked for it in to have it sent to him, he could have looked for it in to have it sent to him, he could have looked for it in a digital archive. It doesn't matter to you.

[07:55] a digital archive. It doesn't matter to you. a digital archive. It doesn't matter to you. You ordered the book, you received the book. The You ordered the book, you received the book. The You ordered the book, you received the book. The how is the librarian's problem.

[08:02] how is the librarian's problem. how is the librarian's problem. That's a repository. That's a repository. That's a repository. Your business code says, "Give me the Your business code says, "Give me the Your business code says, "Give me the user with this ID." The repository user with this ID." The repository user with this ID." The repository delivers it to you. If that user came from the delivers it to you. If that user came from the delivers it to you. If that user came from the database, a cache, a

[08:12] database, a cache, a database, a cache, a file, or a remote microservice, it file, or a remote microservice, it file, or a remote microservice, it 's not your problem. 's not your problem. 's not your problem. There is only one piece in your entire system There is only one piece in your entire system There is only one piece in your entire system that knows how data is stored and retrieved, that knows how data is stored and retrieved, that knows how data is stored and retrieved, and that is the repository.

[08:24] and that is the repository. and that is the repository. Everything else is just asking and receiving. Everything else is just asking and receiving. Everything else is just asking and receiving. The advantage becomes very clear to you at two The advantage becomes very clear to you at two The advantage becomes very clear to you at two moments. The first step is testing. If your moments. The first step is testing. If your moments. The first step is testing. If your service communicates directly with the

[08:34] service communicates directly with the service communicates directly with the database, you can't test it without setting up database, you can't test it without setting up database, you can't test it without setting up a real, slow, and a real, slow, and a real, slow, and fragile database. But if your service communicates with fragile database. But if your service communicates with fragile database. But if your service communicates with a repository, in the test you pass it a

[08:43] a repository, in the test you pass it a a repository, in the test you pass it a fake repository that stores the fake repository that stores the fake repository that stores the users in memory, in a dictionary, users in memory, in a dictionary, users in memory, in a dictionary, and you test all your logic in milliseconds and you test all your logic in milliseconds and you test all your logic in milliseconds without touching the disk.

[08:51] without touching the disk. without touching the disk. The second step is to migrate. The second step is to migrate. The second step is to migrate. If you ever switch from Postgres to If you ever switch from Postgres to If you ever switch from Postgres to MongoDB, you just write a new repository MongoDB, you just write a new repository MongoDB, you just write a new repository that uses the same interface and you're good to go. The that uses the same interface and you're good to go. The

[09:01] that uses the same interface and you're good to go. The service doesn't even know. Let service doesn't even know. Let service doesn't even know. Let 's lead by example. You have a 's lead by example. You have a 's lead by example. You have a repository user class with two methods: repository user class with two methods: repository user class with two methods: search by ID and save.

[09:10] search by ID and save. search by ID and save. That class is the only one in the entire That class is the only one in the entire That class is the only one in the entire project that writes SQL. The only one who project that writes SQL. The only one who project that writes SQL. The only one who knows that a user table exists.

[09:18] knows that a user table exists. knows that a user table exists. Externally, your user service Externally, your user service Externally, your user service receives that repository in its constructor receives that repository in its constructor receives that repository in its constructor and requests things from it.

[09:24] and requests things from it. and requests things from it. The service does not write a single line of The service does not write a single line of The service does not write a single line of SQL, not one. If you look at its code, you wouldn't even SQL, not one. If you look at its code, you wouldn't even SQL, not one. If you look at its code, you wouldn't even guess what database is underneath.

[09:32] guess what database is underneath. guess what database is underneath. That ignorance is exactly what you That ignorance is exactly what you That ignorance is exactly what you want. want. want. Where does it live in real-world systems?

[09:39] Where does it live in real-world systems? Where does it live in real-world systems? In Java, Spring Data takes this to the In Java, Spring Data takes this to the In Java, Spring Data takes this to the extreme. You declare an empty interface that extreme. You declare an empty interface that extreme. You declare an empty interface that extends repository and the framework extends repository and the framework extends repository and the framework generates the implementation for you, without you

[09:48] generates the implementation for you, without you generates the implementation for you, without you writing the body. writing the body. writing the body. In the world of Node and TypeScript, In the world of Node and TypeScript, In the world of Node and TypeScript, TypeORM gives you a repository for each TypeORM gives you a repository for each TypeORM gives you a repository for each entity with methods like search, entity with methods like search, entity with methods like search, save, or delete, instead of raw SQL.

[10:00] save, or delete, instead of raw SQL. save, or delete, instead of raw SQL. And in Python, each Django model already And in Python, each Django model already And in Python, each Django model already has its data access point, and the has its data access point, and the has its data access point, and the common practice is to wrap it in a common practice is to wrap it in a common practice is to wrap it in a repository class so that your services can repository class so that your services can

[10:09] repository class so that your services can request data without directly touching the ORM. request data without directly touching the ORM. request data without directly touching the ORM. In all three cases, the pattern is the In all three cases, the pattern is the In all three cases, the pattern is the same: librarian. Proxy.

[10:17] same: librarian. Proxy. same: librarian. Proxy. The secretary who leaks information. Do The secretary who leaks information. Do The secretary who leaks information. Do you want to speak to the CEO? you want to speak to the CEO?

[10:22] you want to speak to the CEO? You dial their office number, You dial their office number, You dial their office number, the secretary answers. It the secretary answers. It the secretary answers. It asks you who you are, what you want, and if asks you who you are, what you want, and if asks you who you are, what you want, and if you have an appointment.

[10:30] you have an appointment. you have an appointment. Sometimes it happens with him, sometimes he says, Sometimes it happens with him, sometimes he says, Sometimes it happens with him, sometimes he says, "He's in a meeting, call back tomorrow."

[10:36] "He's in a meeting, call back tomorrow." "He's in a meeting, call back tomorrow." Sometimes he writes down your message and lets you know Sometimes he writes down your message and lets you know Sometimes he writes down your message and lets you know when he can call you back.

[10:41] when he can call you back. when he can call you back. You thought you were calling the director, You thought you were calling the director, You thought you were calling the director, you called the secretary. you called the secretary.

[10:45] you called the secretary. She decided if the call was worth it, She decided if the call was worth it, She decided if the call was worth it, if it went ahead, if she waited, if she saved it. if it went ahead, if she waited, if she saved it.

[10:50] if it went ahead, if she waited, if she saved it. And here's the trick. And here's the trick. And here's the trick. You dialed the director's number, the You dialed the director's number, the You dialed the director's number, the face, the number, the interface are the face, the number, the interface are the face, the number, the interface are the same. What changed was who attends to you same. What changed was who attends to you same. What changed was who attends to you and what they check before letting you in.

[11:02] and what they check before letting you in. and what they check before letting you in. That's a proxy, an object that pretends to be That's a proxy, an object that pretends to be That's a proxy, an object that pretends to be another.

[11:07] another. another. On the outside it has the same face, the On the outside it has the same face, the On the outside it has the same face, the same methods, the same signature. same methods, the same signature. same methods, the same signature. Internally, it decides when to transfer the call Internally, it decides when to transfer the call Internally, it decides when to transfer the call to the actual object, when to search, when to to the actual object, when to search, when to

[11:16] to the actual object, when to search, when to cut off, when to load on demand. cut off, when to load on demand. cut off, when to load on demand. The advantage is that you put a layer of The advantage is that you put a layer of The advantage is that you put a layer of control between the client and the control between the client and the control between the client and the real object without the client changing a single real object without the client changing a single real object without the client changing a single line. That layer can be a catch, an

[11:27] line. That layer can be a catch, an line. That layer can be a catch, an authentication, a lazy loading, a log, authentication, a lazy loading, a log, authentication, a lazy loading, a log, a cost control. Let's look at the a cost control. Let's look at the a cost control. Let's look at the most useful example, the cache.

[11:36] most useful example, the cache. most useful example, the cache. You have a real service that obtains You have a real service that obtains You have a real service that obtains a user's profile by connecting them via HTTP a user's profile by connecting them via HTTP a user's profile by connecting them via HTTP to an API.

[11:41] to an API. to an API. Each call triggers a Each call triggers a Each call triggers a real request, and that costs time and money. If real request, and that costs time and money. If real request, and that costs time and money. If you request the same profile five you request the same profile five you request the same profile five times, it's a waste.

[11:50] times, it's a waste. times, it's a waste. Then you put a proxy [clearing your throat] Then you put a proxy [clearing your throat] Then you put a proxy [clearing your throat] on top, a class, let's call it a on top, a class, let's call it a on top, a class, let's call it a cached service, which has exactly the cached service, which has exactly the cached service, which has exactly the same methods as the real service.

[11:59] same methods as the real service. same methods as the real service. Inside it holds a map. When you request Inside it holds a map. When you request Inside it holds a map. When you request a profile, first check if that ID a profile, first check if that ID a profile, first check if that ID is already on the map. If it's there, it returns it to you is already on the map. If it's there, it returns it to you is already on the map. If it's there, it returns it to you instantly, without touching the net. If it's not there

[12:09] instantly, without touching the net. If it's not there instantly, without touching the net. If it's not there , then call the real service, , then call the real service, , then call the real service, save the answer on the map and they'll save the answer on the map and they'll save the answer on the map and they'll deliver it to you.

[12:15] deliver it to you. deliver it to you. The second time you request that same The second time you request that same The second time you request that same profile, HTTP will no longer work. profile, HTTP will no longer work.

[12:19] profile, HTTP will no longer work. The important thing is that the The important thing is that the The important thing is that the outside customer didn't find out anything. It keeps outside customer didn't find out anything. It keeps outside customer didn't find out anything. It keeps calling the same method as always, calling the same method as always, calling the same method as always, unaware that there's a cache in the middle unaware that there's a cache in the middle

[12:26] unaware that there's a cache in the middle deciding whether to connect to the network or not. Same deciding whether to connect to the network or not. Same deciding whether to connect to the network or not. Same interface, extended behavior.

[12:32] interface, extended behavior. interface, extended behavior. That transparency is precisely what That transparency is precisely what That transparency is precisely what distinguishes a proxy. distinguishes a proxy. distinguishes a proxy. Where does it live in real-world systems?

[12:37] Where does it live in real-world systems? Where does it live in real-world systems? The most famous case is the lazy loading of The most famous case is the lazy loading of The most famous case is the lazy loading of ORMs.

[12:41] ORMs. ORMs. Hibernate in Java returns a proxy Hibernate in Java returns a proxy Hibernate in Java returns a proxy of the entity. As long as you don't touch its of the entity. As long as you don't touch its of the entity. As long as you don't touch its fields, it won't hit the base.

[12:48] fields, it won't hit the base. The query is triggered as soon as you access one. Django's query set does The query is triggered as soon as you access one. Django's query set does something similar; it's lazy, it doesn't query until you something similar; it's lazy, it doesn't query until you something similar; it's lazy, it doesn't query until you iterate through it or convert it to a list.

[12:58] iterate through it or convert it to a list. iterate through it or convert it to a list. And there is an even more direct case. And there is an even more direct case. And there is an even more direct case. JavaScript includes a built-in proxy object JavaScript includes a built-in proxy object JavaScript includes a built-in proxy object in the language itself. You in the language itself. You in the language itself. You pass it a real object and a handler pass it a real object and a handler

[13:06] pass it a real object and a handler with traps, and every time someone reads or with traps, and every time someone reads or with traps, and every time someone reads or writes a property, that operation writes a property, that operation writes a property, that operation first goes through your trap before first goes through your trap before first goes through your trap before reaching the real object. It is this pattern reaching the real object. It is this pattern reaching the real object. It is this pattern embedded within the runtime. Facade, the

[13:19] embedded within the runtime. Facade, the embedded within the runtime. Facade, the remote control. remote control. remote control. You press the power button on the You press the power button on the You press the power button on the remote control.

[13:24] remote control. remote control. The television turns on. The television turns on. The television turns on. Ready. There's Ready. There's Ready. There's a world behind that button. a world behind that button. a world behind that button. The power supply activates, the display The power supply activates, the display The power supply activates, the display initializes, initializes, initializes, the backlight turns on, the backlight turns on, the backlight turns on, the board starts the TV's operating system

[13:38] the board starts the TV's operating system the board starts the TV's operating system , , , connects to Wi-Fi, loads the app connects to Wi-Fi, loads the app connects to Wi-Fi, loads the app you left open, you left open, you left open, measures the voltage, and adjusts brightness and measures the voltage, and adjusts brightness and measures the voltage, and adjusts brightness and contrast.

[13:47] contrast. contrast. 50 steps in an exact order. 50 steps in an exact order. 50 steps in an exact order. You don't know any of them. You don't even You don't know any of them. You don't even You don't know any of them. You don't even care.

[13:53] care. care. You press a button. You press a button. You press a button. That's Facade. That's Facade. That's Facade. A simple class with obvious methods that A simple class with obvious methods that A simple class with obvious methods that orchestrates a complex system from within.

[14:03] orchestrates a complex system from within. orchestrates a complex system from within. The complexity is still there, intact, but The complexity is still there, intact, but The complexity is still there, intact, but it remains hidden behind a facade it remains hidden behind a facade it remains hidden behind a facade with a couple of clear buttons.

[14:09] with a couple of clear buttons. with a couple of clear buttons. The advantage is direct. The advantage is direct. The advantage is direct. The caller doesn't need to learn five The caller doesn't need to learn five The caller doesn't need to learn five libraries or remember the libraries or remember the libraries or remember the correct order of the calls.

[14:17] correct order of the calls. correct order of the calls. Call a method and the facade does the Call a method and the facade does the Call a method and the facade does the rest from within. rest from within. rest from within. It is important not to confuse it with the It is important not to confuse it with the It is important not to confuse it with the adapter.

[14:24] adapter. adapter. The adapter translates one interface to The adapter translates one interface to The adapter translates one interface to another, one to one. another, one to one. another, one to one. The facade hides many pieces behind The facade hides many pieces behind The facade hides many pieces behind a single simple entrance.

[14:32] a single simple entrance. a single simple entrance. Adapter, translator. Adapter, translator. Adapter, translator. Facade, simplifier. Let Facade, simplifier. Let Facade, simplifier. Let 's look at the example. 's look at the example.

[14:38] 's look at the example. Sending a welcome email when Sending a welcome email when Sending a welcome email when someone registers sounds trivial, but someone registers sounds trivial, but someone registers sounds trivial, but inside it involves several coordinated steps.

[14:45] inside it involves several coordinated steps. inside it involves several coordinated steps. First, you need to render a template First, you need to render a template First, you need to render a template with the user's name. Then with the user's name. Then with the user's name. Then send that email through an send that email through an send that email through an email service. And if the user left their phone number, email service. And if the user left their phone number,

[14:54] email service. And if the user left their phone number, also send them a text message through a also send them a text message through a also send them a text message through a different service. different service. different service. Three dependencies, one order, Three dependencies, one order, Three dependencies, one order, conditions.

[15:01] conditions. conditions. If you leave that loose, every part of your If you leave that loose, every part of your If you leave that loose, every part of your app that wants to welcome users has app that wants to welcome users has app that wants to welcome users has to know all three pieces and to know all three pieces and to know all three pieces and coordinate them well.

[15:08] coordinate them well. coordinate them well. A disaster repeated everywhere. A disaster repeated everywhere. A disaster repeated everywhere. So, you put up a facade. So, you put up a facade. So, you put up a facade. A notification class that receives A notification class that receives A notification class that receives those three dependencies inside and exposes those three dependencies inside and exposes those three dependencies inside and exposes a single method, notify welcome, to

[15:21] a single method, notify welcome, to a single method, notify welcome, to which you pass the user. which you pass the user. which you pass the user. Everything happens inside that method: it Everything happens inside that method: it Everything happens inside that method: it renders, sends the email, and if there's a renders, sends the email, and if there's a renders, sends the email, and if there's a phone, it sends the message.

[15:30] phone, it sends the message. phone, it sends the message. On the outside, a single line. On the outside, a single line. On the outside, a single line. The controller that calls that facade The controller that calls that facade The controller that calls that facade knows nothing about templates, what knows nothing about templates, what knows nothing about templates, what email provider you use, or email provider you use, or email provider you use, or text messages. It text messages. It

[15:40] text messages. It simply says, "Notify simply says, "Notify simply says, "Notify this user's welcome." this user's welcome." this user's welcome." All the coordination was confined to All the coordination was confined to All the coordination was confined to one place.

[15:47] one place. one place. That's the advantage. A simple entry That's the advantage. A simple entry That's the advantage. A simple entry about a complicated subsystem. about a complicated subsystem. about a complicated subsystem. Where does the real system live?

[15:54] Where does the real system live? Where does the real system live? Express Node is a facade over Express Node is a facade over Express Node is a facade over Node's raw HTTP module. Node's raw HTTP module. Node's raw HTTP module. The HTTP module forces you to parse the The HTTP module forces you to parse the The HTTP module forces you to parse the URL manually, handle streams, and write URL manually, handle streams, and write URL manually, handle streams, and write headers one by one.

[16:07] headers one by one. headers one by one. Express hides all that and gives you something Express hides all that and gives you something Express hides all that and gives you something clean. You register a route with its clean. You register a route with its clean. You register a route with its handler and it takes care of the rest.

[16:14] handler and it takes care of the rest. handler and it takes care of the rest. Fast API in Python does the same thing over Fast API in Python does the same thing over Fast API in Python does the same thing over Starlette and the ASGI protocol.

[16:18] Starlette and the ASGI protocol. Starlette and the ASGI protocol. All the complexity of syncing, routing, All the complexity of syncing, routing, All the complexity of syncing, routing, and validation is contained within.

[16:23] and validation is contained within. and validation is contained within. You decorate a function and that's it. That's You decorate a function and that's it. That's You decorate a function and that's it. That's Facade.

[16:28] Facade. Facade. The automatic record player. The automatic record player. The automatic record player. Automatic record player from the 1950s. Automatic record player from the 1950s. Automatic record player from the 1950s. You have one button, next song. You You have one button, next song. You You have one button, next song. You press it, the next one plays. You press it, the next one plays. You press it, the next one plays. You press it again, the next one plays.

[16:42] press it again, the next one plays. press it again, the next one plays. How is the collection organized How is the collection organized How is the collection organized inside? Are they stacked vinyl records? inside? Are they stacked vinyl records?

[16:47] inside? Are they stacked vinyl records? Are they on a rotating tray? Are they Are they on a rotating tray? Are they Are they on a rotating tray? Are they magnetic tapes? magnetic tapes? magnetic tapes? No idea. No idea.

[16:52] No idea. And you don't need to know that. You press And you don't need to know that. You press And you don't need to know that. You press next, the next song plays. next, the next song plays. next, the next song plays. That comfortable ignorance is precisely the That comfortable ignorance is precisely the That comfortable ignorance is precisely the boss's gift.

[17:00] boss's gift. boss's gift. That's Iterator, a way to traverse That's Iterator, a way to traverse That's Iterator, a way to traverse a collection without knowing how it's a collection without knowing how it's a collection without knowing how it's implemented internally.

[17:06] implemented internally. implemented internally. The collection only displays two things, is there a The collection only displays two things, is there a The collection only displays two things, is there a next one? And give me the next one.

[17:12] next one? And give me the next one. next one? And give me the next one. With those two questions you can create any With those two questions you can create any With those two questions you can create any route, without touching the guts of the route, without touching the guts of the route, without touching the guts of the structure.

[17:17] structure. structure. The advantage is that you detach the The advantage is that you detach the The advantage is that you detach the container's route. You write your loop only container's route. You write your loop only container's route. You write your loop only once.

[17:23] once. once. And that same loop works equally well for And that same loop works equally well for And that same loop works equally well for a list, an array, a set, a a list, an array, a set, a a list, an array, a set, a tree, a stream, or a database cursor tree, a stream, or a database cursor tree, a stream, or a database cursor .

[17:32] . . And if tomorrow you change the And if tomorrow you change the And if tomorrow you change the internal structure of the collection, from an array to a internal structure of the collection, from an array to a internal structure of the collection, from an array to a linked list, for example, your loop won't linked list, for example, your loop won't linked list, for example, your loop won't notice or break.

[17:40] notice or break. notice or break. Speak to the protocol, not the Speak to the protocol, not the Speak to the protocol, not the structure. Let structure. Let structure. Let 's lead by example. 's lead by example. 's lead by example. You have your own collection, a You have your own collection, a You have your own collection, a playlist that saves songs.

[17:49] playlist that saves songs. playlist that saves songs. You don't want whoever uses it to mess You don't want whoever uses it to mess You don't want whoever uses it to mess with the internal array, because tomorrow that with the internal array, because tomorrow that with the internal array, because tomorrow that array might cease to be an array.

[17:56] array might cease to be an array. array might cease to be an array. Instead, you teach your collection the Instead, you teach your collection the language's native iteration protocol. language's native iteration protocol. Once you comply with that protocol, your Once you comply with that protocol, your Once you comply with that protocol, your own collection is traversed with the own collection is traversed with the own collection is traversed with the normal language loop, just as if it were

[18:07] normal language loop, just as if it were normal language loop, just as if it were a list from the standard library. a list from the standard library. a list from the standard library. The person writing the loop doesn't even know it's The person writing the loop doesn't even know it's The person writing the loop doesn't even know it's a collection you made.

[18:13] a collection you made. a collection you made. And that connects with something you already use every And that connects with something you already use every And that connects with something you already use every day without thinking about it.

[18:17] day without thinking about it. day without thinking about it. JavaScript's `for of`, JavaScript's `for of`, JavaScript's `for of`, Python's `for`, Java's `for each`, and Python's `for`, Java's `for each`, and Python's `for`, Java's `for each`, and Go's `range` are all speaking the same Go's `range` are all speaking the same Go's `range` are all speaking the same protocol under the hood. Ask me if there's a protocol under the hood. Ask me if there's a protocol under the hood. Ask me if there's a next one, give me the next one.

[18:31] next one, give me the next one. next one, give me the next one. Each language gives it its own name, but the Each language gives it its own name, but the Each language gives it its own name, but the idea is identical. That's why idea is identical. That's why idea is identical. That's why a loop looks so similar in a loop looks so similar in a loop looks so similar in such different languages.

[18:39] such different languages. such different languages. Where do real systems live beyond Where do real systems live beyond Where do real systems live beyond the loop? the loop? the loop? In database cursors. In database cursors.

[18:45] In database cursors. When a query returns a million When a query returns a million When a query returns a million rows, the driver doesn't bring them all rows, the driver doesn't bring them all rows, the driver doesn't bring them all into memory at once, it will blow up your RAM. It into memory at once, it will blow up your RAM. It into memory at once, it will blow up your RAM. It gives you an iterator and you traverse it by gives you an iterator and you traverse it by

[18:54] gives you an iterator and you traverse it by requesting in batches, bringing only what you are requesting in batches, bringing only what you are requesting in batches, bringing only what you are using. using. using. Also in reading Also in reading Also in reading huge files line by line, where huge files line by line, where huge files line by line, where underneath iterates over the bytes without loading underneath iterates over the bytes without loading underneath iterates over the bytes without loading the entire file.

[19:06] the entire file. the entire file. And in paginated APIs. And in paginated APIs. And in paginated APIs. Many SDKs, such as those from GitHub, AWS, or Many SDKs, such as those from GitHub, AWS, or Many SDKs, such as those from GitHub, AWS, or Stripe, return an iterator that Stripe, return an iterator that Stripe, return an iterator that internally requests the next page as you internally requests the next page as you internally requests the next page as you progress. You just walk around.

[19:19] progress. You just walk around. progress. You just walk around. He fights for the token on the next He fights for the token on the next He fights for the token on the next page for you. How do they combine in page for you. How do they combine in page for you. How do they combine in real life?

[19:24] real life? real life? Bosses don't live alone. In Bosses don't live alone. In Bosses don't live alone. In real systems they are combined and you are almost never real systems they are combined and you are almost never real systems they are combined and you are almost never notified.

[19:31] notified. notified. Follow the incoming request to your API. The Follow the incoming request to your API. The Follow the incoming request to your API. The framework's facade, Express or Fast framework's facade, Express or Fast framework's facade, Express or Fast API, receives and cleans it.

[19:38] API, receives and cleans it. API, receives and cleans it. The handler assembles a command that The handler assembles a command that The handler assembles a command that represents the user. represents the user. represents the user. That command calls a repository to That command calls a repository to That command calls a repository to access the database.

[19:46] access the database. access the database. The repository, internally, is The repository, internally, is The repository, internally, is holding a proxy of the ORM that decides holding a proxy of the ORM that decides holding a proxy of the ORM that decides when to run the actual query and when not to.

[19:53] when to run the actual query and when not to. when to run the actual query and when not to. And if the result is a And if the result is a And if the result is a huge collection, it comes to you as an iterator so you huge collection, it comes to you as an iterator so you huge collection, it comes to you as an iterator so you don't have to recall everything from memory.

[19:59] don't have to recall everything from memory. don't have to recall everything from memory. Five patterns in a single request and you Five patterns in a single request and you Five patterns in a single request and you didn't write a single line with the didn't write a single line with the didn't write a single line with the word pattern. That's why word pattern. That's why word pattern. That's why this series matters.

[20:07] this series matters. this series matters. Once you see their faces, you Once you see their faces, you Once you see their faces, you recognize them everywhere, in code recognize them everywhere, in code recognize them everywhere, in code you didn't write.

[20:12] you didn't write. you didn't write. Now, the common mistakes with these Now, the common mistakes with these Now, the common mistakes with these six. One. six. One. six. One. Adapter who unintentionally becomes a decorator Adapter who unintentionally becomes a decorator Adapter who unintentionally becomes a decorator .

[20:19] . . If you start If you start If you start adding new behavior within the adapter that the adding new behavior within the adapter that the adding new behavior within the adapter that the original didn't have, you've stopped translating and original didn't have, you've stopped translating and original didn't have, you've stopped translating and are just decorating.

[20:27] are just decorating. are just decorating. If the new method had no equivalent If the new method had no equivalent If the new method had no equivalent in the old one, be suspicious. in the old one, be suspicious. in the old one, be suspicious. Two. A Two. A Two. A proxy that hides a deadly latency.

[20:35] proxy that hides a deadly latency. proxy that hides a deadly latency. A lazy loading proxy can hide A lazy loading proxy can hide A lazy loading proxy can hide 1000 queries against the database without you 1000 queries against the database without you 1000 queries against the database without you seeing them.

[20:39] seeing them. seeing them. It's the famous N+1 problem. It's the famous N+1 problem. It's the famous N+1 problem. If a list that seemed innocent loads If a list that seemed innocent loads If a list that seemed innocent loads extremely slowly in production, suspect the extremely slowly in production, suspect the extremely slowly in production, suspect the proxy.

[20:47] proxy. proxy. Three. Fasad that inflates until it becomes Three. Fasad that inflates until it becomes Three. Fasad that inflates until it becomes a God-like object. a God-like object. a God-like object. The facade is meant to simplify the The facade is meant to simplify the The facade is meant to simplify the entrance, not to do absolutely entrance, not to do absolutely entrance, not to do absolutely everything.

[20:57] everything. everything. If your facade has 40 methods and 1000 If your facade has 40 methods and 1000 If your facade has 40 methods and 1000 lines, divide it. lines, divide it. lines, divide it. Four. Repository with 100 custom methods Four. Repository with 100 custom methods Four. Repository with 100 custom methods .

[21:05] . . If your repository has a method called If your repository has a method called If your repository has a method called search by email and status and created search by email and status and created search by email and status and created after and sorted by name, the after and sorted by name, the after and sorted by name, the pattern has already been broken.

[21:14] pattern has already been broken. pattern has already been broken. Pass to a query object or a Pass to a query object or a Pass to a query object or a specification. specification. specification. Five. An iterator that isn't lazy Five. An iterator that isn't lazy Five. An iterator that isn't lazy when it should be.

[21:22] when it should be. when it should be. If you read the entire collection internally If you read the entire collection internally If you read the entire collection internally before you start iterating, you've missed the before you start iterating, you've missed the before you start iterating, you've missed the point.

[21:27] point. point. What you're looking for is to bring one at a time, only what What you're looking for is to bring one at a time, only what What you're looking for is to bring one at a time, only what you're using. Compiling you're using. Compiling you're using. Compiling today's six.

[21:33] today's six. today's six. Command, you encapsulate the action as an Command, you encapsulate the action as an Command, you encapsulate the action as an object. object. object. Adapter, translates between Adapter, translates between Adapter, translates between incompatible interfaces.

[21:42] incompatible interfaces. incompatible interfaces. Repository, abstracts data access. Repository, abstracts data access. Repository, abstracts data access. Proxy, you put in an intermediary that Proxy, you put in an intermediary that Proxy, you put in an intermediary that controls access.

[21:51] controls access. controls access. Facade, you put a simple facade over Facade, you put a simple facade over Facade, you put a simple facade over a complex system. a complex system. a complex system. Iterator, you tour a collection without Iterator, you tour a collection without Iterator, you tour a collection without revealing how it's made inside.

[22:01] revealing how it's made inside. revealing how it's made inside. Add them to the six from part one. Add them to the six from part one. Add them to the six from part one. Singleton, observer, factory, strategy, Singleton, observer, factory, strategy, Singleton, observer, factory, strategy, decorator, builder. These are 12 patterns that decorator, builder. These are 12 patterns that decorator, builder. These are 12 patterns that cover the vast majority of cases in cover the vast majority of cases in

[22:13] cover the vast majority of cases in real code. real code. real code. 11 of them, all except repository, 11 of them, all except repository, 11 of them, all except repository, come from the book Design Patterns that the come from the book Design Patterns that the come from the book Design Patterns that the gang of four published in 1994.

[22:24] gang of four published in 1994. gang of four published in 1994. Repository came later with Fowler and Repository came later with Fowler and Repository came later with Fowler and Evans, but today it is a standard. Evans, but today it is a standard.

[22:29] Evans, but today it is a standard. Don't memorize all 23 questions in the book Don't memorize all 23 questions in the book Don't memorize all 23 questions in the book , it's not trivia. What matters is , it's not trivia. What matters is , it's not trivia. What matters is recognizing them when they appear in recognizing them when they appear in recognizing them when they appear in other people's code and applying them when the other people's code and applying them when the

[22:38] other people's code and applying them when the problem calls for it. problem calls for it. problem calls for it. If your natural code already has the shape If your natural code already has the shape If your natural code already has the shape of a pattern, perfect.

[22:44] of a pattern, perfect. of a pattern, perfect. If you force it where it's not needed, you'll If you force it where it's not needed, you'll If you force it where it's not needed, you'll make life harder for the next person who make life harder for the next person who make life harder for the next person who reads the code.

[22:50] reads the code. reads the code. This part two is a This part two is a This part two is a direct continuation of part one. direct continuation of part one. direct continuation of part one. If you haven't seen it yet, go watch it right now If you haven't seen it yet, go watch it right now If you haven't seen it yet, go watch it right now .

[22:57] . . There are the six basic patterns. There are the six basic patterns. There are the six basic patterns. Singleton, observer, factory, strategy, Singleton, observer, factory, strategy, Singleton, observer, factory, strategy, decorator, Builder, which support everything we decorator, Builder, which support everything we decorator, Builder, which support everything we saw today.

[23:06] saw today. saw today. And if you've already seen it, I recommend rewatching it And if you've already seen it, I recommend rewatching it And if you've already seen it, I recommend rewatching it with these six cool ideas in mind.

[23:11] with these six cool ideas in mind. with these six cool ideas in mind. You'll notice how they combine. I've included You'll notice how they combine. I've included You'll notice how they combine. I've included the link in the card and in the the link in the card and in the the link in the card and in the description.

[23:17] description. description. If this was helpful, please give it a like and If this was helpful, please give it a like and If this was helpful, please give it a like and subscribe so YouTube will let me subscribe so YouTube will let me subscribe so YouTube will let me keep making them.

[23:22] keep making them. keep making them. And tell me in the comments which of And tell me in the comments which of And tell me in the comments which of these 12 patterns you used without knowing their these 12 patterns you used without knowing their these 12 patterns you used without knowing their name.

[23:27] name. name. And send this video to the colleague who's still And send this video to the colleague who's still And send this video to the colleague who's still writing SQL directly from the writing SQL directly from the writing SQL directly from the controller.

[23:32] controller. controller. Bye, torticoders.
