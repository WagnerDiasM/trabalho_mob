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
              'O jogo consiste em adivinhar os números pré-ordenados, com múltiplas dificuldades:\n\n*Fácil - 3 números \n*Médio - 4 números \n*Difícil - 5 números',
              context,
            ),
            cardRegras(
              'Cada pré-ordenação contém apenas uma unidade de cada número, sendo assim, o mesmo número não se repetirá dentro da sequência.',
              context,
            ),
            cardRegras(
              'Ao montar uma sequência de números e enviá-la, sua pontuação será exibida no campo inferior da tela.\n Com base nela, você poderá montar outra sequência que se aproxime ainda mais da sequência pré-ordenada.',
              context,
            ),
            cardRegras(
              'Por fim, quando a sequência pré-ordenada for descoberta, será exibida a quantidade de tentativas feitas para chegar ao resultado, reiniciando o jogo com outra pré-ordenação de números.',
              context,
            ),
            const SizedBox(height: 15),
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
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
