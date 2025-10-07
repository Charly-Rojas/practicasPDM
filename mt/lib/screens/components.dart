// screens/components.dart
import 'package:flutter/material.dart';
import '../widgets/card_component.dart';

class Components extends StatelessWidget {
  const Components({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CardComponent(
            title: 'Procesador Amd 7 5700g 3.8Ghz 16Mb 65w Am4 Vega',
            price: 2719,
            imageUrl: 'assets/ryzen7.png',
            description: 'GPU de alto rendimiento para gaming y renderizado.',
          ),
          CardComponent(
            title: 'Tarjeta Madre Asus PRIME B550M-A AC Pcie 4.0 Dual M.2 4x4 Color Negro',
            price: 1800,
            imageUrl: 'assets/motherboard.png',
            description: 'La serie ASUS Prime está diseñada por expertos para liberar todo el potencial de la plataforma AMD Ryzen de tercera generación',
          ),
          CardComponent(
            title: 'Memoria Ram Kingston Fury Beast Rgb White Ddr5 16gb 5600mt/s',
            price: 1420,
            imageUrl: 'assets/ddr5.jpg',
            description: 'Contar con una memoria Kingston -sinónimo de trayectoria y excelencia- mejorará la productividad de tu equipo:',
          ),
        ],
      ),
    );
  }
}
