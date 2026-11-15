# Arquivo .env: boas práticas, segurança e erros comuns

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=u1sWHiMBQL0)
- **Canal**: Adriano AOli - Tech
- **Publicado**: 2026-05-18
- **Recopilado**: 2026-11-15
- **Idioma**: pt (subtítulos automáticos pt (auto), transcripción literal)
- **Duración**: 26:10

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Hoje a gente vai falar sobre um arquivo que gera memes e problemas demais. O arquivo .env. Você já deve ter ouvido falar desse arquivo ou já ouviu algum meme por aí ou já ouviu em algum projeto. Mas para que será que ele serve? Qual o problema que ele resolve?

[00:18] É isso que a gente vai falar hoje nesse vídeo. Vamos ver aqui as boas práticas, como que a gente separa ele, como que a gente cria, o que que tem, qual o problema ele resolve, para onde vai. Então, da onde surgiu o .env? Primeiro, o que que significa esse env? Env significa environment, ou seja, ambiente em inglês. Então, a gente vai entrar um pouquinho sobre o que é ambiente e para que que serve, mas da onde que surgiu, né? Antigamente, e eu me incluo nisso, era comum você colocar a senha do banco

[00:52] de dados dentro do próprio arquivo de configuração, você criava dentro lá da sua base de código um arquivo chamado config .alguma coisa.php.java. E colocava lá a string de conexão com o banco, por exemplo. Ou você tinha alguma API e você colocava lá direto no código, misturado com as outras coisas, você colocava também a URL da API, a senha dela e tudo mais.

[01:18] E com isso, imagina que você tinha, por exemplo, duas URLs. Então, você tem uma que é da API de teste, tem outra que é da API de produção, que é onde os dados realmente costumam ser processados. É esse o nome que a gente dá. Então, como que você ia trocar depois isso, né?

[01:34] Podia correr um risco muito grande de você mandar um dado de teste para aplicação de produção, só para contextualizar um pouco. Então, imagina que você tá testando um método de pagamento, como o PagSeguro, por exemplo, e ele vai ter dois ambientes lá. Quando você tá desenvolvendo, ele tem um de desenvolvimento e onde qualquer compra que você faça ali, ela não vai ser cobrada de ninguém. Então, você passa o número de cartão de crédito ali que não existe, ele entende aquilo e registra a compra, você entra, olha o

[02:03] que tá lá no painel, ou seja, você testa, você pode fazer bagunça à vontade. Agora imagina se você troca, se você manda os dados de teste lá para realmente a URL correta de produção, ou seja, você vai causar um monte de problema, vai poluir, vai sujar, colocar um monte de dados malucos lá, enfim, dependendo da quantidade de teste que você faça, você pode até ter algum problema mais sério, como até a conta bloqueada. Antigamente tudo isso ficava num arquivo e você versionava esse

[02:30] arquivo. Porém, hoje qual que é a melhor prática disso? Essas coisas que mudam, como eu citei aqui, a gente vai ver daqui a pouco, senhas de banco, portas, URLs, tokens, elas ficam num arquivo separado e geralmente a gente coloca {ponto} env, mas poderia ser qualquer outro nome de arquivo, enfim, mas é um arquivo dedicado para as variáveis de ambiente, daí o nome {ponto} environment. E como que ele começou, né?

[02:56] Isso começou basicamente na época lá do Heroku que tava surgindo, né? Não sei se vocês conhecem, mas é o pai da AWS, aonde você começou a pagar por uso. E tem também os 12 fatores para um aplicativo ser escalável, ser resiliente, né? Os famosos 12 factors. E lá um deles, se eu não me engano, o terceiro, ele fala que a gente tem que ter um arquivo de configuração separado, ou seja, tudo aquilo que muda de um ambiente para o outro, ele tem que ser separado. Mas a principal ideia é

[03:27] separar o código das configurações, das configurações que fazem aquilo funcionar, tem que ter isso em mente. E como que é o conceito de ambiente? O que que pode ser ambiente? Vamos imaginar, eu tenho a minha máquina que eu tô desenvolvendo, é um ambiente.

[03:42] Aí, quando tá pronto, quando o software tá pronto, eu vou colocar em outra máquina para testar, então a gente chama de staging ou de teste ou de QA, você tem vários níveis, né? Só que lá vai ter outro banco de dados, lá vai ter outro URL, lá vai ter outro token talvez de teste, talvez eu tô usando um token de teste um e lá vai ter o token de teste dois. Então cada lugar onde a aplicação vai rodar é um ambiente diferente. Então eu imagino que eu tenha a mesma aplicação e ela vai rodar em 10 clientes

[04:11] diferentes. Digamos que eu vou fazer essa aplicação funcionar em 10 servidores, cada um de um cliente diferente. São 10 ambientes diferentes. Eles podem ser parecidos tecni camente, porém as configurações para aquele serviço rodar são diferentes, porque vai ser outra senha de banco de dados, pelo menos eu espero, né? Outro IP de servidor, outro token, outra senha, outro hash para você autenticar os arquivos JWT. Ou seja, a aplicação precisa dessas variáveis e para cada um desses 10 clientes ela vai mudar,

[04:44] né? Então, como eu tava falando, né? A gente tem alguns exemplos aqui de ambientes. Você tem o ambiente de desenvolvimento, vamos imaginar que é uma máquina local, você tem um ambiente de homologação de teste, que é chamado staging, tem o ambiente de produção, mas você pode ter outros também. Você pode ter o ambiente de QA, aonde o pessoal entra para procurar bug, né? O de staging seria mais parecido antes para ir para produção, né? Seria isso. E o que que cada ambiente pode possuir de diferente?

[05:11] Então a gente teria bancos de dados diferentes, como eu falei, URLs, APIs, níveis de log, isso aqui é muito importante. Geralmente quando você está rodando na máquina local, você tem uma quantidade de logs muito grande sendo geradas, porque você precisa saber se a coisa está funcionando, aonde está dando problema, onde está dando bug. Quando você coloca em produção, você não precisa de tanto log assim. Você não precisa de de a cada passo que a tua aplicação faça grave um log. Então você tem que configurar. Se

[05:40] você tem que configurar de acordo com eh o ambiente que tá rodando, ele vai para o arquivo {ponto} env. Agora vamos imaginar que seja o logo do cliente, tá? O logo do cliente vai para o arquivo {ponto} env? Não, porque aí já é configuração do cliente. A falta daquilo poderia fazer a aplicação funcionar, ela iria funcionar, só que iria ficar aquele quadradinho lá sem o logo cadastrado. Então tem coisas que a gente vai ver daqui a pouco deveriam ser guardadas na aplicação, no banco de dados da aplicação, não no

[06:13] arquivo {ponto} env. O que tá no arquivo {ponto} env, imagina que é algo que nunca vai mudar ou que sem aquela configuração a aplicação não funcione. E o glossário essencial, que a gente vai continuar falando aqui sobre isso. Então eu tenho variável de ambiente, ou seja, o que muda de um ambiente para o outro. Eu preciso dessa listinha, né? Eu preciso dessa dessa lista de tópicos. Eu tenho {ponto} env, eu falei, né, o {ponto} env vem de {ponto} environment.

[06:40] Eu tenho secret, ou seja, toda e qualquer informação sensível, eu posso ter uma senha, eu posso ter uma chave de API, eu posso ter um token, eu posso ter um usuário de API, tudo isso é um secret, é um segredo. A gente tem que guardar isso e não pode deixar que outra pessoa veja, né? Eu tenho os tokens, eu tenho as chaves privadas, eu tenho o vault ou o secret manager, ou seja, o vault seria o cofre de senhas, a gente vai abordar isso aqui lá para frente.

[07:06] Geralmente em produção você usa isso. E deploy, ou seja, pegar a aplicação que tá rodando ali na sua máquina e colocar no servidor, colocar ela para rodar. E a finalidade do arquivo {ponto} env. Como eu já tava falando é a gente centralizar as informações. Então imagina que bacana, né?

[07:21] Vou até contar um negócio interessante aqui. Eu peguei uma aplicação Python no ano passado, mais ou menos, e fui olhar ela, né, não não vou falar quem fez e tal, mas em cada arquivo tinha repetido a senha do banco de dados. Só isso já tem vários problemas, né? Mas vamos vamos ser vamos pegar leve aqui. Então imagine que eu precise trocar a senha do banco de dados. Eu vou ter que dar um Ctrl F, procurar lá em todos os arquivos que tá a senha do banco de dados.

[07:49] Sem contar que aquilo foi pro GitHub, foi versionado e, enfim, se alguém pega aquela senha ali, ia fazer um estrago. É outro problema também do arquivo .env que a gente já vai abordar. Mas vamos falar aqui das de da centralização. Então você tem tudo aquilo que é importante, que faz a aplicação rodar em um arquivo .env só. E geralmente é ponto env, ou seja, não tem nada antes do ponto, tá? Não não é igual arquivo.txt, não. Ele começa no ponto mesmo. Ele facilita a troca entre

[08:17] ambientes, porque eu posso ter um arquivo .env diferente em outro ambiente, né? São dois arquivos diferentes, porém a mesma aplicação, exatamente a mesma aplicação. Só que aqui ele tá funcionando com banco de dados tal, aqui ele tá funcionando com outro banco de dados tal. Essa é a maravilha, você só troca um arquivo, né?

[08:37] Reduz a alteração no código fonte, porque nesse exemplo que eu dei aqui, que foi real, inclusive, né? Imagina a dor de cabeça se você falar: "Tá, eu quero rodar uma cópia na minha máquina agora desse software". E agora? Como é que você faz? Se ele tava apontando lá pro servidor que tava na rede dele.

[08:52] Imagina a confusão que ia virar. Ele simplifica os deploys, porque você não precisa se preocupar com o .env, né? Tem algumas técnicas pra fazer isso que a gente vai ver já já, mas você não precisa se preocupar com ele, você se preocupa só com código, né? E ele padroniza. Então nessa parte de baixo aqui, ó, a gente tem um exemplo do que tá dentro do arquivo .env. Por padrão, né? Nada impede que você faça o contrário, mas por padrão, é tudo maiúsculo, separado por underline, tá?

[09:18] Então você coloca o nome da variável, é p env igual production. Então essa é o nome da variável. Então DB host, é o ou seja, aonde do o host da o IP do servidor do banco de dados, né? Então geralmente você faz desse jeito aqui, pode comentar dentro. Então você coloca um jogo da velha, um sustenido e pode comentar.

[09:40] Tudo que você tem de mais precioso aqui de senha vai pro {ponto}env e o formato e dentro de um arquivo de texto, você abre em qualquer lugar e geralmente você edita ele direto no servidor ou na sua própria máquina, é bem simples. E o que que geralmente a gente coloca? Como eu mostrei, host do banco de dados, porta do banco, URL da API, nome do ambiente. Isso aqui é importante, ó, o nome do ambiente, por quê? Digamos que eu tenha algumas regras na aplicação que fala, isso aqui só vai

[10:05] funcionar se o ambiente for produção. Isso aqui só vai funcionar se o ambiente for teste. Então, imagina que você queira bloquear alguma URL de ser acessada no ambiente de produção, você pode falar, se lá no arquivo {ponto}env, a chave, a variável tiver setada como produção, eu não vou rodar isso, vai dar uma mensagem de erro lá.

[10:26] Então, isso é muito importante. Essas flags de debug, como eu falei sobre os logs, então, às vezes você precisa no ambiente de desenvolvimento, no staging, algo do tipo, muito mais log do que você colocar em produção. E lembrando que excesso de log deixa a aplicação lenta.

[10:39] Ela tem que gravar aquele log em disco, tem que disparar, ou seja, fica lenta. Então, em ambiente de produção, quanto menos log melhor. Configurações de e-mail, de SMTP, os endpoints externos, o arquivo, o servidor de cache e que que muda no arquivo env, né? São as variáveis, são coisas que raramente vão mudar em tempo de execução. Eu acabei de dar um exemplo do logo do, do cliente. Imagina que o {ponto}env é algo que você configura hoje e esquece. Você esquece que aquilo existe. Então, daqui a um ano, você não

[11:08] precisou mexer nele. Você mexeu na aplicação, você colocou mais recursos, só que no {ponto}env você não precisou mexer. Certo? Agora, o logo do cliente, ele poderia trocar de logo amanhã, poderia trocar de logo 10 vezes por ano.

[11:22] É algo que pode ser trocado, não vai pro {ponto}env, claro. Então, o que que você vai lembrar? {Ponto}env é algo que eu coloco lá e esqueço. Já tá lá configurado, não vou lembrar nisso. Né, não muda em tempo real, o usuário não vai ter acesso, ele não precisa ter acesso e não pertence a regra de negócio.

[11:41] Digamos que você tem uma loja virtual e você tem uma regra de desconto. Ah, se o cliente for premium vai ter desconto de 10%. Você não vai pôr isso no arquivo {ponto} env, porque imagina que você muda a promoção, você vai ter que ir lá trocar as variáveis, não existe isso, isso isso vai para uma tela de configurações dentro da aplicação e você vai lá e seta isso. Isso não tem nada a ver com arquivo {ponto} env, porque não depende da onde tá o servidor, né? Isso é uma regra do negócio, regra do negócio

[12:08] fica no banco de dados, fica em outro lugar. Geralmente no no banco de dados e você cacheia isso, mas não fica no {ponto} env. E o que que a gente evita no {ponto} env, né? As preferências do usuário, claro, né? Preferência, configurações dinâmicas, dados que são alterados frequentemente, regras do negócio, informação persistente da aplicação, dados que pertencem ao banco de dados. Eh, se você começa a colocar muita informação no {ponto} env e geralmente você acaba caindo nessa

[12:34] cilada, por exemplo, digamos que você faça um conversor de vídeo, aí você coloca no {ponto} env a resolução máxima que ele vai operar, né? Você vai ter que um dia trocar isso, né? E talvez seja rápido, porque depende da regra de negócio. Então isso deveria estar num painel onde você vai lá e seta isso e digamos que até a aplicação guarde no cache, guarde em outro lugar ali, mas não é no {ponto} env, porque você entende que aquilo faz parte de como vai funcionar, não faz aquilo

[13:06] funcionar. Tem que ter essas duas coisas em mente, tá? E geralmente, como falei, esses dados tem que estar no cache ou no painel administrativo, sistema de configuração. Geralmente você tem uma tabela no banco de dados de configurações, né, para fazer esse tipo de coisa e quando você salva ele grava em algum cache, no Redis, arquivo estático, no SQLite, sei lá, ele grava em algum lugar, mas não no {ponto} env, tá? Esse tipo de coisa não vai pro pro ponto env. E o ponto env é seguro?

[13:32] Depende de como que você usa ele, né? Essa é a verdade. Então, você pode expor ele de forma acidental, claro. Você pode esquecer e mandar ele pro GitHub. E se você manda ele pro GitHub, você não consegue mais apagar. Então, aquela senha que tava lá no GitHub, você pode apagar do arquivo, dar outro commit, mas vai ficar no histórico.

[13:52] Aí, digamos que você tenha uma esteira CI/CD, que quando você faz o commit, você cria uma release, você manda pro banco de dados, você vai sobrescrever o arquivo ponto env que tava lá, certo? Se você não tiver proteções. Então, imagina a confusão, você para a empresa, se tiver desse jeito que eu tô falando.

[14:07] Por padrão, você não vai mandar pra o GitHub. E por padrão também, você não vai usar ele em produção. Então, tem algumas coisinhas aí bem interessantes pra gente falar, mas de qualquer jeito, ele é arriscado porque ele é um arquivo que tem tudo, né? Digamos que o seu banco de dados já tenha proteção pra só funcionar em um IP. Então, mesmo que alguém pegar a senha, não vai conseguir acessar.

[14:29] Mas geralmente, os tokens de API não tem esse tipo de proteção, geralmente não tem. Até alguém da sua equipe que é mal intencionado pegue aquilo, pode causar um estrago, né? Digamos que a cada vez que você use uma determinada API, você tenha que pagar alguma coisa, comprar crédito e tudo mais. Então, o que que iria acontecer? Você ia ter que pagar por isso.

[14:49] Enfim, é é um problema. Quanto menos você tiver acesso ao env de, vamos chamar de env de produção, melhor, menos problema pra você. E por que que em produção existe tantos cuidados? Porque, como falei, são dados reais. Se você pega uma API que faz uma consulta e você tem que pagar por consulta, digamos que seja a API do Serasa, já imaginou? Se alguém pega isso e começa, "Ah, eu vou vender pro meu parente aqui, vou ver se meu primo tá no tá no Serasa, se ele tá devendo". Alguém

[15:17] vai vai pagar por isso. Ou uma API de uma inteligência artificial, ou algo assim, ou seja, são dados reais, né? Você pode acabar criando uma confusão sem necessidade. Muitas das empresas, elas evitam colocar o ponto env em produção. Para isso que elas usam esses vaults, esses cofres, como a gente tem o Google Secrets.

[15:35] Como que funciona? Você instala ele no servidor, basicamente, e ele fica rodando no servidor e ele injeta as variáveis no ambiente. Você não precisa se preocupar. Então você vai lá no Google, coloca as variáveis e ele coloca no servidor.

[15:50] Basicamente assim. Quando sobe o serviço, ele puxa, coloca, ele não vai ficar consultando toda hora. Qual que é a vantagem disso? Digamos que em algum momento você precise trocar uma chave de API, alguma coisa. Você não vai mexer no servidor. Você vai lá no Google Secrets, troca lá, ele vai propagar, você já está com a senha alterada.

[16:08] Se você está usando arquivo.env, você pode ter o risco de acesso indevido, né? Alguém pode tentar acessar o servidor ou acessar o URL. Inclusive, caso você use o arquivo.env em produção, se o projeto for pequeno, não não há não há problema nenhum. Não coloca ele num diretório público.

[16:25] Digamos que você tem uma pasta pública, onde se você digitar teste. uma URL {barra} teste.txt, apareça, você coloca antes e acessa antes daquela pasta, ou seja, uma pasta acima. Então você tem muitos problemas. E nesse caso, como que funciona a aplicação quando você tem eh um Secret Manager cadastrado? Você não coloca o env lá.

[16:48] Então a sua aplicação primeiro procura se aquela variável existe no ambiente. Caso ela não seja encontrada, aí que ele vai procurar no ponto env. Então tem um passo adicional, que é muito simples, né? Basicamente, você procura lá se existe, se não existir, você pega do do arquivo.

[17:03] É assim, é bem fácil configurar. E, como falei, existem outros, né? Outros cofres de senha. Tem o Google Secrets, tem o AWS Secrets, tem o HashiCorp, tem o Azure Key. E eles vão oferecer criptografia, auditoria, controle de acesso, rotação automática.

[17:21] Então, digamos que você tenha o banco de dados também lá no Google ou você tem um banco de dados também na AWS, você pode configurar para ele trocar a senha do banco de dados e também trocar ao mesmo tempo lá no Secret. Você não precisa nem se preocupar com troca de senha de banco de dados e ele pode expirar sozinho as as credenciais, fazer essa rotação.

[17:39] Em projetos pequenos não vale a pena você fazer isso, porque você vai precisar de de alguém para configurar tudo, embora que só tenha que fazer isso uma vez, não é tão simples assim a primeira vez. Quando é um projeto um pouco maior já vale a pena. Sem contar também que o servidor vai precisar de ter acesso externo para ir lá pegar essas senhas. Então, você acaba também precisando em algumas situações, você não vai conseguir também fazer isso por algumas restrições, ou seja, cada caso é

[18:02] um caso. Não existe bala de prata na informática, esquece. E se invadir o servidor, acabou? É, porque se alguém invade o servidor e coloca o script lá para pegar todas as variáveis de ambiente, ele vai conseguir pegar. Só que como que funciona, né? A a ideia é que quanto mais camadas de segurança você coloca, mais difícil fica. E um exemplo que eu sempre dou é, imagina que você tem 10 casas na rua. Tem várias casas que tem muro normal e tem uma casa que tem câmera e tem arame. Qual é a

[18:32] casa que vai ser invadida primeiro? É a que é mais difícil ou a que é mais fácil? Ele vai tentar primeiro a que é mais fácil. É ah, ele não tem nada de valor, aí ele vai pensar duas vezes, mas aquela ali tem câmera, tem cerca elétrica, tem arame farpado, tem cachorro bravo, é muito mais difícil entrar ali dentro. Pode ser que entre?

[18:49] Pode, mas a chance de ele entrar já cai muito, né? Já vai cair muito ali. Então, é da mesma forma, são camadas, né? Igual o desenho está aqui representando. Você tem camadas de segurança, camadas de acesso, quem é que pode ter acesso àquelas informações, quem é que pode acessar o servidor por SSH, quem é que tem acesso às credenciais de segurança e por aí vai.

[19:09] Uma camada nunca é bom, você sempre coloca várias camadas aí em vários níveis lógicos, inclusive. E como que você escolhe se você vai usar o arquivo {ponto} env? Pra desenvolvimento, staging, usa sem problema, né? Se alguém pega aquilo, não vai dar problema nenhum. Mas quando o projeto é crítico, é muito grande, você tem muitos servidores, isso é um ponto interessante. Digamos que a sua aplicação rode apenas em um servidor, você entra lá e editou e acabou. Agora imagina que você tem um monte de

[19:35] container, um monte de servidor espalhado que tá rodando com load balance, não sei o quê. Já imaginou você ir trocando o {ponto} env de todos eles? É uma loucura, né? Então, numa situação dessa, você tem que centralizar, você tem que mandar pra fora, colocar um agente desse, como eu falei, né?

[19:49] E também você tem que ver se não tem alguma regra que te proíbe fazer isso, né? Às vezes a empresa que você tá prestando serviço, criando alguma coisa, já tem alguma regra de compliance pra evitar esse tipo de coisa. O fluxo moderno, né? É dessa forma que eu tava falando. Então, você tem a variável do sistema operacional, inclusive tem algumas empresas de hospedagem que no próprio painel delas você configura a variável de ambiente.

[20:11] Você não precisa nem entrar no servidor. Por exemplo, uma Hostinger da vida, você tem lá um lugar no painel que você digita e coloca a variável de ambiente, né? Pra aquele servidor, você não vai precisar mais entrar lá no {ponto} env pra trocar. Tem um negócio muito interessante que são as variáveis injetadas em run time. Então, imagina que eu tenho um arquivo {ponto} env, aí eu subi o serviço do PHP, né?

[20:34] Coloquei como exemplo aqui, você sobe o serviço do do PHP e então você apaga o arquivo {ponto} env porque você já acha que tá como variável do servidor. Não funciona. Não adianta você colocar a variável ali no {ponto} env e depois apagar o arquivo, né? Ele tem que ficar ali, a cada requisição ele vai ser consultado. Em cenários muito críticos, que você precisa de muita velocidade, é muito melhor você pegar da memória do que a cada requisição você ir lá e consultar o arquivo também, tem isso,

[21:02] né? Então, dependendo de como você tá trabalhando, das formas que você planeja fazer o trabalho, se é crítico perder 10 milissegundos, 20 milissegundos, em algumas situações pode ser. Você também é melhor pegar da memória, não é? Pegar das variáveis do do ambiente do que pegar do arquivo ali, do físico.

[21:20] E hospedagem compartilhada e hospedagem VPS ou máquina, o servidor, né? Quando você tá hospedando numa hospedagem compartilhada, provavelmente você não vai ter acesso a instalar um agente, como eu falei, um Secret Manager, algo do tipo. Então não tem como, você vai ter que colocar um ponto env. Já quando você tá numa VPS, aí sim, você consegue colocar um agente, você consegue configurar, enfim, aí sim você tem mais controle sobre a aplicação, você pode fazer o basicamente que você quiser. E é

[21:49] claro que basicamente você não vai colocar uma aplicação muito importante também numa hospedagem compartilhada, né? Não, não vai, você vai colocar em uma VPS. Por isso que o nível da infraestrutura também importa na sua segurança.

[22:02] Quais são os erros mais comuns? Tem esse erro que eu falei, que a pessoa colocou a senha em todos os arquivos, ou seja, ela não se deu nem o cuidado de criar um arquivo lá na linguagem dela, era Python, era Python, colocar um arquivo de configurações, config.py lá e colocar as configurações, não, ela espalhou pelo código inteiro. Então, é, achar que o ponto env serve apenas para banco de dados, não, ele serve para tudo que muda de acordo com o servidor ou de quem está usando. Digamos que eu

[22:32] tenha um servidor aqui que tem uma capacidade XY, né? Então meu banco de dados é bem grande, eu vou ter que trocar essa configuração quando colocar em outro servidor. Então faz sentido, digamos que eu queira configurar, por exemplo, a quantidade de memória que a minha aplicação vai usar, poderia ir no ponto env. Digamos que eu quero configurar a versão de alguma coisa também no ponto env, né? Não serve só para isso. Serve para você mudar as configurações de acordo com o ambiente

[23:01] aonde vai trocar, por isso se chama ponto env de environment. Outro erro, né, é você colocar regra de negócio, como eu dei o exemplo do desconto aqui, não se faz isso. Você mandar o ponto env lá pro GitHub. Você vai ter vários problemas se alguém pega isso ou se você manda isso pra um servidor, faz um push lá, manda pro servidor. Um erro também é duplicar as configurações. Eu já cometi esse erro.

[23:22] Quando o arquivo env fica muito grande, você pode colocar a mesma variável duas vezes, você põe em cima e põe em baixo, ele só vai ler a última. Aí você fica maluco lá, mas ah, mas aqui em cima tá setado tal coisa, quando você rola o arquivo tá lá em baixo outra coisa. Ou esquecer de trocar no código também, você coloca direto no código alguma coisa e depois você coloca no ponto env, você fica trocando o ponto env ali e não muda. Então é outro problema também, né?

[23:45] E ficar misturando, é outro erro comum, você ficar misturando as variáveis de desenvolvimento e produção. Por isso que o ponto env é interessante pra você separar o que cada um vai acessar. E a grande lição que a gente tem, né, separar o código de configuração, configuração de servidor, vamos chamar nesse, porque você tem a configuração de cliente também.

[24:05] Então separar código de configuração. Uma coisa é você criar uma classe de banco de dados pra fazer o tratamento dos dados, select, updates, enfim. Outra coisa é você pegar nessa classe e colocar a senha do banco, né? Então senha vai pra um lugar que vai pro ponto env ou pra os cofres de senha e o código fica no código, né? O código não deveria ter nenhuma senha, essa é a verdade, nenhuma senha no código, nenhuma, tá? E o que que isso traz? Previsibilidade, manutenção simples, deploy seguro,

[24:35] escalabilidade. Como eu falei, imagina você tem 10 servidores agora e eles rodam em load balance, como que você iria separar se a senha tá direto no código? Não daria, você tem quatro clientes diferentes, cada um acessando um banco de dados diferentes. Como é que você ia fazer? Você ia ficar editando o arquivo e depois pra você deploy disso?

[24:53] Usar o ponto env nas situações corretas e usar o cofre de senhas na situação correta também é um alívio. E a conclusão, para a gente acabar com esse assunto, {ponto}env não é apenas organização, não é apenas segurança, é tudo isso e mais um pouco. Né? Ele ajuda a separar os ambientes, melhorar a manutenção, facilitar o deploy, reduz o acoplamento. E os cofres de senhas, os vaults, eles têm segurança, auditoria e governança. E a frase aí para refletir é: configuração deve ser externa,

[25:27] organizada e previsível. Não é? Você já sabe onde estão as coisas. Quando você abre o projeto, você vai lá, tá no {ponto}env já. Então, cuidado com o que você faz. Recomendo, inclusive, todos os sites que você fez, os sistemas, vai lá e tenta abrir o {ponto}env na URL. Não deve aparecer em hipótese alguma, mas tenta, porque todos os hackers vão tentar isso. Confira se tá adequada a sua segurança e coloca no {ponto}env.

[25:52] Pelo amor de Deus, não coloca senha no código. Isso só vai criar problema para você lá na frente. Espero que você tenha gostado desse vídeo. Se chegou aqui aí, dá um like, comenta alguma coisa, manda sugestão de outros vídeos, dá dicas para mim aí de como eu melhorar meus vídeos para você assistir até o final. Um abração.

[26:10] Até mais.
