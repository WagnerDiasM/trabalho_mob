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
              color: Colors.grey,
              border:
                  Border.all(color: const Color.fromRGBO(255, 255, 255, 0.8)),
            ),
            child: const Text("Jogada",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Container(
            alignment: Alignment.center,
            width: 140,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey,
              border:
                  Border.all(color: const Color.fromRGBO(255, 255, 255, 0.8)),
            ),
            child: const Text("Número proposto",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey,
                border:
                    Border.all(color: const Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              child: const Text("Resultado",
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
              color: const Color.fromRGBO(0, 0, 0, 0.2),
              border:
                  Border.all(color: const Color.fromRGBO(255, 255, 255, 0.8)),
            ),
            child: Text(jogada),
          ),
          Container(
            alignment: Alignment.center,
            width: 140,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 0.2),
              border:
                  Border.all(color: const Color.fromRGBO(255, 255, 255, 0.8)),
            ),
            child: Text(numeroProposto),
          ),
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 0.2),
                border:
                    Border.all(color: const Color.fromRGBO(255, 255, 255, 0.8)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$iguais A mesma posição"),
                    Text("$posicaoDiferente Posição diferente"),
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
