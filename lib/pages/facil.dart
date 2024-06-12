import 'package:flutter/material.dart';

class FacilPage extends StatefulWidget {
  const FacilPage({super.key});

  @override
  State<FacilPage> createState() => _FacilPageState();
}

class _FacilPageState extends State<FacilPage> {
  String _estado = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("???", style: TextStyle(fontSize: 30)),
        Text(_estado, style: const TextStyle(fontSize: 30)),
        if (_estado.length <= 2)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "1";
                  });
                },
                child: const Text("1"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "2";
                  });
                },
                child: const Text("2"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "3";
                  });
                },
                child: const Text("3"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "4";
                  });
                },
                child: const Text("4"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "5";
                  });
                },
                child: const Text("5"),
              ),
            ],
          ),
        if (_estado.length <= 2)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "6";
                  });
                },
                child: const Text("6"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "7";
                  });
                },
                child: const Text("7"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "8";
                  });
                },
                child: const Text("8"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "9";
                  });
                },
                child: const Text("9"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _estado += "0";
                  });
                },
                child: const Text("0"),
              ),
            ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (_estado.length == 3)
              ElevatedButton(onPressed: () {}, child: const Text("Enviar")),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _estado = "";
                });
              },
              child: const Text("limpar"),
            )
          ],
        )
      ],
    );
  }
}
