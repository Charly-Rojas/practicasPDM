// screens/pcs.dart
import 'package:flutter/material.dart';
import '../widgets/card_component.dart';

class Pcs extends StatelessWidget {
  const Pcs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CardComponent(
            title: 'Xtreme Pc Gaming Geforce Rtx 5060 Amd Ryzen 7 5700x 32gb Ssd 1tb Sistema Liquido Wifi Tank Pro White',
            price: 18399,
            imageUrl: 'assets/pc1.png',
            description: 'La Xtreme Top está diseñada para quienes buscan un rendimiento competitivo en eSports y juegos AAA exigentes.',
          ),
          CardComponent(
            title: 'Xtreme Pc Gaming Computadora Intel Core I5 12400 16gb Ssd 500gb Monitor 23.8 75hz Wifi Blac',
            price: 9899,
            imageUrl: 'assets/pc2.png',
            description: 'Equipada con un procesador Intel Core i5 12400 y gráficos integrados Intel UHD 730, este equipo ofrece un rendimiento fluido en tus juegos favoritos a 1080p',
          ),
          CardComponent(
            title: 'Xtreme Pc Gaming Geforce Rtx 5060 Amd Ryzen 7 5700x 32gb Ssd 1tb Sistema Liquido Wifi Black',
            price: 18999,
            imageUrl: 'assets/pc3.png',
            description: 'Equipada con la NVIDIA RTX 5060, el AMD Ryzen 7 5700X y la tarjeta madre A520 AM4, ofrece potencia y estabilidad para gaming de alto nivel y transmisión en vivo.',
          ),
        ],
      ),
    );
  }
}
