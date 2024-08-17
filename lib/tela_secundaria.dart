import 'package:cara_ou_coroa/jogar.dart';
import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  const TelaSecundaria({super.key});

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color(0xff61bd86),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/moeda_cara.png"),
            IconButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Jogar(),
                      ),
                  );
                },
              icon: Image.asset("images/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
