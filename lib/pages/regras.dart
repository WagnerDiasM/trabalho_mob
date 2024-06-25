import 'package:flutter/material.dart';

class RegrasPage extends StatelessWidget {
  const RegrasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            cardRegras(
              'O jogo consiste em em adivinhar os nmeros pré-ordenados, com multiplas dificuldades:\n\n*Facil - 3 nmeros \n*Médio - 4 nmeros \n*Dificil - 5 nmeros',
              context,
            ),
            cardRegras(
              'O jogo consiste em em adivinhar os nmeros pré-ordenados, com multiplas dificuldades:',
              context,
            ),
            cardRegras(
              'Cada pré-ordenação contém apenas uma unidade de cada nmero, sendo assim, o mesmo nmero não se repetirá dentro da sequência.',
              context,
            ),
            cardRegras(
              'Ao montar uma sequência de nmeros e enviá-la, sua pontuação será exibida no campo inferior da tela.\n Com base nela, você poderá montar outra sequência que se aproxime ainda mais da sequência pré-ordenada.',
              context,
            ),
            cardRegras(
              'Por fim, quando a sequência pré-ordenada for descoberta, será exibida a quantidade de tentativas feitas para chegar ao resultado, reiniciando o jogo com outra pré-ordenação de nmeros.',
              context,
            ),
            const SizedBox(height: 5),
          ]),
        ),
      ),
    );
  }

  Card cardRegras(String text, BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 15),
      elevation: 2,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
