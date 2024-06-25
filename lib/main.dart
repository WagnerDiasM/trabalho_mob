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
        'screen': const FacilPage(),
        'color': Colors.green as Object
      },
      {
        'title': 'Médio',
        'screen': const MedioPage(),
        'color': Colors.yellow[700] as Object
      },
      {
        'title': 'Dificil',
        'screen': const DificilPage(),
        'color': Colors.red as Object
      },
      {
        'title': 'Regras',
        'screen': const RegrasPage(),
        'color': Colors.deepPurple
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
        title: Text(
          _screens[_selectedScreenIndex]['title'] as String,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Regras',
            backgroundColor: Colors.deepPurple,
          ),
        ],
        currentIndex: _selectedScreenIndex,
        selectedItemColor: Colors.black.withOpacity(0.8),
        onTap: _onItemTapped,
      ),
    );
  }
}
