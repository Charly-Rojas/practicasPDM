// screens/programs.dart
import 'package:flutter/material.dart';
import '../widgets/card_component.dart';

class Programs extends StatelessWidget {
  const Programs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CardComponent(
            title: 'Windows 11 Home',
            price: 3899,
            imageUrl: 'assets/windows11.png',
            description: 'Compra y descarga Windows 11 Home para disfrutar de las ventajas hoy mismo.',
          ),
          CardComponent(
            title: 'Fedora KDE Plasma',
            price: 0,
            imageUrl: 'assets/fedora.png',
            description: 'An innovative platform for hardware, clouds, and containers, built with love by you. 100% Free & Open Source',
          ),
          CardComponent(
            title: 'Arch Linux    ',
            price: 0,
            imageUrl: 'assets/arch.png',
            description: 'A simple, lightweight distribution.',
          ),
        ],
      ),
    );
  }
}
