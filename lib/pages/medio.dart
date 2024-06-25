import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trabalho_mob/components/result.dart';

class MedioPage extends StatefulWidget {
  const MedioPage({super.key});

  @override
  State<MedioPage> createState() => _MedioPageState();
}

class _MedioPageState extends State<MedioPage> {
  String _estado = "";
  String _numero = "";
  final List<Object> _resultados = [];

  void _sortearNumero() {
    String v1, v2, v3, v4;
    do {
      v1 = (Random().nextInt(10)).toString();
      v2 = (Random().nextInt(10)).toString();
      v3 = (Random().nextInt(10)).toString();
      v4 = (Random().nextInt(10)).toString();
    } while (
        v1 == v2 || v1 == v3 || v1 == v4 || v2 == v3 || v2 == v4 || v3 == v4);
    _numero = v1 + v2 + v3 + v4;
  }

  @override
  void initState() {
    _sortearNumero();
    super.initState();
  }

  void _reiniciar() {
    setState(() {
      _estado = "";
      _sortearNumero();
      _resultados.clear();
      Navigator.of(context).pop();
    });
  }

  void _compararNumeros() {
    final e1 = _estado[0];
    final e2 = _estado[1];
    final e3 = _estado[2];
    final e4 = _estado[3];

    final n1 = _numero.isNotEmpty ? _numero[0] : '';
    final n2 = _numero.length > 1 ? _numero[1] : '';
    final n3 = _numero.length > 2 ? _numero[2] : '';
    final n4 = _numero.length > 3 ? _numero[3] : '';

    int iguais = 0;
    int posicaoDiferente = 0;

    if (e1 == n1) {
      iguais++;
    } else if (e1 == n2) {
      posicaoDiferente++;
    } else if (e1 == n3) {
      posicaoDiferente++;
    } else if (e1 == n4) {
      posicaoDiferente++;
    }

    if (e2 == n2) {
      iguais++;
    } else if (e2 == n1) {
      posicaoDiferente++;
    } else if (e2 == n3) {
      posicaoDiferente++;
    } else if (e2 == n4) {
      posicaoDiferente++;
    }

    if (e3 == n3) {
      iguais++;
    } else if (e3 == n1) {
      posicaoDiferente++;
    } else if (e3 == n2) {
      posicaoDiferente++;
    } else if (e3 == n4) {
      posicaoDiferente++;
    }

    if (e4 == n4) {
      iguais++;
    } else if (e4 == n1) {
      posicaoDiferente++;
    } else if (e4 == n2) {
      posicaoDiferente++;
    } else if (e4 == n3) {
      posicaoDiferente++;
    }

    setState(() {
      _resultados.add({
        "valor": _estado,
        "iguais": iguais,
        "posicaoDiferente": posicaoDiferente,
      });

      _estado = "";
    });

    if (iguais == 4) {
      _dialogBuilder(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("????", style: TextStyle(fontSize: 30)),
        Text(_estado, style: const TextStyle(fontSize: 30)),
        if (_estado.length <= 3)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButtonCustom("1"),
              TextButtonCustom("2"),
              TextButtonCustom("3"),
              TextButtonCustom("4"),
              TextButtonCustom("5"),
            ],
          ),
        if (_estado.length <= 3)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButtonCustom("6"),
              TextButtonCustom("7"),
              TextButtonCustom("8"),
              TextButtonCustom("9"),
              TextButtonCustom("0"),
            ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _estado = "";
                });
              },
              child: const Text("limpar"),
            ),
            if (_estado.length == 4)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  _compararNumeros();
                },
                child: Text(
                  "Enviar",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
          ],
        ),
        if (_resultados.isNotEmpty)
          Expanded(
            child: Column(
              children: [
                const ResultTitle(),
                Expanded(
                  child: ListView.builder(
                    itemCount: _resultados.length,
                    itemBuilder: (context, index) {
                      final item = _resultados[_resultados.length - 1 - index]
                          as Map<String, dynamic>;
                      return ResultItem(
                        jogada: (_resultados.length - index).toString(),
                        numeroProposto: item['valor'].toString(),
                        iguais: item['iguais'].toString(),
                        posicaoDiferente: item['posicaoDiferente'].toString(),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  TextButton TextButtonCustom(String text) {
    if (_estado.isNotEmpty &&
        (text == _estado[0] || text == _estado[1] || text == _estado[2] || text == _estado[3])) {
      return TextButton(onPressed: () {}, child: const Text(""));
    }

    return TextButton(
        onPressed: () {
          setState(() {
            _estado += text;
          });
        },
        child: Text(text,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)));
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Parabéns, Você acertou!'),
          content: Text(
            'O valor do numero era $_numero \n\n'
            'Você acertou em ${_resultados.length} tentativas',
            style: const TextStyle(fontSize: 20),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Voltar'),
              onPressed: () {
                _reiniciar();
              },
            ),
          ],
        );
      },
    );
  }
}
