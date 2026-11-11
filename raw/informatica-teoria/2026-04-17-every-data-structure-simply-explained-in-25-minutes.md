# Every Data Structure Simply Explained in 25 Minutes!

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=vVL6NFzr0Rg)
- **Canal**: Codist
- **Publicado**: 2026-04-17
- **Recopilado**: 2026-11-11
- **Idioma**: en (subtítulos automáticos en (yt-dlp) (yt-dlp, auto), transcripción literal)
- **Duración**: 28:20

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:03] This video is sponsored by Inforge, the This video is sponsored by Inforge, the back end built for AI coding agents. back end built for AI coding agents. back end built for AI coding agents. Arrays. Arrays. Arrays. At a low level, much of what a computer At a low level, much of what a computer At a low level, much of what a computer does comes down to storing data in does comes down to storing data in does comes down to storing data in memory, laid out in a precise, ordered memory, laid out in a precise, ordered

[00:15] memory, laid out in a precise, ordered way. way. way. One of the simplest and most powerful One of the simplest and most powerful One of the simplest and most powerful ways to organize that data is something ways to organize that data is something ways to organize that data is something called an array.

[00:22] called an array. called an array. And from this simple idea, almost And from this simple idea, almost And from this simple idea, almost everything else in programming begins. everything else in programming begins. everything else in programming begins. An array is a fixed-size, ordered An array is a fixed-size, ordered An array is a fixed-size, ordered collection of items where every item collection of items where every item collection of items where every item sits at a numbered position.

[00:32] sits at a numbered position. sits at a numbered position. Think of seats in a movie theater. Seat Think of seats in a movie theater. Seat Think of seats in a movie theater. Seat one, seat two, seat three, and so on. one, seat two, seat three, and so on.

[00:38] one, seat two, seat three, and so on. Each seat has a precise label. Each seat has a precise label. Each seat has a precise label. If someone asks for seat 47, you don't If someone asks for seat 47, you don't If someone asks for seat 47, you don't check every seat before it. You go check every seat before it. You go check every seat before it. You go straight to seat 47 and you're there.

[00:47] straight to seat 47 and you're there. straight to seat 47 and you're there. That's the essence of an array. That's the essence of an array. That's the essence of an array. Every element has a fixed position, and Every element has a fixed position, and Every element has a fixed position, and that position lets you access it that position lets you access it that position lets you access it instantly.

[00:55] instantly. instantly. So, the way this works is that every So, the way this works is that every So, the way this works is that every item in an array is stored right next to item in an array is stored right next to item in an array is stored right next to each other in memory. And because of each other in memory. And because of each other in memory. And because of that neat, predictable layout, the that neat, predictable layout, the that neat, predictable layout, the computer always knows exactly where any

[01:04] computer always knows exactly where any computer always knows exactly where any item lives. item lives. item lives. Finding item number 40,000 takes the Finding item number 40,000 takes the Finding item number 40,000 takes the exact same time as finding item number exact same time as finding item number exact same time as finding item number four, and it's O of one.

[01:12] four, and it's O of one. four, and it's O of one. That's remarkable. That's remarkable. That's remarkable. But arrays come with an important But arrays come with an important But arrays come with an important constraint.

[01:17] constraint. constraint. Their size is fixed at the moment of Their size is fixed at the moment of Their size is fixed at the moment of creation, and this size does not change. creation, and this size does not change. creation, and this size does not change. Expanding an array is not a simple Expanding an array is not a simple Expanding an array is not a simple extension. It requires allocating a extension. It requires allocating a extension. It requires allocating a completely new block of memory and

[01:29] completely new block of memory and completely new block of memory and copying every existing element into it. copying every existing element into it. copying every existing element into it. Insertion into an array introduces a Insertion into an array introduces a Insertion into an array introduces a similar limitation.

[01:37] similar limitation. similar limitation. Placing an element in the middle is not Placing an element in the middle is not Placing an element in the middle is not just a local operation. It requires just a local operation. It requires just a local operation. It requires shifting every subsequent element one shifting every subsequent element one shifting every subsequent element one position forward to make space.

[01:45] position forward to make space. position forward to make space. As a result, while accessing elements is As a result, while accessing elements is As a result, while accessing elements is immediate and efficient, modifying the immediate and efficient, modifying the immediate and efficient, modifying the structure can become costly, especially structure can become costly, especially structure can become costly, especially as the array grows larger.

[01:55] as the array grows larger. as the array grows larger. This is the trade-off that sits quietly This is the trade-off that sits quietly This is the trade-off that sits quietly beneath the simplicity of arrays. beneath the simplicity of arrays.

[01:59] beneath the simplicity of arrays. So, arrays are blazing fast for reading, So, arrays are blazing fast for reading, So, arrays are blazing fast for reading, but slow and rigid when the data keeps but slow and rigid when the data keeps but slow and rigid when the data keeps changing.

[02:05] changing. changing. Still, arrays appear everywhere. Still, arrays appear everywhere. Still, arrays appear everywhere. They underlie pixels in an image, frames They underlie pixels in an image, frames They underlie pixels in an image, frames in a video stream, situations where in a video stream, situations where in a video stream, situations where position is fixed and known in advance.

[02:16] position is fixed and known in advance. position is fixed and known in advance. But the moment you need something more But the moment you need something more But the moment you need something more flexible, that's where the next data flexible, that's where the next data flexible, that's where the next data structure comes in. And it solves the structure comes in. And it solves the structure comes in. And it solves the exact problem arrays can't.

[02:25] exact problem arrays can't. exact problem arrays can't. Linked lists. Linked lists. Linked lists. Imagine a treasure hunt where each clue Imagine a treasure hunt where each clue Imagine a treasure hunt where each clue only tells you where the next clue is.

[02:31] only tells you where the next clue is. only tells you where the next clue is. You don't know where clue number four is You don't know where clue number four is You don't know where clue number four is until you found clue number three.

[02:35] until you found clue number three. until you found clue number three. You follow the chain one step at a time, You follow the chain one step at a time, You follow the chain one step at a time, never skipping ahead. That's a linked never skipping ahead. That's a linked never skipping ahead. That's a linked list. And it was invented specifically list. And it was invented specifically list. And it was invented specifically to fix the rigidity that arrays suffer to fix the rigidity that arrays suffer

[02:44] to fix the rigidity that arrays suffer from. from. from. A linked list is a chain of nodes where A linked list is a chain of nodes where A linked list is a chain of nodes where each node stores its value and a pointer each node stores its value and a pointer each node stores its value and a pointer to the next node. The nodes don't sit to the next node. The nodes don't sit to the next node. The nodes don't sit next to each other in memory.

[02:54] next to each other in memory. next to each other in memory. They're scattered everywhere. They're scattered everywhere. They're scattered everywhere. But they stay connected through those But they stay connected through those But they stay connected through those pointers, like clues in a chain.

[03:00] pointers, like clues in a chain. pointers, like clues in a chain. Here's where it gets interesting. Here's where it gets interesting. Here's where it gets interesting. Remember how inserting into an array Remember how inserting into an array Remember how inserting into an array meant shifting thousands of items? With meant shifting thousands of items? With meant shifting thousands of items? With a linked list, you insert by updating a linked list, you insert by updating a linked list, you insert by updating two pointers. That's it. Two pointer

[03:10] two pointers. That's it. Two pointer two pointers. That's it. Two pointer changes and the new item is in. Doesn't changes and the new item is in. Doesn't changes and the new item is in. Doesn't matter if there are 10 nodes or 10 matter if there are 10 nodes or 10 matter if there are 10 nodes or 10 million.

[03:15] million. million. Inserting is instant. Removal follows Inserting is instant. Removal follows Inserting is instant. Removal follows naturally from the structure itself. naturally from the structure itself. naturally from the structure itself. Each element exists only through its Each element exists only through its Each element exists only through its connection to the next, so removing one connection to the next, so removing one connection to the next, so removing one does not require shifting anything

[03:26] does not require shifting anything does not require shifting anything around. Instead, the link is simply around. Instead, the link is simply around. Instead, the link is simply redirected, bypassing the element redirected, bypassing the element redirected, bypassing the element entirely.

[03:32] entirely. entirely. The chain closes in on itself, as if The chain closes in on itself, as if The chain closes in on itself, as if that node was never there. A small, that node was never there. A small, that node was never there. A small, local adjustment with no effect on the local adjustment with no effect on the local adjustment with no effect on the rest of the structure.

[03:41] rest of the structure. rest of the structure. But, and this is the part that trips But, and this is the part that trips But, and this is the part that trips people up, what you gain in flexibility, people up, what you gain in flexibility, people up, what you gain in flexibility, you give up in speed of access. To find you give up in speed of access. To find you give up in speed of access. To find a specific item in a linked list, you a specific item in a linked list, you a specific item in a linked list, you always start at the beginning and follow

[03:52] always start at the beginning and follow always start at the beginning and follow the chain. the chain. the chain. Access is no longer direct. There is no Access is no longer direct. There is no Access is no longer direct. There is no index to jump to, no fixed position to index to jump to, no fixed position to index to jump to, no fixed position to compute. Instead, each element must be compute. Instead, each element must be compute. Instead, each element must be reached by following the chain from the

[04:03] reached by following the chain from the reached by following the chain from the beginning, one step at a time. beginning, one step at a time. beginning, one step at a time. Finding an element near the end of a Finding an element near the end of a Finding an element near the end of a long list means traversing everything long list means traversing everything long list means traversing everything that comes before it.

[04:12] that comes before it. that comes before it. A list of 10,000 nodes may require A list of 10,000 nodes may require A list of 10,000 nodes may require 10,000 steps. 10,000 steps. 10,000 steps. There are no shortcuts. There are no shortcuts.

[04:18] There are no shortcuts. Only a path defined by the links Only a path defined by the links Only a path defined by the links themselves. themselves. themselves. So, arrays are fast to read, slow to So, arrays are fast to read, slow to So, arrays are fast to read, slow to change. Linked lists are slow to read, change. Linked lists are slow to read, change. Linked lists are slow to read, fast to change. Two different data fast to change. Two different data fast to change. Two different data structures for two different jobs.

[04:34] Stacks. Stacks. You know that satisfying feeling when You know that satisfying feeling when You know that satisfying feeling when you hit control plus C and your last you hit control plus C and your last you hit control plus C and your last mistake just disappears?

[04:40] mistake just disappears? mistake just disappears? That's a stack. Silently running every That's a stack. Silently running every That's a stack. Silently running every undo feature in every app you've ever undo feature in every app you've ever undo feature in every app you've ever used.

[04:46] used. used. A stack is a data structure where the A stack is a data structure where the A stack is a data structure where the last item in is always the first item last item in is always the first item last item in is always the first item out.

[04:51] out. out. Picture a stack of plates. You add Picture a stack of plates. You add Picture a stack of plates. You add plates to the top, you take plates from plates to the top, you take plates from plates to the top, you take plates from the top, nobody pulls from the bottom.

[04:57] the top, nobody pulls from the bottom. the top, nobody pulls from the bottom. The last plate placed is the first one The last plate placed is the first one The last plate placed is the first one grabbed. Stack has two main operations.

[05:01] grabbed. Stack has two main operations. grabbed. Stack has two main operations. That's all. Push and pop. Push adds to That's all. Push and pop. Push adds to That's all. Push and pop. Push adds to the top, pop removes from the top. You the top, pop removes from the top. You the top, pop removes from the top. You can't touch the middle. You can't reach can't touch the middle. You can't reach can't touch the middle. You can't reach the bottom. Top only, every time.

[05:10] the bottom. Top only, every time. the bottom. Top only, every time. And this limitation is actually And this limitation is actually And this limitation is actually brilliant. Because of it, both push and brilliant. Because of it, both push and brilliant. Because of it, both push and pop are instant. Stacks are everywhere, pop are instant. Stacks are everywhere, pop are instant. Stacks are everywhere, quietly shaping how we interact with the quietly shaping how we interact with the

[05:19] quietly shaping how we interact with the world. Your browser's back button is a world. Your browser's back button is a world. Your browser's back button is a perfect example. Each page you visit perfect example. Each page you visit perfect example. Each page you visit gets placed on top, and when you go gets placed on top, and when you go gets placed on top, and when you go back, the most recent page peels away back, the most recent page peels away back, the most recent page peels away first, revealing what came before.

[05:30] first, revealing what came before. first, revealing what came before. The call stack running your code works The call stack running your code works The call stack running your code works the same way. Functions layer on top of the same way. Functions layer on top of the same way. Functions layer on top of each other, and the most recent call is each other, and the most recent call is each other, and the most recent call is always the one to finish next. Even undo always the one to finish next. Even undo

[05:39] always the one to finish next. Even undo in a document editor is just a stack at in a document editor is just a stack at in a document editor is just a stack at work. Each step removed in reverse work. Each step removed in reverse work. Each step removed in reverse order, one by one.

[05:46] order, one by one. order, one by one. A stack isn't just a data structure, A stack isn't just a data structure, A stack isn't just a data structure, it's the rhythm of last in, first out, it's the rhythm of last in, first out, it's the rhythm of last in, first out, appearing everywhere once you start appearing everywhere once you start appearing everywhere once you start looking.

[05:54] looking. looking. But here's the thing. But here's the thing. But here's the thing. A stack only cares about what happened A stack only cares about what happened A stack only cares about what happened most recently. What if you need the most recently. What if you need the most recently. What if you need the opposite? What if the oldest thing opposite? What if the oldest thing opposite? What if the oldest thing waiting is the one that should go first?

[06:04] waiting is the one that should go first? waiting is the one that should go first? For that, you flip the logic entirely. Queues. Queues. A stack serves the newest item first. A A stack serves the newest item first. A A stack serves the newest item first. A queue does the exact opposite. It serves queue does the exact opposite. It serves queue does the exact opposite. It serves the oldest. A queue is first in, first the oldest. A queue is first in, first the oldest. A queue is first in, first out.

[06:19] out. out. Simple as a line at a coffee shop. The Simple as a line at a coffee shop. The Simple as a line at a coffee shop. The person who arrived first gets served person who arrived first gets served person who arrived first gets served first. No cutting, no skipping. You join first. No cutting, no skipping. You join first. No cutting, no skipping. You join at the back, you wait your turn.

[06:27] at the back, you wait your turn. at the back, you wait your turn. Queue has two main operations, such as Queue has two main operations, such as Queue has two main operations, such as enqueue and dequeue. Enqueue adds to the enqueue and dequeue. Enqueue adds to the enqueue and dequeue. Enqueue adds to the back. Dequeue removes from the front.

[06:35] back. Dequeue removes from the front. back. Dequeue removes from the front. Just like a stack, you don't touch the Just like a stack, you don't touch the Just like a stack, you don't touch the middle. middle. middle. And just like a stack, both operations And just like a stack, both operations And just like a stack, both operations are instant.

[06:41] are instant. are instant. But the behavior is completely But the behavior is completely But the behavior is completely different. A stack is like a to-do list different. A stack is like a to-do list different. A stack is like a to-do list where you always work on the newest where you always work on the newest where you always work on the newest task. A queue is like a to-do list where task. A queue is like a to-do list where task. A queue is like a to-do list where you always finish what you started

[06:50] you always finish what you started you always finish what you started first. When you hit print in an office first. When you hit print in an office first. When you hit print in an office with a shared printer, your document with a shared printer, your document with a shared printer, your document joins a queue. The printer works through joins a queue. The printer works through joins a queue. The printer works through them in order. When a web server gets them in order. When a web server gets

[06:59] them in order. When a web server gets slammed with thousands of requests at slammed with thousands of requests at slammed with thousands of requests at once, it lines them up and processes once, it lines them up and processes once, it lines them up and processes them one by one. Keyboard inputs, game them one by one. Keyboard inputs, game them one by one. Keyboard inputs, game loading screens, customer support loading screens, customer support loading screens, customer support tickets.

[07:08] tickets. tickets. All are the example use cases of queues. All are the example use cases of queues. All are the example use cases of queues. Stacks and queues each limit you to a Stacks and queues each limit you to a Stacks and queues each limit you to a single end. One serves the most recent, single end. One serves the most recent, single end. One serves the most recent, the other serves the earliest. But the other serves the earliest. But the other serves the earliest. But real-world data isn't always so

[07:21] real-world data isn't always so real-world data isn't always so predictable. predictable. predictable. Sometimes you need to reach both ends, Sometimes you need to reach both ends, Sometimes you need to reach both ends, grabbing the newest or the oldest, grabbing the newest or the oldest, grabbing the newest or the oldest, depending on the situation.

[07:28] depending on the situation. depending on the situation. Meeting that challenge requires a Meeting that challenge requires a Meeting that challenge requires a structure that can flex at both sides, structure that can flex at both sides, structure that can flex at both sides, introducing a layer of versatility that introducing a layer of versatility that introducing a layer of versatility that makes the behavior of your data far more makes the behavior of your data far more makes the behavior of your data far more dynamic. That's where the deque comes

[07:38] dynamic. That's where the deque comes dynamic. That's where the deque comes in. Deque. in. Deque. in. Deque. It is a double-ended queue data It is a double-ended queue data It is a double-ended queue data structure. In the deque, you can add or structure. In the deque, you can add or structure. In the deque, you can add or remove from the front, as well as add or remove from the front, as well as add or remove from the front, as well as add or remove from the back. Both ends are live

[07:51] remove from the back. Both ends are live remove from the back. Both ends are live all the time. all the time. all the time. Think of a train where passengers can Think of a train where passengers can Think of a train where passengers can board and exit from either side. More board and exit from either side. More board and exit from either side. More flexible than a regular queue, more flexible than a regular queue, more flexible than a regular queue, more flexible than a stack.

[08:00] flexible than a stack. flexible than a stack. In fact, a deque is both at once. If you In fact, a deque is both at once. If you In fact, a deque is both at once. If you only use the back end, it behaves only use the back end, it behaves only use the back end, it behaves exactly like a stack. If you add to the exactly like a stack. If you add to the exactly like a stack. If you add to the back and remove from the front, it back and remove from the front, it back and remove from the front, it behaves exactly like a queue. It's the

[08:12] behaves exactly like a queue. It's the behaves exactly like a queue. It's the shape-shifting version of both. shape-shifting version of both. shape-shifting version of both. Sliding windows in data processing Sliding windows in data processing Sliding windows in data processing illustrate a scenario where data flows illustrate a scenario where data flows illustrate a scenario where data flows continuously. New values are added at continuously. New values are added at continuously. New values are added at one end, while old ones are removed from

[08:23] one end, while old ones are removed from one end, while old ones are removed from the other. This is the domain of a the other. This is the domain of a the other. This is the domain of a deque, a double-ended queue. It powers deque, a double-ended queue. It powers deque, a double-ended queue. It powers browser history that allows both back browser history that allows both back browser history that allows both back and forward navigation, undo and redo and forward navigation, undo and redo

[08:33] and forward navigation, undo and redo systems that move in either direction, systems that move in either direction, systems that move in either direction, and scheduling systems that handle and scheduling systems that handle and scheduling systems that handle priority tasks at the front, while still priority tasks at the front, while still priority tasks at the front, while still accepting regular additions at the back.

[08:43] accepting regular additions at the back. accepting regular additions at the back. Deque is a specialist data structure. Deque is a specialist data structure. Deque is a specialist data structure. Most problems don't need them, but when Most problems don't need them, but when Most problems don't need them, but when a problem does need both ends, nothing a problem does need both ends, nothing a problem does need both ends, nothing else fits. Hash maps.

[08:51] else fits. Hash maps. else fits. Hash maps. You search mom in your phone contacts. You search mom in your phone contacts. You search mom in your phone contacts. Her number appears instantly. You didn't Her number appears instantly. You didn't Her number appears instantly. You didn't scroll, you didn't wait, you just got scroll, you didn't wait, you just got scroll, you didn't wait, you just got the answer.

[08:58] the answer. the answer. That's a hash map, and understanding how That's a hash map, and understanding how That's a hash map, and understanding how it actually works will change the way it actually works will change the way it actually works will change the way you think about software. A hash map you think about software. A hash map you think about software. A hash map stores data as key-value pairs and stores data as key-value pairs and stores data as key-value pairs and retrieves any value instantly using its

[09:09] retrieves any value instantly using its retrieves any value instantly using its key. The key is mom. The value is her key. The key is mom. The value is her key. The key is mom. The value is her phone number. phone number.

[09:14] phone number. Give the map the key, get the value Give the map the key, get the value Give the map the key, get the value back, every time, instantly. back, every time, instantly. back, every time, instantly. Here's the clever part. When you store Here's the clever part. When you store Here's the clever part. When you store something in a hash map, it runs the key something in a hash map, it runs the key something in a hash map, it runs the key through a hash function, through a hash function,

[09:24] through a hash function, a mathematical formula that converts any a mathematical formula that converts any a mathematical formula that converts any key into a number. That number points to key into a number. That number points to key into a number. That number points to a specific fixed slot in memory.

[09:32] a specific fixed slot in memory. a specific fixed slot in memory. So, mom might become slot 4,827. So, mom might become slot 4,827. So, mom might become slot 4,827. Her number gets stored there. Later, Her number gets stored there. Later, Her number gets stored there. Later, when you search for mom, the same when you search for mom, the same when you search for mom, the same formula runs again, gets the same formula runs again, gets the same formula runs again, gets the same number, and goes directly to slot 4,827.

[09:45] number, and goes directly to slot 4,827. number, and goes directly to slot 4,827. No searching through every contact, No searching through every contact, No searching through every contact, direct jump. direct jump. direct jump. This is what makes hash maps almost This is what makes hash maps almost This is what makes hash maps almost magical. It doesn't matter if you have magical. It doesn't matter if you have magical. It doesn't matter if you have 10 contacts or 10 million. Finding one

[09:55] 10 contacts or 10 million. Finding one 10 contacts or 10 million. Finding one is always instant. Without a hash map, is always instant. Without a hash map, is always instant. Without a hash map, finding something by name in a large finding something by name in a large finding something by name in a large list means scanning every item one by list means scanning every item one by list means scanning every item one by one until you hit a match. That gets one until you hit a match. That gets

[10:04] one until you hit a match. That gets slower and slower as the list grows. slower and slower as the list grows. slower and slower as the list grows. With a hash map, the size of the With a hash map, the size of the With a hash map, the size of the collection basically stops mattering.

[10:10] collection basically stops mattering. collection basically stops mattering. Python dictionaries are hash maps, Python dictionaries are hash maps, Python dictionaries are hash maps, JavaScript objects are also hash maps.

[10:14] JavaScript objects are also hash maps. JavaScript objects are also hash maps. All the modern database indexes are All the modern database indexes are All the modern database indexes are built on hash map principles. It's built on hash map principles. It's built on hash map principles. It's arguably the most important data arguably the most important data arguably the most important data structure in everyday programming.

[10:22] structure in everyday programming. structure in everyday programming. But, But, But, there's always a but. there's always a but. there's always a but. Hash maps use more memory than plain Hash maps use more memory than plain Hash maps use more memory than plain lists, and very occasionally, two lists, and very occasionally, two lists, and very occasionally, two different keys produce the same slot different keys produce the same slot different keys produce the same slot number.

[10:32] number. number. That's called a collision, and hash maps That's called a collision, and hash maps That's called a collision, and hash maps can also handle it. They're not can also handle it. They're not can also handle it. They're not flawless, they're just incredibly fast.

[10:39] flawless, they're just incredibly fast. flawless, they're just incredibly fast. Now, suppose the value no longer Now, suppose the value no longer Now, suppose the value no longer matters. You only want to check whether matters. You only want to check whether matters. You only want to check whether something exists or not.

[10:44] something exists or not. something exists or not. That's when the extra information fades That's when the extra information fades That's when the extra information fades away, away, away, leaving just the keys. leaving just the keys.

[10:49] leaving just the keys. What remains is a simpler idea, a data What remains is a simpler idea, a data What remains is a simpler idea, a data structure built purely for checking structure built purely for checking structure built purely for checking membership.

[10:54] membership. membership. Hash sets. Hash sets. Hash sets. A hash set is a hash map with no values, A hash set is a hash map with no values, A hash set is a hash map with no values, just keys. Its entire purpose is to just keys. Its entire purpose is to just keys. Its entire purpose is to answer one thing as fast as possible. Is answer one thing as fast as possible. Is answer one thing as fast as possible. Is this item in the collection or not?

[11:05] this item in the collection or not? this item in the collection or not? Think of this scenario for better Think of this scenario for better Think of this scenario for better understanding. understanding. understanding. A nightclub guest list. The bouncer A nightclub guest list. The bouncer A nightclub guest list. The bouncer doesn't care about your table number or doesn't care about your table number or doesn't care about your table number or your reservation details. He only needs

[11:14] your reservation details. He only needs your reservation details. He only needs to know, to know, to know, are you on the list or not? If yes, come are you on the list or not? If yes, come are you on the list or not? If yes, come in.

[11:19] in. in. If you are not in the list, step aside. If you are not in the list, step aside. If you are not in the list, step aside. That is the essence of hash set data That is the essence of hash set data That is the essence of hash set data structure.

[11:24] structure. structure. Checking membership in a hash set is Checking membership in a hash set is Checking membership in a hash set is instant. Adding and removing is also instant. Adding and removing is also instant. Adding and removing is also instant. And when the question is instant. And when the question is instant. And when the question is whether there are any duplicates in the whether there are any duplicates in the whether there are any duplicates in the list, the answer is no, because hash set

[11:35] list, the answer is no, because hash set list, the answer is no, because hash set design is such a way that every item design is such a way that every item design is such a way that every item appears exactly once. appears exactly once.

[11:39] appears exactly once. Without a hash set, checking if Without a hash set, checking if Without a hash set, checking if something exists in a large list means something exists in a large list means something exists in a large list means scanning through every item. But if we scanning through every item. But if we scanning through every item. But if we use a hash set, the answer is instant use a hash set, the answer is instant use a hash set, the answer is instant every time, regardless of how large the

[11:50] every time, regardless of how large the every time, regardless of how large the collection grows. collection grows. collection grows. Tracking which users have seen a Tracking which users have seen a Tracking which users have seen a notification, filtering duplicates from notification, filtering duplicates from notification, filtering duplicates from a set, checking if a username is already a set, checking if a username is already a set, checking if a username is already taken.

[11:59] taken. taken. Again and again, the same idea appears. Again and again, the same idea appears. Again and again, the same idea appears. Not storing more, just knowing whether Not storing more, just knowing whether Not storing more, just knowing whether it's there.

[12:05] it's there. it's there. These are all hash sets. It's smaller These are all hash sets. It's smaller These are all hash sets. It's smaller and simpler than a hash map. and simpler than a hash map. and simpler than a hash map. But for this one job, it's perfect.

[12:12] But for this one job, it's perfect. But for this one job, it's perfect. Hey, up to this point, everything has Hey, up to this point, everything has Hey, up to this point, everything has been flat, a direct mapping from key to been flat, a direct mapping from key to been flat, a direct mapping from key to results.

[12:17] results. results. But not all data fits into that shape. But not all data fits into that shape. But not all data fits into that shape. Some of it naturally forms layers, Some of it naturally forms layers, Some of it naturally forms layers, branching into deeper structure.

[12:23] branching into deeper structure. branching into deeper structure. And to represent that, you need a And to represent that, you need a And to represent that, you need a different kind of data structure, like different kind of data structure, like different kind of data structure, like trees.

[12:29] trees. trees. Trees. Trees. Trees. Open your file explorer. At the very Open your file explorer. At the very Open your file explorer. At the very top, a single starting point. From top, a single starting point. From top, a single starting point. From there, it splits into folders. Each of there, it splits into folders. Each of there, it splits into folders. Each of those splits again, into more folders, those splits again, into more folders, those splits again, into more folders, and eventually, into files.

[12:42] and eventually, into files. and eventually, into files. A structure that keeps branching A structure that keeps branching A structure that keeps branching outward, step by step. outward, step by step. outward, step by step. Every path flows in one direction, from Every path flows in one direction, from Every path flows in one direction, from the root down to the leaves. A quiet the root down to the leaves. A quiet the root down to the leaves. A quiet hierarchy, organizing everything you

[12:53] hierarchy, organizing everything you hierarchy, organizing everything you store. store. store. This is the tree data structure. This is the tree data structure. This is the tree data structure. A tree is a hierarchical data structure A tree is a hierarchical data structure A tree is a hierarchical data structure with one root at the top, nodes with one root at the top, nodes with one root at the top, nodes branching below it, and leaf nodes at branching below it, and leaf nodes at

[13:03] branching below it, and leaf nodes at the very bottom that have no children. the very bottom that have no children. the very bottom that have no children. File systems, web pages. File systems, web pages. File systems, web pages. Every HTML tag is a node, nested inside Every HTML tag is a node, nested inside Every HTML tag is a node, nested inside parent tags, branching into children.

[13:15] parent tags, branching into children. parent tags, branching into children. Comment threads, where replies branch Comment threads, where replies branch Comment threads, where replies branch off replies. off replies. off replies. Decision trees in machine learning.

[13:20] Decision trees in machine learning. Decision trees in machine learning. All of these are tree data structures in All of these are tree data structures in All of these are tree data structures in works. works. works. Trees are natural for anything with a Trees are natural for anything with a Trees are natural for anything with a parent-child relationship, but a plain parent-child relationship, but a plain parent-child relationship, but a plain tree has no rules about where values go.

[13:30] tree has no rules about where values go. tree has no rules about where values go. Items aren't sorted. Items aren't sorted. Items aren't sorted. Means potentially checking every single Means potentially checking every single Means potentially checking every single node.

[13:35] node. node. Which raises a question. Which raises a question. Which raises a question. What if you could take a tree, impose What if you could take a tree, impose What if you could take a tree, impose one simple rule on it, and suddenly make one simple rule on it, and suddenly make one simple rule on it, and suddenly make searching dramatically faster?

[13:43] searching dramatically faster? searching dramatically faster? That's where the binary search tree That's where the binary search tree That's where the binary search tree comes in. comes in. comes in. And speaking of smarter structures that And speaking of smarter structures that And speaking of smarter structures that just work, just work, just work, that's actually a perfect way to that's actually a perfect way to that's actually a perfect way to describe today's sponsor, Insforge.

[13:52] describe today's sponsor, Insforge. describe today's sponsor, Insforge. Because just like a BST removes the Because just like a BST removes the Because just like a BST removes the guesswork from searching, Insforge guesswork from searching, Insforge guesswork from searching, Insforge removes the guesswork from building your removes the guesswork from building your removes the guesswork from building your backend.

[13:59] backend. backend. Here's the thing. If you're using tools Here's the thing. If you're using tools Here's the thing. If you're using tools like Cursor, Cloid Code, or GitHub like Cursor, Cloid Code, or GitHub like Cursor, Cloid Code, or GitHub Copilot to build apps, your agent is Copilot to build apps, your agent is Copilot to build apps, your agent is great at writing front-end code.

[14:08] great at writing front-end code. great at writing front-end code. But the moment it has to set up a But the moment it has to set up a But the moment it has to set up a database, handle authentication, or database, handle authentication, or database, handle authentication, or deploy backend logic, things slow down deploy backend logic, things slow down deploy backend logic, things slow down fast.

[14:15] fast. fast. Insforge fixes that by giving your Insforge fixes that by giving your Insforge fixes that by giving your coding agent a fully featured backend. coding agent a fully featured backend. coding agent a fully featured backend. Postgres database, authentication, file Postgres database, authentication, file Postgres database, authentication, file storage, edge functions, real-time storage, edge functions, real-time storage, edge functions, real-time updates, and even AI model access.

[14:27] updates, and even AI model access. updates, and even AI model access. All ready to go from the moment you All ready to go from the moment you All ready to go from the moment you connect it. connect it. connect it. Here is the best part. You don't need to Here is the best part. You don't need to Here is the best part. You don't need to configure dashboards. You don't wrestle configure dashboards. You don't wrestle configure dashboards. You don't wrestle with infrastructure.

[14:36] with infrastructure. with infrastructure. You just describe what you want to You just describe what you want to You just describe what you want to build, and your agent ships it. Insforge build, and your agent ships it. Insforge build, and your agent ships it. Insforge quietly handles everything your agent quietly handles everything your agent quietly handles everything your agent needs behind the scenes.

[14:44] needs behind the scenes. needs behind the scenes. In fact, benchmarks show that AI agents In fact, benchmarks show that AI agents In fact, benchmarks show that AI agents that are using Insforge are 1.6 times that are using Insforge are 1.6 times that are using Insforge are 1.6 times faster, use 30% fewer tokens, and hit faster, use 30% fewer tokens, and hit faster, use 30% fewer tokens, and hit nearly 1.7 times higher accuracy nearly 1.7 times higher accuracy nearly 1.7 times higher accuracy compared to other backends. It works

[14:58] compared to other backends. It works compared to other backends. It works with Next.js, React, Svelte, Vue, and with Next.js, React, Svelte, Vue, and with Next.js, React, Svelte, Vue, and more. more. more. So, check it out at insforge.dev.

[15:05] So, check it out at insforge.dev. So, check it out at insforge.dev. Link is in the description. Now, back to Link is in the description. Now, back to Link is in the description. Now, back to binary search trees. binary search trees.

[15:09] binary search trees. Do you know the number guessing game? Do you know the number guessing game? Do you know the number guessing game? Someone picks a number between 1 and Someone picks a number between 1 and Someone picks a number between 1 and 1,000. You guess 500. Too high. Now, you 1,000. You guess 500. Too high. Now, you 1,000. You guess 500. Too high. Now, you only think about 1 to 499.

[15:19] only think about 1 to 499. only think about 1 to 499. This time, you guess 250, and it's said, This time, you guess 250, and it's said, This time, you guess 250, and it's said, "Too low." Likewise, every guess cuts "Too low." Likewise, every guess cuts "Too low." Likewise, every guess cuts the remaining possibilities the remaining possibilities the remaining possibilities That one rule changes everything.

[15:28] That one rule changes everything. That one rule changes everything. Now, when you search for a value, you Now, when you search for a value, you Now, when you search for a value, you start at the root. Is it smaller? Go start at the root. Is it smaller? Go start at the root. Is it smaller? Go left. Is it larger? Go right.

[15:34] left. Is it larger? Go right. left. Is it larger? Go right. Each step eliminates an entire half of Each step eliminates an entire half of Each step eliminates an entire half of the remaining tree. In a well-balanced the remaining tree. In a well-balanced the remaining tree. In a well-balanced BST with a million nodes, you might need BST with a million nodes, you might need BST with a million nodes, you might need only 20 steps to find any item. 20.

[15:45] only 20 steps to find any item. 20. only 20 steps to find any item. 20. Compared to a regular tree where Compared to a regular tree where Compared to a regular tree where searching can mean checking every node, searching can mean checking every node, searching can mean checking every node, a BST is on another level. The structure a BST is on another level. The structure a BST is on another level. The structure of the data does the work for you.

[15:53] of the data does the work for you. of the data does the work for you. But here's the hidden weakness. If you But here's the hidden weakness. If you But here's the hidden weakness. If you add items in already sorted order, 1, add items in already sorted order, 1, add items in already sorted order, 1, then 2, then 3, then 4, the tree just then 2, then 3, then 4, the tree just then 2, then 3, then 4, the tree just grows in a straight line. No branching, grows in a straight line. No branching,

[16:04] grows in a straight line. No branching, no having. It looks like a tree, but no having. It looks like a tree, but no having. It looks like a tree, but behaves like a linked list. Slow again. behaves like a linked list. Slow again.

[16:09] behaves like a linked list. Slow again. That's why self-balancing BST exist. But That's why self-balancing BST exist. But That's why self-balancing BST exist. But the core idea is left must be smaller the core idea is left must be smaller the core idea is left must be smaller than the right is the foundation of than the right is the foundation of than the right is the foundation of sorted tree data structures everywhere.

[16:19] sorted tree data structures everywhere. sorted tree data structures everywhere. Binary search trees are powerful when Binary search trees are powerful when Binary search trees are powerful when searching through ordered data.

[16:23] searching through ordered data. searching through ordered data. But in some cases, searching isn't the But in some cases, searching isn't the But in some cases, searching isn't the goal at all. What matters is always goal at all. What matters is always goal at all. What matters is always having immediate access to a single most having immediate access to a single most having immediate access to a single most important element available instantly important element available instantly

[16:33] important element available instantly every time. every time. every time. And for that job, we have heap data And for that job, we have heap data And for that job, we have heap data structure. Heap. structure. Heap. structure. Heap. Imagine this, an emergency room. A Imagine this, an emergency room. A Imagine this, an emergency room. A patient walks in with a minor headache.

[16:43] patient walks in with a minor headache. patient walks in with a minor headache. Two minutes later, someone arrives with Two minutes later, someone arrives with Two minutes later, someone arrives with a heart attack. Who gets seen first? Not a heart attack. Who gets seen first? Not a heart attack. Who gets seen first? Not the headache. Urgency beats arrival the headache. Urgency beats arrival the headache. Urgency beats arrival time. The most critical case always time. The most critical case always

[16:53] time. The most critical case always jumps to the front automatically. No jumps to the front automatically. No jumps to the front automatically. No manual resorting required. manual resorting required. manual resorting required. That's a heap data structure.

[16:59] That's a heap data structure. That's a heap data structure. A heap is a tree-based structure that A heap is a tree-based structure that A heap is a tree-based structure that always keeps the highest priority item always keeps the highest priority item always keeps the highest priority item at the very top, at the very top, at the very top, and reorganizes itself automatically and reorganizes itself automatically and reorganizes itself automatically every time something is added or

[17:09] every time something is added or every time something is added or removed. removed. removed. In a max heap, the largest value rises In a max heap, the largest value rises In a max heap, the largest value rises to the top. In a min heap, it's the to the top. In a min heap, it's the to the top. In a min heap, it's the smallest.

[17:16] smallest. smallest. Either way, the most important element Either way, the most important element Either way, the most important element is always immediately accessible. is always immediately accessible. is always immediately accessible. And when it's removed, the structure And when it's removed, the structure And when it's removed, the structure quietly reorganizes itself, allowing the quietly reorganizes itself, allowing the quietly reorganizes itself, allowing the next in priority to take its place,

[17:27] next in priority to take its place, next in priority to take its place, efficiently. efficiently. efficiently. Without a heap, finding the highest Without a heap, finding the highest Without a heap, finding the highest priority item from a constantly changing priority item from a constantly changing priority item from a constantly changing list would mean sorting the whole list list would mean sorting the whole list list would mean sorting the whole list every time something new arrives.

[17:37] every time something new arrives. every time something new arrives. Imagine having millions of tasks, and Imagine having millions of tasks, and Imagine having millions of tasks, and every time a new one comes in, you have every time a new one comes in, you have every time a new one comes in, you have to sort the entire list again, just to to sort the entire list again, just to to sort the entire list again, just to find the most important one.

[17:45] find the most important one. find the most important one. That quickly becomes too slow to be That quickly becomes too slow to be That quickly becomes too slow to be practical. practical. practical. A heap avoids this completely by keeping A heap avoids this completely by keeping A heap avoids this completely by keeping things almost sorted at all times. So, things almost sorted at all times. So, things almost sorted at all times. So, the most important task is always right the most important task is always right

[17:56] the most important task is always right at the top, ready to be accessed at the top, ready to be accessed at the top, ready to be accessed instantly. instantly. instantly. Here are some real-world events where Here are some real-world events where Here are some real-world events where the heap shows its magic, like the task the heap shows its magic, like the task the heap shows its magic, like the task schedulers inside your operating system, schedulers inside your operating system,

[18:05] schedulers inside your operating system, deciding which process deserves the CPU deciding which process deserves the CPU deciding which process deserves the CPU right now. And your GPS app constantly right now. And your GPS app constantly right now. And your GPS app constantly recalculating the fastest route as recalculating the fastest route as recalculating the fastest route as traffic shifts. Anywhere that involves traffic shifts. Anywhere that involves traffic shifts. Anywhere that involves repeatedly pulling the most important

[18:16] repeatedly pulling the most important repeatedly pulling the most important item from a live, evolving data set. item from a live, evolving data set. item from a live, evolving data set. Heap is at work. Heap is at work.

[18:20] Heap is at work. Remember that, the word heap and stack Remember that, the word heap and stack Remember that, the word heap and stack also refers to a region of memory in also refers to a region of memory in also refers to a region of memory in programming. Completely different thing.

[18:28] programming. Completely different thing. programming. Completely different thing. Same word, two totally unrelated Same word, two totally unrelated Same word, two totally unrelated concepts. Don't let that confuse you. concepts. Don't let that confuse you.

[18:32] concepts. Don't let that confuse you. So far, every data structure we've So far, every data structure we've So far, every data structure we've covered works well for collections with covered works well for collections with covered works well for collections with clear individual items. But the real clear individual items. But the real clear individual items. But the real world isn't always like that. Sometimes world isn't always like that. Sometimes world isn't always like that. Sometimes data isn't a list or a tree.

[18:43] data isn't a list or a tree. data isn't a list or a tree. It's a web. It's It's a web. It's It's a web. It's connections. It's relationships going in connections. It's relationships going in connections. It's relationships going in every direction. And for that, you need every direction. And for that, you need every direction. And for that, you need something completely different.

[18:51] something completely different. something completely different. Graphs. Graphs. Graphs. Okay, this is where data structures get Okay, this is where data structures get Okay, this is where data structures get really interesting.

[18:56] really interesting. really interesting. Forget the nice, clean hierarchies of Forget the nice, clean hierarchies of Forget the nice, clean hierarchies of trees. trees. trees. Graphs are messy, chaotic, and honestly, Graphs are messy, chaotic, and honestly, Graphs are messy, chaotic, and honestly, that's what makes them powerful.

[19:04] that's what makes them powerful. that's what makes them powerful. Here's the simplest way to think about Here's the simplest way to think about Here's the simplest way to think about it. Graphs are just dots and lines. Dots it. Graphs are just dots and lines. Dots it. Graphs are just dots and lines. Dots are called vertices or nodes, and lines are called vertices or nodes, and lines are called vertices or nodes, and lines connecting them are called edges. That's connecting them are called edges. That's

[19:13] connecting them are called edges. That's literally it. literally it. literally it. But here's where it clicks. But here's where it clicks. But here's where it clicks. Facebook is a giant graph. You're a Facebook is a giant graph. You're a Facebook is a giant graph. You're a node, your friends are nodes, and every node, your friends are nodes, and every node, your friends are nodes, and every friendship is an edge connecting you.

[19:23] friendship is an edge connecting you. friendship is an edge connecting you. Photos, groups, pages, comments, Photos, groups, pages, comments, Photos, groups, pages, comments, all are nodes, and every like, all are nodes, and every like, all are nodes, and every like, share, and connection is the edges of share, and connection is the edges of share, and connection is the edges of that graph.

[19:32] that graph. that graph. The entire social network is just one The entire social network is just one The entire social network is just one massive graph. massive graph. massive graph. Or, think about Google Maps. Cities are Or, think about Google Maps. Cities are Or, think about Google Maps. Cities are nodes, roads are edges. When you ask for nodes, roads are edges. When you ask for nodes, roads are edges. When you ask for directions, it's searching through that directions, it's searching through that

[19:42] directions, it's searching through that graph to find the shortest path. graph to find the shortest path. graph to find the shortest path. Now, there are different types of Now, there are different types of Now, there are different types of graphs. Undirected graphs, graphs. Undirected graphs, graphs. Undirected graphs, where connections go both ways, like where connections go both ways, like where connections go both ways, like Facebook friendships. Directed graphs, Facebook friendships. Directed graphs,

[19:53] Facebook friendships. Directed graphs, where edges have direction like Twitter where edges have direction like Twitter where edges have direction like Twitter follows. You following someone doesn't follows. You following someone doesn't follows. You following someone doesn't mean they follow you back.

[19:59] mean they follow you back. mean they follow you back. And here's a fun term, And here's a fun term, And here's a fun term, adjacency. If two nodes are connected by adjacency. If two nodes are connected by adjacency. If two nodes are connected by an edge, they're adjacent, basically an edge, they're adjacent, basically an edge, they're adjacent, basically neighbors.

[20:06] neighbors. neighbors. So, how do you actually store a graph? So, how do you actually store a graph? So, how do you actually store a graph? We can store graph in two main ways. One We can store graph in two main ways. One We can store graph in two main ways. One is adjacency matrix, where a giant grid is adjacency matrix, where a giant grid is adjacency matrix, where a giant grid with rows and columns are nodes, and you with rows and columns are nodes, and you with rows and columns are nodes, and you mark a one if there's an edge.

[20:18] mark a one if there's an edge. mark a one if there's an edge. Best for fast lookups, but uses a lot of Best for fast lookups, but uses a lot of Best for fast lookups, but uses a lot of space if the graph has few connections.

[20:23] space if the graph has few connections. space if the graph has few connections. The second way is an adjacency list, The second way is an adjacency list, The second way is an adjacency list, where each node keeps a list of its where each node keeps a list of its where each node keeps a list of its neighbors. Adjacency list is more memory neighbors. Adjacency list is more memory neighbors. Adjacency list is more memory efficient for most use cases.

[20:32] efficient for most use cases. efficient for most use cases. The cool operation is to traversing the The cool operation is to traversing the The cool operation is to traversing the graph where you visit every node, graph where you visit every node, graph where you visit every node, usually with depth-first search or usually with depth-first search or usually with depth-first search or breadth-first search.

[20:39] breadth-first search. breadth-first search. There are also some other operations, There are also some other operations, There are also some other operations, too, like finding paths between nodes, too, like finding paths between nodes, too, like finding paths between nodes, checking if a cycle exists, or detecting checking if a cycle exists, or detecting checking if a cycle exists, or detecting connected components. Each operation has connected components. Each operation has

[20:48] connected components. Each operation has its own use cases. its own use cases. its own use cases. Real-world uses of graph are everywhere. Real-world uses of graph are everywhere. Real-world uses of graph are everywhere. Social networks, maps, web page links, Social networks, maps, web page links, Social networks, maps, web page links, recommendation systems, network routing.

[20:57] recommendation systems, network routing. recommendation systems, network routing. Basically, if things are connected in Basically, if things are connected in Basically, if things are connected in any way, you're dealing with a graph.

[21:02] any way, you're dealing with a graph. any way, you're dealing with a graph. Trie. Trie. Trie. All right, tries. All right, tries. All right, tries. And before you say tree, it's pronounced And before you say tree, it's pronounced And before you say tree, it's pronounced try.

[21:08] try. try. Yeah, I know, it's confusing. Yeah, I know, it's confusing. Yeah, I know, it's confusing. But here's why this data structure is But here's why this data structure is But here's why this data structure is legitimately genius.

[21:14] legitimately genius. legitimately genius. Type app into Google. Before you finish Type app into Google. Before you finish Type app into Google. Before you finish the word, you already see apple, the word, you already see apple, the word, you already see apple, application, appointment, App Store, application, appointment, App Store, application, appointment, App Store, etc.

[21:22] etc. etc. That didn't come from Google guessing That didn't come from Google guessing That didn't come from Google guessing what you meant. It came from a structure what you meant. It came from a structure what you meant. It came from a structure that already has every word mapped out, that already has every word mapped out, that already has every word mapped out, one letter at a time.

[21:31] one letter at a time. one letter at a time. And the moment you typed app, it already And the moment you typed app, it already And the moment you typed app, it already knew exactly which branch you were knew exactly which branch you were knew exactly which branch you were heading down.

[21:36] heading down. heading down. That structure is a trie. That structure is a trie. That structure is a trie. A trie is a variation of tree data A trie is a variation of tree data A trie is a variation of tree data structure, where each level represents structure, where each level represents structure, where each level represents one character in a word. From the root, one character in a word. From the root, one character in a word. From the root, the first letter takes you down one

[21:46] the first letter takes you down one the first letter takes you down one branch. branch. branch. Second letter, next branch. Third Second letter, next branch. Third Second letter, next branch. Third letter, next. By the time you've typed a letter, next. By the time you've typed a letter, next. By the time you've typed a few characters, you've already narrowed few characters, you've already narrowed few characters, you've already narrowed the entire structure down to only the the entire structure down to only the

[21:55] the entire structure down to only the words that start with those exact words that start with those exact words that start with those exact letters. letters. letters. Here's why this beats a hash map for Here's why this beats a hash map for Here's why this beats a hash map for this job. A hash map is great for exact this job. A hash map is great for exact this job. A hash map is great for exact lookups. You give it the full key, it lookups. You give it the full key, it lookups. You give it the full key, it gives you the value. But searching by

[22:06] gives you the value. But searching by gives you the value. But searching by prefix, give me everything that starts prefix, give me everything that starts prefix, give me everything that starts with app, would mean checking every with app, would mean checking every with app, would mean checking every single entry in the map. A trie does single entry in the map. A trie does single entry in the map. A trie does that prefix search in exactly as many that prefix search in exactly as many

[22:15] that prefix search in exactly as many steps as the number of letters you steps as the number of letters you steps as the number of letters you typed. typed. typed. Three letters typed, three steps taken. Three letters typed, three steps taken.

[22:20] Three letters typed, three steps taken. You're already at the right branch. The You're already at the right branch. The You're already at the right branch. The rest of the matching words are right rest of the matching words are right rest of the matching words are right there.

[22:24] there. there. This is the quiet magic behind This is the quiet magic behind This is the quiet magic behind autocomplete, spell checkers, dictionary autocomplete, spell checkers, dictionary autocomplete, spell checkers, dictionary lookups.

[22:29] lookups. lookups. If I give you a simple example, it would If I give you a simple example, it would If I give you a simple example, it would be phone contact search. If you type J, be phone contact search. If you type J, be phone contact search. If you type J, then O, your phone instantly showed then O, your phone instantly showed then O, your phone instantly showed John, Jordan, Joseph. That branching John, Jordan, Joseph. That branching John, Jordan, Joseph. That branching through shared letter paths is a trie

[22:40] through shared letter paths is a trie through shared letter paths is a trie doing its job quietly in the background. doing its job quietly in the background. doing its job quietly in the background. Disjoint set. Disjoint set.

[22:44] Disjoint set. Disjoint set or union find sounds Disjoint set or union find sounds Disjoint set or union find sounds boring, but stick with me because this boring, but stick with me because this boring, but stick with me because this is actually brilliant data structure.

[22:51] is actually brilliant data structure. is actually brilliant data structure. Imagine you're at a party with 100 Imagine you're at a party with 100 Imagine you're at a party with 100 people, and you need to figure out who people, and you need to figure out who people, and you need to figure out who knows who, even indirectly. Like, does knows who, even indirectly. Like, does knows who, even indirectly. Like, does Peter know Bob? Well, Peter knows Carol, Peter know Bob? Well, Peter knows Carol,

[22:59] Peter know Bob? Well, Peter knows Carol, Carol knows Dave, and Dave knows Bob. Carol knows Dave, and Dave knows Bob. Carol knows Dave, and Dave knows Bob. So, yeah, they're connected. So, yeah, they're connected. So, yeah, they're connected. Without a smart structure, answering Without a smart structure, answering Without a smart structure, answering that means tracing every connection in that means tracing every connection in that means tracing every connection in the chain, step by step. In a social

[23:09] the chain, step by step. In a social the chain, step by step. In a social network with millions of users, that's network with millions of users, that's network with millions of users, that's not fast enough. That's where the not fast enough. That's where the not fast enough. That's where the disjoint set comes in.

[23:14] disjoint set comes in. disjoint set comes in. A disjoint set, also called union find, A disjoint set, also called union find, A disjoint set, also called union find, tracks group membership efficiently, tracks group membership efficiently, tracks group membership efficiently, even as groups keep merging and growing even as groups keep merging and growing even as groups keep merging and growing over time.

[23:22] over time. over time. Every element starts as its own group. Every element starts as its own group. Every element starts as its own group. When you connect two elements, their When you connect two elements, their When you connect two elements, their groups merge into one. Every group has a groups merge into one. Every group has a groups merge into one. Every group has a representative. We can also call them representative. We can also call them representative. We can also call them leaders. To check if two elements are in

[23:34] leaders. To check if two elements are in leaders. To check if two elements are in the same group, you check if they share the same group, you check if they share the same group, you check if they share the same leader. That check is nearly the same leader. That check is nearly the same leader. That check is nearly instant, even after millions of merges.

[23:41] instant, even after millions of merges. instant, even after millions of merges. And the structure keeps getting smarter And the structure keeps getting smarter And the structure keeps getting smarter over time. Every time you trace a path over time. Every time you trace a path over time. Every time you trace a path to find a leader, it compresses that to find a leader, it compresses that to find a leader, it compresses that path, making the next lookup even path, making the next lookup even

[23:48] path, making the next lookup even faster. It literally gets more efficient faster. It literally gets more efficient faster. It literally gets more efficient as it's used. as it's used. as it's used. When we do network connectivity checks, When we do network connectivity checks, When we do network connectivity checks, like is computer A on the same network like is computer A on the same network like is computer A on the same network as computer B, even in the image as computer B, even in the image

[23:58] as computer B, even in the image processing, where we need to to find out processing, where we need to to find out processing, where we need to to find out if those pixels form the same object. if those pixels form the same object.

[24:03] if those pixels form the same object. And lastly, in the game world design, And lastly, in the game world design, And lastly, in the game world design, where we need to find is these two areas where we need to find is these two areas where we need to find is these two areas reachable from each other. These are the reachable from each other. These are the reachable from each other. These are the problems disjoint sets were made for.

[24:11] problems disjoint sets were made for. problems disjoint sets were made for. It's a specialist data structure, but It's a specialist data structure, but It's a specialist data structure, but for this specific class of problem, for this specific class of problem, for this specific class of problem, tracking connected groups that keep tracking connected groups that keep tracking connected groups that keep evolving nothing is cleaner or faster evolving nothing is cleaner or faster

[24:19] evolving nothing is cleaner or faster than union find. than union find. than union find. Bloom filter. Bloom filter. Bloom filter. Let me tell you about the weirdest data Let me tell you about the weirdest data Let me tell you about the weirdest data structure I've ever learned.

[24:26] structure I've ever learned. structure I've ever learned. And trust me, once you get it, you'll And trust me, once you get it, you'll And trust me, once you get it, you'll see it everywhere. see it everywhere. see it everywhere. So, what if I told you there's a data So, what if I told you there's a data So, what if I told you there's a data structure that's super fast, uses almost structure that's super fast, uses almost structure that's super fast, uses almost no memory, but occasionally lies to you?

[24:37] no memory, but occasionally lies to you? no memory, but occasionally lies to you? That's a bloom filter. And yes, it That's a bloom filter. And yes, it That's a bloom filter. And yes, it literally lies. literally lies. literally lies. Here's how the lie works.

[24:42] Here's how the lie works. Here's how the lie works. A bloom filter gives you one of two A bloom filter gives you one of two A bloom filter gives you one of two answers when you search for something. answers when you search for something.

[24:46] answers when you search for something. Yes or no. Yes or no. Yes or no. If it says no, that's a guaranteed If it says no, that's a guaranteed If it says no, that's a guaranteed answer. The item is absolutely 100% not answer. The item is absolutely 100% not answer. The item is absolutely 100% not in the set. You can completely trust it.

[24:57] in the set. You can completely trust it. in the set. You can completely trust it. If it says yes, If it says yes, If it says yes, that's where it gets interesting. It's that's where it gets interesting. It's that's where it gets interesting. It's probably right, but there's a small probably right, but there's a small probably right, but there's a small chance it made a mistake and said yes chance it made a mistake and said yes chance it made a mistake and said yes when the answer should actually be no.

[25:06] when the answer should actually be no. when the answer should actually be no. We call these mistakes false positives. We call these mistakes false positives. We call these mistakes false positives. But here's the one thing it never does.

[25:11] But here's the one thing it never does. But here's the one thing it never does. It will never say no to something that's It will never say no to something that's It will never say no to something that's actually there. It only makes mistakes actually there. It only makes mistakes actually there. It only makes mistakes in one direction, and that direction is in one direction, and that direction is in one direction, and that direction is always a wrong yes, never a wrong no.

[25:21] always a wrong yes, never a wrong no. always a wrong yes, never a wrong no. So, to put it simply, So, to put it simply, So, to put it simply, a no is always the truth, but a yes is a no is always the truth, but a yes is a no is always the truth, but a yes is mostly the truth.

[25:27] mostly the truth. mostly the truth. Now the question arises, why would Now the question arises, why would Now the question arises, why would anyone use this weird data structure? anyone use this weird data structure? anyone use this weird data structure? It's for speed and space, my friend.

[25:33] It's for speed and space, my friend. It's for speed and space, my friend. Let's say you're building a password Let's say you're building a password Let's say you're building a password checker. You want to reject passwords checker. You want to reject passwords checker. You want to reject passwords that have been leaked in data breaches.

[25:39] that have been leaked in data breaches. that have been leaked in data breaches. There are billions of those. There are billions of those. There are billions of those. Storing all of them is gigabytes of Storing all of them is gigabytes of Storing all of them is gigabytes of data.

[25:43] data. data. By using bloom filter, we can manage it By using bloom filter, we can manage it By using bloom filter, we can manage it to few megabytes. to few megabytes. to few megabytes. Chrome uses it to flag sketchy websites Chrome uses it to flag sketchy websites Chrome uses it to flag sketchy websites without storing a massive list of every without storing a massive list of every without storing a massive list of every malicious URL.

[25:53] malicious URL. malicious URL. Ethereum nodes use it to check data Ethereum nodes use it to check data Ethereum nodes use it to check data without loading the entire blockchain. without loading the entire blockchain. without loading the entire blockchain. Spell checkers use it to quickly rule Spell checkers use it to quickly rule Spell checkers use it to quickly rule out obvious typos before doing expensive out obvious typos before doing expensive out obvious typos before doing expensive dictionary lookups.

[26:04] dictionary lookups. dictionary lookups. And when a system instantly tells you a And when a system instantly tells you a And when a system instantly tells you a username is probably taken without username is probably taken without username is probably taken without checking every record, that's a bloom checking every record, that's a bloom checking every record, that's a bloom filter at work in the background.

[26:12] filter at work in the background. filter at work in the background. Quietly filtering so that the heavy work Quietly filtering so that the heavy work Quietly filtering so that the heavy work doesn't have to happen. doesn't have to happen.

[26:16] doesn't have to happen. And speaking of keeping things fast by And speaking of keeping things fast by And speaking of keeping things fast by being smart about what you store and being smart about what you store and being smart about what you store and what you throw away, what you throw away, what you throw away, the last data structure on this list the last data structure on this list the last data structure on this list does exactly that.

[26:24] does exactly that. does exactly that. LRU cache. LRU stands for least recently LRU cache. LRU stands for least recently LRU cache. LRU stands for least recently used, and it's basically how your used, and it's basically how your used, and it's basically how your computer decides what to forget.

[26:32] computer decides what to forget. computer decides what to forget. Here's the setup. You've got limited Here's the setup. You've got limited Here's the setup. You've got limited space. space. space. Could be browser cache, could be RAM, Could be browser cache, could be RAM, Could be browser cache, could be RAM, doesn't matter.

[26:38] doesn't matter. doesn't matter. Stuff you use all the time stays. Stuff you use all the time stays. Stuff you use all the time stays. But stuff you haven't touched forever But stuff you haven't touched forever But stuff you haven't touched forever gets kicked out when space runs low.

[26:45] gets kicked out when space runs low. gets kicked out when space runs low. Think about your CPU cache. Think about your CPU cache. Think about your CPU cache. Your processor is constantly pulling Your processor is constantly pulling Your processor is constantly pulling data from memory, instructions, data from memory, instructions, data from memory, instructions, variables, intermediate results.

[26:54] variables, intermediate results. variables, intermediate results. The ones it uses again and again stay The ones it uses again and again stay The ones it uses again and again stay close, right there in the cache for close, right there in the cache for close, right there in the cache for instant access.

[26:59] instant access. instant access. But space is limited. So, when new data But space is limited. So, when new data But space is limited. So, when new data needs to come in, something has to go. needs to come in, something has to go.

[27:04] needs to come in, something has to go. So, which one should go from the memory? So, which one should go from the memory? So, which one should go from the memory? It must not be randomly, but based on It must not be randomly, but based on It must not be randomly, but based on the recency.

[27:10] the recency. the recency. The data that hasn't been used for the The data that hasn't been used for the The data that hasn't been used for the longest time gets evicted first, because longest time gets evicted first, because longest time gets evicted first, because if it hasn't been needed for a while, if it hasn't been needed for a while, if it hasn't been needed for a while, it's probably not needed right now.

[27:19] it's probably not needed right now. it's probably not needed right now. That's LRU cache, quietly deciding what That's LRU cache, quietly deciding what That's LRU cache, quietly deciding what stays fast and what gets forgotten.

[27:25] stays fast and what gets forgotten. stays fast and what gets forgotten. The beauty is in how it's built. It is a The beauty is in how it's built. It is a The beauty is in how it's built. It is a combination of hash map and doubly combination of hash map and doubly combination of hash map and doubly linked list.

[27:30] linked list. linked list. The hash map gives you O of one lookups, The hash map gives you O of one lookups, The hash map gives you O of one lookups, and the linked list tracks order so that and the linked list tracks order so that and the linked list tracks order so that most recently used stays at the front.

[27:37] most recently used stays at the front. most recently used stays at the front. Least recently used goes to the back. Least recently used goes to the back. Least recently used goes to the back. When you access something, move it to When you access something, move it to When you access something, move it to the front. When you're out of space, the front. When you're out of space, the front. When you're out of space, chop off the back. Simple and brutally chop off the back. Simple and brutally

[27:45] chop off the back. Simple and brutally efficient. efficient. efficient. Both get and put operations are O of one Both get and put operations are O of one Both get and put operations are O of one time. That's why every interview loves time. That's why every interview loves time. That's why every interview loves asking about LRU cache.

[27:54] asking about LRU cache. asking about LRU cache. It tests if you can combine data It tests if you can combine data It tests if you can combine data structures creatively. structures creatively. structures creatively. Browsers use it. Databases use it.

[28:00] Browsers use it. Databases use it. Browsers use it. Databases use it. Operating systems also use it. Operating systems also use it. Operating systems also use it. Any system that needs to remember Any system that needs to remember Any system that needs to remember things, but can't afford to remember things, but can't afford to remember things, but can't afford to remember everything, almost always relies on LRU.

[28:10] everything, almost always relies on LRU. everything, almost always relies on LRU. Because memory is limited, so your Because memory is limited, so your Because memory is limited, so your computer is constantly making decisions, computer is constantly making decisions, computer is constantly making decisions, quietly letting go of what you haven't quietly letting go of what you haven't quietly letting go of what you haven't used in a while. And that's not a flaw, used in a while. And that's not a flaw,

[28:18] used in a while. And that's not a flaw, that's exactly what keeps it fast.
