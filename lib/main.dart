import 'package:flutter/material.dart';
import 'package:trabalho_mob/pages/dificil.dart';
import 'package:trabalho_mob/pages/facil.dart';
import 'package:trabalho_mob/pages/medio.dart';
import 'package:trabalho_mob/pages/regras.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // Páginas para cada ícone
    FacilPage(),
    MedioPage(),
    DificilPage(),
    RegrasPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogo sem nome'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Fácil',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.business),
            label: 'Médio',
            backgroundColor: Colors.yellow[700],
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Difícil',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Regras',
            backgroundColor: Colors.grey[600],
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black.withOpacity(0.8),
        onTap: _onItemTapped,
      ),
    );
  }
}
