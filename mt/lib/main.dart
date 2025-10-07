import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mt/screens/components.dart';
import 'package:mt/screens/pcs.dart';
import 'package:mt/screens/programs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Components(), // Pantalla 1
    Pcs(), // Pantalla 2
    Programs(), // Pantalla 3
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
        centerTitle: true,
        title: Image.asset(
          'assets/anahuac.png',
          height: 35,        // ajusta el tamaño
        ),
      ),

      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.microchip),
            label: 'Components',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.computer),
            label: 'PCs',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.squareBinary),
            label: 'Programs',
          ),
          //
        ],
      ),
    );
  }
}
