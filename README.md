# Meetup - BH - WeWork

Olá devs, para melhor agilidade no meetup, peço que tenha instalado o -[SLIDY](https://github.com/Flutterando/slidy).

## O que vamos abordar?

- BLOC
- Animações

### O que é esse BLOC?

BLOC é um padrão de projeto, semelhante ao MVC, o objetivo é podermos gerenciar o desenvolvimento da nossa aplicação de forma modular, ou seja, criar camadas.

![camadas](https://uploads.toptal.io/blog/image/127604/toptal-blog-image-1543392877448-c9419df15f27b73c01c86e21cc7c5c9c.png)

Como por exemplo, temos uma camada de VIEW, uma de LOGIC e uma de REPOSITORY ( para fazermos chamadas ao  meio externo, a tão famosa API).

Agora fica uma dúvida, preciso de criar sempre as 3 ? Não, isso vai depender do que sua VIEW se trata. Se ela for simplesmente exibir e/ou manipular dados que já estejam na ram, podemos utilizar somente a camada de VIEW e LOGIC.

![MVC](https://miro.medium.com/max/1080/0*Qf1s2lG86MjX-Zcv.jpg)

Na imagem temos a representação citada anteriormente.


### Porque devo instalar esse SLIDY?

O slidy foi construído por nós da [FLUTTERANDO](https://flutterando.com.br) com intuito de prover para comunidade uma CLI que ajudasse a implementar o DESIGN PATTERN que desenvolvemos ao longo do tempo.

- Para quem não sabe o que é DESIGN PATTERN - [LINK](https://www.opus-software.com.br/design-patterns/)

Mas resumindo, DESIGN PATTERN é utilizar um padrão para o desenvolvimento de sua aplicação baseado em diretrizes que alguem ou uma comunidade criou no decorrer do desenvolvimento de outros projetos.

O objetivo do DESIGN PATTERN é ajudar na sua produtividade, legibilidade do código, componentização, manutenção e desenvolvimento compartilhado. Porque normalmente um projeto não é feito por uma pessoa somente.


#Animações

Já imaginou olhar para o MOCKUP que seu designer fez, todo animado e conseguir colocar tudo na aplicação? Sim isso é possível, pois existe uma coisa no mundo chamada FLUTTER <3.

Então sem mais delongas, como posso animar meu aplicativo?

####Existem duas formas:

- Animações implícitas
- Animações controladas

###Animações implícitas

O que é isso? São widgets prontos no FLUTTER, para você somente pegar e usar. Isso mesmo, já existe animações no jeito para facilitar sua vida. Vamos lá, vou te apresentar algumas.

####HERO
```Dart
Hero(
    tag: "suatag"
    child:
)
```
 
![hero](https://user-images.githubusercontent.com/13179783/40082524-dfb0b166-5856-11e8-9e2d-fc8f8bbae997.gif)

Para utilizar simplismente você coloca o hero nos locais que ele vai ser animado, ou seja no exemplo ali ele tem um hero na page principal e outro lá quando chama a page. Como ele sabe qual animar? É pela TAG. Viu como é bonito e simples?

####ANIMATEDCONTAINER

```Dart
var animated = false;
 AnimatedContainer(
            color: animated ? Color.red : Color.blue,
            height: animated ? 50 : 150,
            width: animated ? 90 : 120,
          )

   void click(){
           setState(() {
               animated = !=animated;
    });
   }       
```

![animatedcontainer](https://flutter.dev/images/cookbook/animated-container.gif)

No exemplo acima de código, temos as varições de parâmetros de forma simultânea, simplesmente dando um setState :).


###Animações Controladas

Isso aqui vou deixar para falar na palestra. :)


##OPS! Não esqueça de baixar o projeto :)
```
git clone https://github.com/gabuldev/flutter_meetup_bh.git
```



###Redes Sociais

#### Telegram
[Flutterando](https://t.me/flutterando)
[Gabriel Sávio](https://t.me/gabuldev)
[Alencar Moreira](https://t.me/alenncar)
 #### Youtube
  [Flutterando](https://youtube.com/flutterando)
 #### Instagram
   [Flutterando](https://www.instagram.com/flutterando.dev/)
   [Gabriel Sávio](https://www.instagram.com/gabul.dev/)
   [Alencar Moreira](https://www.instagram.com/alencar.dev/)
 #### LinkedIn
   [Gabriel Sávio](https://www.linkedin.com/in/gabuldev/)
    [Alencar Moreria](https://www.linkedin.com/in/alencar-moreira/)


