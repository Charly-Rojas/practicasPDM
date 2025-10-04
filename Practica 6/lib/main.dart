import 'package:flutter/material.dart';

void main() {
  runApp(const Practica6());
}

class Practica6 extends StatelessWidget {
  const Practica6({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 6',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Practica 6'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150.0,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color.fromARGB(255, 179, 124, 37),width: 4.0),
                          bottom: BorderSide(color: Color.fromARGB(255, 179, 124, 37),width: 4.0),
                        )
                      ),
                      child: Text("Panadería", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 179, 124, 37)),),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(child: buildRoundedBox("Baguete", imgPath: "assets/baguete.png")),
                    Expanded(child: buildRoundedBox("Canasta", imgPath: "assets/canasta.png")),
                    Expanded(child: buildRoundedBox("Madre", imgPath: "assets/madre.png")),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: buildRoundedBox("Caja integral",height: 150, imgPath: "assets/caja.png")),
                    Expanded(child: buildRoundedBox("Caja centeno", height: 150, imgPath: "assets/caja.png")),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: buildRoundedBox("Ven y descubre el sabor", height: 284, imgPath: "assets/hornear.png")),
                  ],
                ),
                SizedBox(height: 40.0,),
              ],
            ),
          )
        ),
      ),
    );
  }
}


Widget buildRoundedBox(String label, {double height = 100.0, String imgPath = ""} )  {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
    child: Container(
      height: height,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      alignment: Alignment(0,-0.5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          imgPath.isNotEmpty
            ? Image.asset(
              imgPath,
              width: double.infinity,   // Imagen ocupa el ancho del contenedor
              height: height - 32,

              fit: BoxFit.contain,      // Ajusta la imagen sin recortarla
              )
            : const SizedBox(), // Muestra un espacio vacío si imgPath está vacío
          Text(
            label,
            textAlign: TextAlign.center,
            textScaler: TextScaler.linear(1.5),
          ),
        ],
      ),
    ),
  );
}
