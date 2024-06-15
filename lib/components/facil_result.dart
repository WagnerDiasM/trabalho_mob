import 'package:flutter/material.dart';

class FacilResultTitle extends StatelessWidget {
  const FacilResultTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 60,
            height: 30,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.8),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            child: Text(
              "Jogada",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 140,
            height: 30,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.8),
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            child: Text(
              "Número proposto",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 30,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border.all(
                  color: const Color.fromRGBO(255, 255, 255, 0.8),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Text(
                "Resultado",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FacilResultItem extends StatelessWidget {
  final String jogada;
  final String numeroProposto;
  final String iguais;
  final String posicaoDiferente;

  const FacilResultItem(
      {super.key,
      required this.jogada,
      required this.numeroProposto,
      required this.iguais,
      required this.posicaoDiferente});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 60,
            height: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.8),
              ),
            ),
            child: Text(
              jogada,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 140,
            height: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              border:
                  Border.all(color: const Color.fromRGBO(255, 255, 255, 0.8)),
            ),
            child: Text(
              numeroProposto,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                border:
                    Border.all(color: const Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 15,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text(iguais),
                        ),
                        const SizedBox(width: 3),
                        Text(
                          "Mesma posição",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 15,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade400,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text(posicaoDiferente),
                        ),
                        const SizedBox(width: 3),
                        Text(
                          "Posição diferente",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
