import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String title;        // título
  final double price;        // precio
  final String imageUrl;     // url de la imagen
  final String description;  // descripción

  // Constructor donde pasas las variables
  const CardComponent({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(8, 8, 8, 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 5,
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Título
           Text(
             title,
             style: const TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: Color.fromARGB(255, 222, 83, 9),
             ),
           ),

            const SizedBox(height: 8),

            // Imagen
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image.asset(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            // Precio
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
              child: Text(
                '\$${price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.right,
              ),
            ),

            // Descripción
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
