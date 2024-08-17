import 'package:cara_ou_coroa/tela_secundaria.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  exibirResultado(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff61bd86),
        //color: const Color.fromRGBO(0, 204, 153, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: exibirResultado,
              child: IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TelaSecundaria(),
                      ),
                    );
                    },
                  icon:Image.asset("images/botao_jogar.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
