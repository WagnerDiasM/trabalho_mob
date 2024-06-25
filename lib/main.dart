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

    int _selectedScreenIndex = 0;

  List<Map<String, Object>> _screens = [];

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        'title': 'Facil',
        'screen': FacilPage(),
        'color': Colors.green
      },
      {
        'title': 'Médio',
        'screen': MedioPage(),
        'color': Colors.yellow
      },
      {
        'title': 'Dificil',
        'screen': DificilPage(),
        'color': Colors.red
      },
      {
        'title': 'Regras',
        'screen': RegrasPage(),
        'color': Colors.grey
      },
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_screens[_selectedScreenIndex]['title'] as String,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: _screens[_selectedScreenIndex]['color'] as Color,
      ),
      body: Center(
        child: _screens[_selectedScreenIndex]['screen'] as Widget,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Fácil',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.numbers),
            label: 'Médio',
            backgroundColor: Colors.yellow[700],
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Difícil',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Regras',
            backgroundColor: Colors.grey[600],
          ),
        ],
        currentIndex: _selectedScreenIndex,
        selectedItemColor: Colors.black.withOpacity(0.8),
        onTap: _onItemTapped,
      ),
    );
  }
}
