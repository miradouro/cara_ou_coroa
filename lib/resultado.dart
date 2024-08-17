import 'package:flutter/material.dart';
import 'dart:math';

class Resultado extends StatefulWidget {
  const Resultado({super.key});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var opcoes = ["images/moeda_cara.png","images/moeda_coroa.png"];

    var numero = Random().nextInt(2);

    var escolha = opcoes[numero];

    return Center(
      child: Container(
        color: const Color(0xff61bd86),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(escolha),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Image.asset("images/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
