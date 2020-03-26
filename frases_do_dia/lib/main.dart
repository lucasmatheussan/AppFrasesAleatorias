import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(
    home: Home(),
   )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "A persistência é o caminho do êxito.",
    "As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.",
    "Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer.",
    "Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação.",
    "No meio da dificuldade encontra-se a oportunidade.",
    "Lute. Acredite. aConquiste. Perca. Deseje. Espere. Alcance. Invada. Caia. Seja tudo o quiser ser, mas acima de tudo, seja você sempre.",
    "Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação.",
    "A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento."
  ];
  var _fraseGerada = "";
  void _GerarFrases(){
     var NumeroSorteado = Random().nextInt(_frases.length);
     setState(() {
       _fraseGerada = _frases[NumeroSorteado];
     });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("Frase do dia"),
        backgroundColor: Colors.green,
        centerTitle: true,

      ),
      body: Center(
        child: Container(
            //width: double.infinity,
            padding: EdgeInsets.all(16),
            /*decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width:3)
            )*/
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("img/logo.png"),
                  Text(
                    "Click abaixo para gerar uma nova frase",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      "Nova Frase",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    color:Colors.green,
                    onPressed: _GerarFrases
                  ),
                  Text(
                      "$_fraseGerada",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.black,

                      ),
                  )

                ]

            )

        )
      ),
    );
  }
}























//import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';

/*
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),

  ));



  /*
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home : Container(
       //padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
       margin: EdgeInsets.only(top:40),
       decoration: BoxDecoration(
         border: Border.all(width: 3, color: Colors.red),
       ),
        child: Column(
          children: <Widget>[
            Text(
               "Lucas Matheus Santos Andrade",
                style: TextStyle(
                fontSize: 25,
                color: Colors.red,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                letterSpacing: 10,
                wordSpacing: 10,
                decoration: TextDecoration.none,

              ),
              textAlign: TextAlign.justify,

            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "T2",
                 style: TextStyle(
                   fontStyle: FontStyle.italic,
                   decoration: TextDecoration.none,
                   color: Colors.red,
                   fontWeight: FontWeight.normal,
                   wordSpacing: 10,
                   letterSpacing: 10,
                 ),
              ),
            ),

            /*FlatButton(
                onPressed: (){
                  print("Botão clickado");
                },
                child: Text(
                    "Clique aqui",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                ),
            )*/
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Palmeiras.",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 10,
                      wordSpacing: 10,
                      decoration: TextDecoration.none
                    ),
                  )
                ],
              ),
            )
          ],

        )),
    //home: Container(color: Colors.white),
  ));*/
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _lucs = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Scaffold(
          appBar: AppBar(
            title: Text("Frase do Dia"),
            backgroundColor: Colors.green,
          ),
          body: Container(
            child: Column(
              children: <Widget> [
                 RaisedButton(
                   onPressed: (){
                    setState(() {
                      this._lucs +=1;
                    });
                   },
                   color: Colors.amber,
                   child: Text("Clique Aqui"),
                 ),
                Text("$_lucs"),

              ]
            )
          )
        ),
    );


  }
}



class Home extends StatelessWidget {//Widgets que não podem ser alterados
  @override
  Widget build(BuildContext context) {
    return Container(child:Scaffold(
      appBar: AppBar(
        title: Text("Frase do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Conteúdo principal"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text("Menu"),
              Text("Hello")

            ],
          ),
        ),
      ),
    )

    );
  }
}
//stateful que podem ser alterados
 */