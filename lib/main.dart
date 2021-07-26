import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Posso falhar, mas não vou desistir.",
    "Eu prefiro errar do que não fazer nada",
    "Se estiverem esperando que eu desista, é bom esperarem sentados.",
    "Nunca torne-se um monstro para derrotar outro.",
    "A escalada é longa, mas a vista vale a pena!",
    "O ego sempre deixa todos de joelhos.",
    "A dor é temporária, a vitória é eterna. - Aatrox",
    "A paz é a maior mentira da história. - Aatrox",
    "Se você quiser jogar comigo, é melhor conhecer bem o jogo. - Ahri",
    "A piedade é um luxo e uma responsabilidade dos seres humanos. -Ahri",
    "Não importa quanto tempo você tem, mas como você o usa. -Ekko",
    "A única morte verdadeira é nunca ter vivido. - Kindred",
    "Existem erros que você não pode fazer duas vezes. - Yasuo",
    "Fique sabendo se a situação fosse outra, eu não teria piedade de você. - Matheus Matos",
    "Mamãe sempre dizia, Não perca! Quanto mais escura a noite... Mais brilhante as estrelas",

  ];

  var _frasesGerada = ("Clique Abaixo para gerar uma nova frase");

  void _gerarFrases(){
    var numeroSorteado = new Random().nextInt(_frases.length);
    setState(() {
      _frasesGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Frases do League Of Legends",
        style: TextStyle(
            fontSize: 15,
        ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/lol.png"),
            Text(_frasesGerada,
            textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            RaisedButton(
              color: Colors.green,
                child: Text(
                    "Gerar nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
              onPressed: _gerarFrases),
          ],
          ),
        ),
      ),

    );
  }
}
