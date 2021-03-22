import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _perguntaSelecionada = 0;

  void _responder () {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  final perguntas = [
    'Qual seu animal favorito?',
    'Qual sua cor favorita?',
  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas e Respostas')
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta("Resposta1", _responder),
            Resposta("Resposta2", _responder),
            Resposta("Resposta3", _responder),
          ],
        ),
      ),
    );
  }
}