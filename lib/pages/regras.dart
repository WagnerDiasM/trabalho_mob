import 'package:flutter/material.dart';

class RegrasPage extends StatelessWidget {
  const RegrasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 5),
          Card(
          elevation: 2,
          color: Color.fromARGB(255, 225, 224, 224),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('O jogo consiste em em adivinhar os números pré-ordenados, com multiplas dificuldades:',
              style: TextStyle(
                fontSize: 20
              ),
              ),
              Text('\n*Facil - 3 números \n*Médio - 4 números \n*Dificil - 5 números',
              style: TextStyle(
                fontSize: 18
              ),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Card(
          elevation: 2,
          color: Color.fromARGB(255, 225, 224, 224),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Cada pré-ordenação contém apenas uma unidade de cada número, sendo assim, o mesmo número não se repetirá dentro da sequência.',
              style: TextStyle(
                fontSize: 20
              ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Card(
          elevation: 2,
          color: Color.fromARGB(255, 225, 224, 224),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ao montar uma sequência de números e enviá-la, sua pontuação será exibida no campo inferior da tela.\n Com base nela, você poderá montar outra sequência que se aproxime ainda mais da sequência pré-ordenada.',
              style: TextStyle(
                fontSize: 20
              ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Card(
          elevation: 2,
          color: Color.fromARGB(255, 225, 224, 224),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Por fim, quando a sequência pré-ordenada for descoberta, será exibida a quantidade de tentativas feitas para chegar ao resultado, reiniciando o jogo com outra pré-ordenação de números.',
              style: TextStyle(
                fontSize: 20
              ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        ]
      ),
    ),
    );
  }
}
