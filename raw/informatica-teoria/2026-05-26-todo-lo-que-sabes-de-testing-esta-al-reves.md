# Todo Lo Que Sabes de Testing Está Al Revés

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=bivlfa5XUvk)
- **Canal**: Torti Code
- **Publicado**: 2026-05-25
- **Recopilado**: 2026-11-11
- **Idioma**: en (subtítulos automáticos en (yt-dlp) (yt-dlp, auto), transcripción literal)
- **Duración**: 17:02

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:02] You made a change to your code, it You made a change to your code, it works on your machine, you upload it to works on your machine, you upload it to works on your machine, you upload it to production, and production, and production, and half of the things you didn't half of the things you didn't half of the things you didn't touch break. Does touch break. Does touch break. Does this sound familiar?

[00:11] this sound familiar? this sound familiar? That happens because you don't have tests, and there's That happens because you don't have tests, and there's That happens because you don't have tests, and there's a reason why every serious company a reason why every serious company a reason why every serious company requires them. Tests are the insurance for your requires them. Tests are the insurance for your requires them. Tests are the insurance for your code. They tell you before deployment if something

[00:21] code. They tell you before deployment if something code. They tell you before deployment if something broke. broke. broke. But there's a problem. When you start But there's a problem. When you start But there's a problem. When you start reading about testing, you're given 50 terms: reading about testing, you're given 50 terms: reading about testing, you're given 50 terms: unit, integration, end-to-end, smoke, unit, integration, end-to-end, smoke, unit, integration, end-to-end, smoke, regression, snapshot, mutation,

[00:34] regression, snapshot, mutation, regression, snapshot, mutation, acceptance, contract. What the hell is acceptance, contract. What the hell is acceptance, contract. What the hell is each one? each one? each one? Hi, I'm Torti and this is Torti Code. In Hi, I'm Torti and this is Torti Code. In Hi, I'm Torti and this is Torti Code. In 20 minutes you will learn the three types 20 minutes you will learn the three types 20 minutes you will learn the three types of tests that really matter, the ones that cover

[00:46] of tests that really matter, the ones that cover of tests that really matter, the ones that cover 90% of your testing. The 90% of your testing. The 90% of your testing. The testing pyramid and how much of each. testing pyramid and how much of each.

[00:52] testing pyramid and how much of each. When to write tests and when not to When to write tests and when not to When to write tests and when not to write them. And professional TDD without write them. And professional TDD without write them. And professional TDD without religion. Let's get religion. Let's get religion. Let's get started.

[01:00] started. started. Imagine you are building a Imagine you are building a Imagine you are building a building. First, inspections of each building. First, inspections of each building. First, inspections of each brick and individual mixture.

[01:07] brick and individual mixture. brick and individual mixture. Is each individual component well made Is each individual component well made Is each individual component well made ? Does it meet the specs? Is it fast? ? Does it meet the specs? Is it fast?

[01:12] ? Does it meet the specs? Is it fast? Is it cheap? You do it at every step. Is it cheap? You do it at every step. Is it cheap? You do it at every step. Then, inspection of each Then, inspection of each Then, inspection of each armed room. All the bricks together armed room. All the bricks together armed room. All the bricks together form a room. Do form a room. Do form a room. Do the walls fit? Do the pipes the walls fit? Do the pipes the walls fit? Do the pipes connect?

[01:26] connect? connect? And finally, inspection of the And finally, inspection of the And finally, inspection of the completed building. completed building. completed building. You enter as a tenant, you You enter as a tenant, you You enter as a tenant, you go up in the elevator, you turn on the light, you turn on go up in the elevator, you turn on the light, you turn on go up in the elevator, you turn on the light, you turn on the tap. Does the tap. Does the tap. Does everything work together?

[01:36] everything work together? everything work together? It's slow, it's expensive, it's the ultimate test. It's slow, it's expensive, it's the ultimate test. It's slow, it's expensive, it's the ultimate test. That's the testing pyramid. Unit That's the testing pyramid. Unit That's the testing pyramid. Unit tests are the individual building blocks.

[01:45] tests are the individual building blocks. tests are the individual building blocks. Integration tests are like Integration tests are like Integration tests are like armed rooms. And end-to-end armed rooms. And end-to-end armed rooms. And end-to-end tests are the entire building from the tests are the entire building from the tests are the entire building from the user's perspective.

[01:53] user's perspective. user's perspective. And the pyramid is called that because it involves And the pyramid is called that because it involves And the pyramid is called that because it involves having many unit tests, medium having many unit tests, medium having many unit tests, medium integration tests, and few end-to-end integration tests, and few end-to-end integration tests, and few end-to-end tests.

[02:01] tests. tests. In that proportion. Unit tests. The In that proportion. Unit tests. The In that proportion. Unit tests. The bricks. bricks. bricks. What do they prove? What do they prove? What do they prove? A small unit of code. One A small unit of code. One A small unit of code. One function, one class.

[02:11] function, one class. function, one class. Isolated. Without touching the database, Isolated. Without touching the database, Isolated. Without touching the database, network, or file system. network, or file system. network, or file system. Imagine you have a function called Imagine you have a function called Imagine you have a function called calculate discount, which receives a price calculate discount, which receives a price calculate discount, which receives a price and a percentage. And it returns the price

[02:22] and a percentage. And it returns the price and a percentage. And it returns the price with the discount already applied. with the discount already applied. with the discount already applied. If the percentage is less than zero or greater than one If the percentage is less than zero or greater than one If the percentage is less than zero or greater than one hundred, it throws an error.

[02:29] hundred, it throws an error. hundred, it throws an error. On screen you see the same function and the On screen you see the same function and the On screen you see the same function and the same five tests in JavaScript with same five tests in JavaScript with same five tests in JavaScript with Jest. Python with Pytest and Java with JUnit Jest. Python with Pytest and Java with JUnit Jest. Python with Pytest and Java with JUnit in parallel.

[02:39] in parallel. in parallel. A well-done unit test covers five A well-done unit test covers five A well-done unit test covers five cases. One. Apply a ten cases. One. Apply a ten cases. One. Apply a ten percent discount on one hundred and wait ninety.

[02:48] percent discount on one hundred and wait ninety. percent discount on one hundred and wait ninety. Two. Apply a zero Two. Apply a zero Two. Apply a zero percent discount to one hundred and wait for one hundred. percent discount to one hundred and wait for one hundred.

[02:53] percent discount to one hundred and wait for one hundred. Three. Three. Three. Apply a 100% discount Apply a 100% discount Apply a 100% discount on 100% and expect zero. on 100% and expect zero. on 100% and expect zero. Four. Throw error if the percentage is Four. Throw error if the percentage is Four. Throw error if the percentage is negative.

[03:02] negative. negative. Five. Throw error if the percentage is Five. Throw error if the percentage is Five. Throw error if the percentage is greater than one hundred. greater than one hundred. greater than one hundred. Five tests, five cases. The happiest Five tests, five cases. The happiest Five tests, five cases. The happiest edge cases, more errors.

[03:13] edge cases, more errors. edge cases, more errors. Why do they matter? Why do they matter? Why do they matter? They are fast. They run in milliseconds. They are fast. They run in milliseconds. They are fast. They run in milliseconds. You can have thousands running in You can have thousands running in You can have thousands running in thirty seconds.

[03:21] thirty seconds. thirty seconds. They are isolated. They are isolated. They are isolated. If a test fails, you know exactly what If a test fails, you know exactly what If a test fails, you know exactly what function the bug has.

[03:26] function the bug has. function the bug has. They are living documentation. You read the tests and They are living documentation. You read the tests and They are living documentation. You read the tests and understand how to use the function.

[03:32] understand how to use the function. understand how to use the function. And they allow for safe refactoring. And they allow for safe refactoring. And they allow for safe refactoring. If you refactor and the tests still If you refactor and the tests still If you refactor and the tests still pass, you didn't break anything.

[03:39] pass, you didn't break anything. pass, you didn't break anything. What not to test? What not to test? What not to test? Trivial code, getters and setters. Trivial code, getters and setters. Trivial code, getters and setters. Code that is only configuration.

[03:45] Code that is only configuration. Code that is only configuration. And third-party bookstores. You don't test And third-party bookstores. You don't test And third-party bookstores. You don't test Lodash. Lodash tests Lodash. The pattern.

[03:51] Lodash. Lodash tests Lodash. The pattern. Lodash. Lodash tests Lodash. The pattern. Arrange, act, assert. Arrange, act, assert. Arrange, act, assert. If you look at any well-written test, If you look at any well-written test, If you look at any well-written test, you'll always see that same structure.

[04:00] you'll always see that same structure. you'll always see that same structure. Arrange, act, assert. It was Arrange, act, assert. It was Arrange, act, assert. It was coined by Bill Wake in 2001 and has since become coined by Bill Wake in 2001 and has since become coined by Bill Wake in 2001 and has since become the default convention in the the default convention in the the default convention in the testing world.

[04:09] testing world. testing world. Think of it as an experiment in a Think of it as an experiment in a Think of it as an experiment in a laboratory. First you put the reagents laboratory. First you put the reagents laboratory. First you put the reagents on the table, that's the arrange. Then on the table, that's the arrange. Then on the table, that's the arrange. Then you mix the two chemicals, one you mix the two chemicals, one you mix the two chemicals, one reaction at a time, that's the act. And in the

[04:20] reaction at a time, that's the act. And in the reaction at a time, that's the act. And in the end you measure what happened, that's the assertion. end you measure what happened, that's the assertion. end you measure what happened, that's the assertion. If you mix three reagents at once and If you mix three reagents at once and If you mix three reagents at once and something explodes, you don't know which one was the something explodes, you don't know which one was the something explodes, you don't know which one was the culprit. The same applies to tests. Arrange.

[04:30] culprit. The same applies to tests. Arrange. culprit. The same applies to tests. Arrange. You prepare the data, mocks, and dependencies that You prepare the data, mocks, and dependencies that You prepare the data, mocks, and dependencies that the test needs.

[04:34] the test needs. the test needs. Act. You execute the function you are Act. You execute the function you are Act. You execute the function you are testing, a single action. testing, a single action. testing, a single action. Assert. You check the result. For Assert. You check the result. For Assert. You check the result. For example, in the discount calculation test example, in the discount calculation test example, in the discount calculation test , in the arrange you define price

[04:46] , in the arrange you define price , in the arrange you define price equal to 100 and percentage equal to 10. In equal to 100 and percentage equal to 10. In equal to 100 and percentage equal to 10. In the act, you call calculate discount with the act, you call calculate discount with the act, you call calculate discount with those values ​​and save the result.

[04:54] those values ​​and save the result. those values ​​and save the result. In the assert, you verify that the result In the assert, you verify that the result In the assert, you verify that the result is 90. The tests we saw above already is 90. The tests we saw above already is 90. The tests we saw above already implicitly follow it, now you have a implicitly follow it, now you have a implicitly follow it, now you have a name for it. And a rule of thumb: if your test name for it. And a rule of thumb: if your test

[05:04] name for it. And a rule of thumb: if your test has two unrelated acts or assertions has two unrelated acts or assertions has two unrelated acts or assertions , it's probably , it's probably , it's probably testing two things. Split it into two testing two things. Split it into two testing two things. Split it into two tests. One test, one reason to fail.

[05:15] tests. One test, one reason to fail. tests. One test, one reason to fail. Mocks. A mini concept. Mocks. A mini concept. Mocks. A mini concept. Think of a movie stunt double. Think of a movie stunt double. Think of a movie stunt double. When the protagonist has to jump off When the protagonist has to jump off When the protagonist has to jump off a building, he doesn't do it himself; they hire a building, he doesn't do it himself; they hire a building, he doesn't do it himself; they hire a double who dresses the same, performs the

[05:27] a double who dresses the same, performs the a double who dresses the same, performs the exact scene they need, and that's it— exact scene they need, and that's it— exact scene they need, and that's it— the camera doesn't notice the difference.

[05:32] the camera doesn't notice the difference. the camera doesn't notice the difference. A mock is that. Instead of using the A mock is that. Instead of using the A mock is that. Instead of using the real database, the real external service, real database, the real external service, real database, the real external service, or the system clock, you pass your or the system clock, you pass your or the system clock, you pass your function a fake double, a mock, which function a fake double, a mock, which

[05:44] function a fake double, a mock, which looks the same, has the same method name, the looks the same, has the same method name, the looks the same, has the same method name, the same return type, and does exactly what same return type, and does exactly what same return type, and does exactly what you want for the test. So you want for the test. So you want for the test. So that? To isolate the unit you are that? To isolate the unit you are that? To isolate the unit you are testing. If the test fails, you know it's

[05:56] testing. If the test fails, you know it's testing. If the test fails, you know it's because of your logic, not because the network was because of your logic, not because the network was because of your logic, not because the network was down or the database had old data.

[06:02] down or the database had old data. down or the database had old data. If your function calls another function or If your function calls another function or If your function calls another function or service, you block the dependency to service, you block the dependency to service, you block the dependency to isolate it.

[06:07] isolate it. isolate it. Imagine a function called Imagine a function called Imagine a function called get active user, which receives a get active user, which receives a get active user, which receives a database connection and an ID.

[06:14] database connection and an ID. database connection and an ID. Inside, it searches for the user by ID and if it Inside, it searches for the user by ID and if it Inside, it searches for the user by ID and if it is active, it returns it; otherwise, it returns is active, it returns it; otherwise, it returns is active, it returns it; otherwise, it returns null.

[06:20] null. null. On screen it is the same test with mocks On screen it is the same test with mocks On screen it is the same test with mocks in JavaScript with Jest, Python with Unit in JavaScript with Jest, Python with Unit in JavaScript with Jest, Python with Unit Test Mock and Java with Mockito in Test Mock and Java with Mockito in Test Mock and Java with Mockito in parallel.

[06:29] parallel. parallel. To test it without touching the To test it without touching the To test it without touching the real database, you pass it a mock that pretends to be real database, you pass it a mock that pretends to be real database, you pass it a mock that pretends to be the database. You the database. You the database. You configure it so that, no matter configure it so that, no matter configure it so that, no matter who you ask, it always returns a who you ask, it always returns a

[06:39] who you ask, it always returns a user marked as inactive. user marked as inactive. user marked as inactive. Then you call your function with that mock Then you call your function with that mock Then you call your function with that mock and check that the result is null, and check that the result is null, and check that the result is null, which is exactly what you expect when the which is exactly what you expect when the which is exactly what you expect when the user is not active.

[06:50] user is not active. user is not active. That mock is not the real database, it's That mock is not the real database, it's That mock is not the real database, it's a fake. a fake. a fake. It does exactly what you need for It does exactly what you need for It does exactly what you need for the test, nothing more.

[06:59] the test, nothing more. the test, nothing more. The idea behind mock-ups is simple. You isolate The idea behind mock-ups is simple. You isolate The idea behind mock-ups is simple. You isolate the unit you want to test from everything around it the unit you want to test from everything around it the unit you want to test from everything around it .

[07:04] . . So, when a test fails, you know the So, when a test fails, you know the So, when a test fails, you know the problem is in your function's logic problem is in your function's logic problem is in your function's logic , not in the network, not in the , not in the network, not in the , not in the network, not in the database, not in another service.

[07:14] database, not in another service. database, not in another service. It's the difference between debugging five pieces It's the difference between debugging five pieces It's the difference between debugging five pieces of code or debugging half a system.

[07:21] of code or debugging half a system. of code or debugging half a system. The rooms. The rooms. The rooms. What do they prove? What do they prove? What do they prove? Several components working together. Several components working together.

[07:27] Several components working together. Function plus database. Function plus database. Function plus database. API plus database. API plus database. API plus database. Plus catch service. You do Plus catch service. You do Plus catch service. You do n't sniffle all the time.

[07:36] n't sniffle all the time. n't sniffle all the time. You use real versions of some You use real versions of some You use real versions of some dependencies. Imagine an endpoint for dependencies. Imagine an endpoint for dependencies. Imagine an endpoint for registering users.

[07:42] registering users. registering users. On screen you see it in three On screen you see it in three On screen you see it in three parallel frameworks. parallel frameworks. parallel frameworks. Express, Fast API and Spring Boot.

[07:48] Express, Fast API and Spring Boot. Express, Fast API and Spring Boot. The logic is the same in all three. The logic is the same in all three. The logic is the same in all three. Receive email and password. Verify that no Receive email and password. Verify that no Receive email and password. Verify that no fields are missing. Verify that the email address is not fields are missing. Verify that the email address is not fields are missing. Verify that the email address is not duplicated.

[07:57] duplicated. duplicated. Hash the password and save the user Hash the password and save the user Hash the password and save the user in the database. in the database. in the database. The integration test runs three cases The integration test runs three cases The integration test runs three cases on that endpoint using a on that endpoint using a on that endpoint using a real testing database.

[08:07] real testing database. real testing database. Case one, the happy one. You send valid data Case one, the happy one. You send valid data Case one, the happy one. You send valid data and wait for the user to create an account.

[08:12] and wait for the user to create an account. and wait for the user to create an account. Important: the answer must not include Important: the answer must not include Important: the answer must not include the password in plain text.

[08:17] the password in plain text. the password in plain text. If you include it, you have a If you include it, you have a If you include it, you have a security leak. security leak. security leak. Case two, the conflict. Case two, the conflict.

[08:22] Case two, the conflict. You send an email that already exists and expect You send an email that already exists and expect You send an email that already exists and expect a duplicate error. a duplicate error. a duplicate error. Case three, the invalid.

[08:28] Case three, the invalid. Case three, the invalid. You send the request with missing fields and You send the request with missing fields and You send the request with missing fields and wait for a validation error. wait for a validation error.

[08:32] wait for a validation error. Before each case, a setup hook Before each case, a setup hook Before each case, a setup hook clears the user table so that the clears the user table so that the clears the user table so that the tests do not contaminate each other.

[08:39] tests do not contaminate each other. tests do not contaminate each other. All frameworks have this hook. All frameworks have this hook. All frameworks have this hook. The name only changes depending on the language. The name only changes depending on the language.

[08:44] The name only changes depending on the language. Why do they matter? Why do they matter? Why do they matter? They catch bugs that unit tests don't They catch bugs that unit tests don't They catch bugs that unit tests don't .

[08:49] . . Poorly written SQL queries. Validations Poorly written SQL queries. Validations Poorly written SQL queries. Validations that do not match the actual contract. that do not match the actual contract. that do not match the actual contract. Integration errors between modules. They Integration errors between modules. They Integration errors between modules. They give you confidence that your code give you confidence that your code give you confidence that your code works well with the

[09:00] works well with the works well with the actual dependencies. actual dependencies. actual dependencies. In terms of speed, they are slower. They start the In terms of speed, they are slower. They start the In terms of speed, they are slower. They start the database, they make requests.

[09:07] database, they make requests. database, they make requests. Typically, 100 milliseconds to 2 seconds Typically, 100 milliseconds to 2 seconds Typically, 100 milliseconds to 2 seconds per test. per test. per test. You can have 50 to 200 without it taking You can have 50 to 200 without it taking You can have 50 to 200 without it taking long.

[09:15] long. long. The entire building. What do they prove? The The entire building. What do they prove? The The entire building. What do they prove? The complete system from the user's perspective complete system from the user's perspective complete system from the user's perspective . Browser, front end, back end, . Browser, front end, back end, . Browser, front end, back end, database, everything.

[09:25] database, everything. database, everything. Imagine that your app is an Imagine that your app is an Imagine that your app is an online store. An end-to-end test simulates the online store. An end-to-end test simulates the online store. An end-to-end test simulates the complete flow of a purchase. You open the complete flow of a purchase. You open the complete flow of a purchase. You open the page, log in, search for a product, page, log in, search for a product, page, log in, search for a product, add it to the cart, go to checkout,

[09:37] add it to the cart, go to checkout, add it to the cart, go to checkout, fill in the payment details, confirm, and at the fill in the payment details, confirm, and at the fill in the payment details, confirm, and at the end the test verifies that the end the test verifies that the end the test verifies that the successful purchase message appears.

[09:44] successful purchase message appears. successful purchase message appears. All of that, step by step, in a All of that, step by step, in a All of that, step by step, in a real browser. On screen you see the code in real browser. On screen you see the code in real browser. On screen you see the code in three languages. Playwright has an three languages. Playwright has an three languages. Playwright has an official SDK for JavaScript, Python, and Java.

[09:54] official SDK for JavaScript, Python, and Java. official SDK for JavaScript, Python, and Java. And the selectors and the sequence are And the selectors and the sequence are And the selectors and the sequence are identical across languages. Cypress is the identical across languages. Cypress is the identical across languages. Cypress is the other popular option, but only for other popular option, but only for other popular option, but only for JavaScript. Why do they matter? They validate

[10:04] JavaScript. Why do they matter? They validate JavaScript. Why do they matter? They validate the entire flow from the the entire flow from the the entire flow from the user's perspective. They catch bugs that no user's perspective. They catch bugs that no user's perspective. They catch bugs that no other test catches. Broken CSS, front-end other test catches. Broken CSS, front-end other test catches. Broken CSS, front-end disconnected from back-end, disconnected from back-end,

[10:14] disconnected from back-end, UI race conditions, integration with UI race conditions, integration with UI race conditions, integration with external services. Why have so external services. Why have so external services. Why have so few? They are slow. Each test can few? They are slow. Each test can few? They are slow. Each test can take from 10 to 60 seconds. They are take from 10 to 60 seconds. They are take from 10 to 60 seconds. They are fragile. A small change in CSS breaks

[10:27] fragile. A small change in CSS breaks fragile. A small change in CSS breaks the selector; the test fails even though the the selector; the test fails even though the the selector; the test fails even though the feature works. And they are expensive to feature works. And they are expensive to feature works. And they are expensive to maintain. The team spends time maintain. The team spends time maintain. The team spends time fixing broken tests instead of features.

[10:36] fixing broken tests instead of features. fixing broken tests instead of features. Ruler. End-to-end tests only for Ruler. End-to-end tests only for Ruler. End-to-end tests only for critical business flows. Login, critical business flows. Login, critical business flows. Login, registration, purchase, password recovery.

[10:45] registration, purchase, password recovery. registration, purchase, password recovery. Maximum 10 to 30 end-to-end tests in a Maximum 10 to 30 end-to-end tests in a Maximum 10 to 30 end-to-end tests in a typical project. The testing pyramid.

[10:51] typical project. The testing pyramid. typical project. The testing pyramid. The ideal proportion looks like this. The ideal proportion looks like this. The ideal proportion looks like this. At the base, unit tests occupy At the base, unit tests occupy At the base, unit tests occupy between 70 and 80%.

[10:58] between 70 and 80%. between 70 and 80%. In between, integration tests account for In between, integration tests account for In between, integration tests account for between 15 and 25%. between 15 and 25%. between 15 and 25%. And at the top end, the end-to-end ones, only And at the top end, the end-to-end ones, only And at the top end, the end-to-end ones, only between 5 and 10%.

[11:08] between 5 and 10%. between 5 and 10%. Why this shape? Why this shape? Why this shape? Unit tests are fast, cheap, and Unit tests are fast, cheap, and Unit tests are fast, cheap, and catch most logical bugs. That's why it's a catch most logical bugs. That's why it's a catch most logical bugs. That's why it's a good idea to have many.

[11:16] good idea to have many. good idea to have many. Integration tests are moderately complex, Integration tests are moderately complex, Integration tests are moderately complex, they catch integration bugs, it's a good idea to they catch integration bugs, it's a good idea to they catch integration bugs, it's a good idea to have some.

[11:22] have some. have some. End-to-end systems are slow and fragile, End-to-end systems are slow and fragile, End-to-end systems are slow and fragile, only for critical flows; it's best to only for critical flows; it's best to only for critical flows; it's best to have few of them.

[11:28] have few of them. have few of them. Antipattern, the inverted pyramid. Antipattern, the inverted pyramid. Antipattern, the inverted pyramid. When you have many end-to-end tests and few When you have many end-to-end tests and few When you have many end-to-end tests and few unit tests, your test suite takes 30 minutes unit tests, your test suite takes 30 minutes unit tests, your test suite takes 30 minutes to run. It to run. It to run. It fails randomly all the time.

[11:39] fails randomly all the time. fails randomly all the time. The team is losing confidence in the tests. The team is losing confidence in the tests. The team is losing confidence in the tests. And eventually they ignore them or And eventually they ignore them or And eventually they ignore them or delete them.

[11:45] delete them. delete them. If your IQ test takes more than 5 minutes, you have If your IQ test takes more than 5 minutes, you have If your IQ test takes more than 5 minutes, you have a problem of proportions. a problem of proportions.

[11:49] a problem of proportions. And the coverage? The myth. " And the coverage? The myth. " And the coverage? The myth. " We are looking for 100% coverage" is a We are looking for 100% coverage" is a We are looking for 100% coverage" is a lie from managers. High coverage does not lie from managers. High coverage does not lie from managers. High coverage does not mean well-tested code. It's like mean well-tested code. It's like mean well-tested code. It's like measuring whether you went to the gym by the

[12:01] measuring whether you went to the gym by the measuring whether you went to the gym by the hours you spent inside, not by the hours you spent inside, not by the hours you spent inside, not by the repetitions you did. repetitions you did.

[12:04] repetitions you did. You can spend 2 hours looking at your phone You can spend 2 hours looking at your phone You can spend 2 hours looking at your phone sitting on a machine and appear on the attendance sitting on a machine and appear on the attendance sitting on a machine and appear on the attendance sheet as having gone to the gym.

[12:10] sheet as having gone to the gym. sheet as having gone to the gym. Coverage is the same thing. It says the Coverage is the same thing. It says the Coverage is the same thing. It says the lines were executed, not that you're lines were executed, not that you're lines were executed, not that you're testing the correct cases. You can testing the correct cases. You can testing the correct cases. You can have 100% coverage and zero have 100% coverage and zero have 100% coverage and zero useful assertions. Aim for 70 to 85%

[12:23] useful assertions. Aim for 70 to 85% useful assertions. Aim for 70 to 85% business code coverage. 100% is business code coverage. 100% is business code coverage. 100% is paranoia. paranoia. paranoia. When should you not write tests?

[12:29] When should you not write tests? When should you not write tests? Important list. Yes. There are times when Important list. Yes. There are times when Important list. Yes. There are times when testing is a waste of time. Think about testing is a waste of time. Think about testing is a waste of time. Think about this. Nobody puts a reinforced lock and this. Nobody puts a reinforced lock and this. Nobody puts a reinforced lock and alarm on a camping tent they set up for

[12:39] alarm on a camping tent they set up for alarm on a camping tent they set up for a weekend. a weekend. a weekend. The investment makes no sense for something The investment makes no sense for something The investment makes no sense for something that won't last.

[12:43] that won't last. that won't last. One, prototypes or spikes. You're testing One, prototypes or spikes. You're testing One, prototypes or spikes. You're testing whether an idea works. You'll have to throw away the whether an idea works. You'll have to throw away the whether an idea works. You'll have to throw away the code if it doesn't work. Tests equal code if it doesn't work. Tests equal code if it doesn't work. Tests equal wasted work.

[12:53] wasted work. wasted work. Two, one-off code. Script that runs Two, one-off code. Script that runs Two, one-off code. Script that runs once to migrate data. You're not going to once to migrate data. You're not going to once to migrate data. You're not going to touch it anymore. You don't need tests.

[13:02] touch it anymore. You don't need tests. touch it anymore. You don't need tests. Three, highly changeable interface. If Three, highly changeable interface. If Three, highly changeable interface. If you redesign the interface every 2 weeks, you redesign the interface every 2 weeks, you redesign the interface every 2 weeks, the end-to-end tests the end-to-end tests the end-to-end tests constantly break.

[13:10] constantly break. constantly break. Wait until it stabilizes. Wait until it stabilizes. Wait until it stabilizes. Four, functionalities in validation. Four, functionalities in validation. Four, functionalities in validation. You are A/B testing a feature. Half will You are A/B testing a feature. Half will You are A/B testing a feature. Half will see it, half won't. If the feature see it, half won't. If the feature see it, half won't. If the feature doesn't work, delete it. Don't invest in

[13:23] doesn't work, delete it. Don't invest in doesn't work, delete it. Don't invest in tests yet. tests yet. tests yet. Five, auto-generated code. If the code Five, auto-generated code. If the code Five, auto-generated code. If the code comes from a codegen or autogen ORM generator comes from a codegen or autogen ORM generator comes from a codegen or autogen ORM generator , do not test it. Test the , do not test it. Test the , do not test it. Test the output, not the code that generates it. And

[13:36] output, not the code that generates it. And output, not the code that generates it. And conversely, when should you write tests? conversely, when should you write tests? conversely, when should you write tests? Always. Business logic. Discounts, Always. Business logic. Discounts, Always. Business logic. Discounts, commissions, validations.

[13:44] commissions, validations. commissions, validations. Public API endpoints. Pure functions with Public API endpoints. Pure functions with Public API endpoints. Pure functions with calculation, formatting, parsing. Bugfixes.

[13:50] calculation, formatting, parsing. Bugfixes. calculation, formatting, parsing. Bugfixes. You write a test that reproduces the bug, You write a test that reproduces the bug, You write a test that reproduces the bug, then you fix it. And code in then you fix it. And code in then you fix it. And code in libraries that you publish.

[13:57] libraries that you publish. libraries that you publish. Professional TDD. Red, green, refactor. Professional TDD. Red, green, refactor. Professional TDD. Red, green, refactor. TDD is test driven development. You write TDD is test driven development. You write TDD is test driven development. You write the test first, then the code.

[14:06] the test first, then the code. the test first, then the code. Think of a tailor taking measurements Think of a tailor taking measurements Think of a tailor taking measurements before cutting the fabric. He doesn't cut before cutting the fabric. He doesn't cut before cutting the fabric. He doesn't cut first and then check if it fits.

[14:12] first and then check if it fits. first and then check if it fits. Take precise measurements, that's the test. Take precise measurements, that's the test. Take precise measurements, that's the test. Then cut off the minimum necessary so that it Then cut off the minimum necessary so that it Then cut off the minimum necessary so that it fits perfectly, that's the code. And in the fits perfectly, that's the code. And in the fits perfectly, that's the code. And in the end, it adjusts the details without breaking the

[14:21] end, it adjusts the details without breaking the end, it adjusts the details without breaking the fit; that's refactoring. If you cut fit; that's refactoring. If you cut fit; that's refactoring. If you cut first and measure later, you end up with a first and measure later, you end up with a first and measure later, you end up with a jacket that doesn't fit you well. The cycle has jacket that doesn't fit you well. The cycle has jacket that doesn't fit you well. The cycle has three steps. One, network. You write a test

[14:32] three steps. One, network. You write a test three steps. One, network. You write a test that fails because the feature doesn't exist that fails because the feature doesn't exist that fails because the feature doesn't exist yet. Two, green. You write the yet. Two, green. You write the yet. Two, green. You write the minimum code required for the test to pass. Three, minimum code required for the test to pass. Three, minimum code required for the test to pass. Three, refactor. You clean the code without breaking

[14:43] refactor. You clean the code without breaking refactor. You clean the code without breaking the test. Why do people hate him? the test. Why do people hate him? the test. Why do people hate him? Because it seems slower at first, and Because it seems slower at first, and Because it seems slower at first, and at first it is. But in the medium term at first it is. But in the medium term at first it is. But in the medium term your code is cleaner because your code is cleaner because

[14:52] your code is cleaner because you write the minimum necessary. Your you write the minimum necessary. Your you write the minimum necessary. Your coverage is better because the tests are coverage is better because the tests are coverage is better because the tests are by design and refactoring is less by design and refactoring is less by design and refactoring is less risky.

[14:59] risky. risky. When does TDD work? Complex business logic When does TDD work? Complex business logic When does TDD work? Complex business logic with many cases. For example, with many cases. For example, with many cases. For example, a tax calculator.

[15:07] a tax calculator. a tax calculator. Bugfixes. Test that reproduces the bug, Bugfixes. Test that reproduces the bug, Bugfixes. Test that reproduces the bug, fix, green. And APIs with fix, green. And APIs with fix, green. And APIs with clear contracts.

[15:13] clear contracts. clear contracts. When does TDD not work? When does TDD not work? When does TDD not work? Exploratory interface, when you're Exploratory interface, when you're Exploratory interface, when you're discovering what it looks like. Performance discovering what it looks like. Performance discovering what it looks like. Performance work. You can't write a test that work. You can't write a test that work. You can't write a test that says this should be fast. And

[15:24] says this should be fast. And says this should be fast. And integrations with external systems integrations with external systems integrations with external systems where you do not control the contract. where you do not control the contract.

[15:28] where you do not control the contract. Pragmatic verdict. TDD for Pragmatic verdict. TDD for Pragmatic verdict. TDD for critical business logic. Test after for the critical business logic. Test after for the critical business logic. Test after for the rest. No test is a problem.

[15:36] rest. No test is a problem. rest. No test is a problem. To recap. Unit tests are the To recap. Unit tests are the To recap. Unit tests are the building blocks. Many, fast. building blocks. Many, fast. building blocks. Many, fast. Integration tests are the rooms.

[15:44] Integration tests are the rooms. Integration tests are the rooms. Some are medium-sized. Some are medium-sized. Some are medium-sized. End-to-end tests are the End-to-end tests are the End-to-end tests are the whole building. Few, slow.

[15:52] whole building. Few, slow. whole building. Few, slow. Pyramid. 70% unit, 20% integration, 10% Pyramid. 70% unit, 20% integration, 10% Pyramid. 70% unit, 20% integration, 10% end to end. end to end. end to end. TDD for critical logic.

[16:02] TDD for critical logic. TDD for critical logic. Test after for everything else. Test after for everything else. Test after for everything else. A short note on AI. A short note on AI. A short note on AI. It's great at generating tests, but only It's great at generating tests, but only It's great at generating tests, but only when you already know how to test.

[16:11] when you already know how to test. when you already know how to test. If you ask it to run tests for this without If you ask it to run tests for this without If you ask it to run tests for this without any criteria, it will throw out 20 of the happy any criteria, it will throw out 20 of the happy any criteria, it will throw out 20 of the happy path tests, half of which don't validate anything useful, and path tests, half of which don't validate anything useful, and path tests, half of which don't validate anything useful, and you'll think you have coverage until

[16:21] you'll think you have coverage until you'll think you have coverage until the first bug arrives in production. the first bug arrives in production. the first bug arrives in production. Learn to write five good tests by Learn to write five good tests by Learn to write five good tests by hand first, with their edge cases and hand first, with their edge cases and hand first, with their edge cases and errors. Then the AI ​​really speeds you up errors. Then the AI ​​really speeds you up

[16:30] errors. Then the AI ​​really speeds you up and you know what to delete from what it and you know what to delete from what it and you know what to delete from what it generates. And what about the other terms I mentioned generates. And what about the other terms I mentioned generates. And what about the other terms I mentioned at the beginning? Smoke, regression, at the beginning? Smoke, regression, at the beginning? Smoke, regression, snapshot, mutation, contract. Find them yourself

[16:41] snapshot, mutation, contract. Find them yourself snapshot, mutation, contract. Find them yourself . You'll see they're not that . You'll see they're not that . You'll see they're not that complicated. These are variations or complicated. These are variations or complicated. These are variations or specific cases of what we already saw today.

[16:48] specific cases of what we already saw today. specific cases of what we already saw today. With unit, integration and end to end With unit, integration and end to end With unit, integration and end to end you cover 90% of your work. If you want me to you cover 90% of your work. If you want me to you cover 90% of your work. If you want me to make a specific video about those make a specific video about those make a specific video about those terms, let me know in the comments and I'll put it together

[16:57] terms, let me know in the comments and I'll put it together terms, let me know in the comments and I'll put it together . If you found this helpful, please subscribe. . If you found this helpful, please subscribe. . If you found this helpful, please subscribe. Bye, torticoders.
