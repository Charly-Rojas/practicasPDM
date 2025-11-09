import 'package:flutter/material.dart';
import 'P0801.dart';

void main() => runApp(const P08App());

class P08App extends StatelessWidget {
  const P08App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'P08 - Dinosaurios',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.w700),
          titleMedium: TextStyle(fontWeight: FontWeight.w600),
        ),
        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          margin: const EdgeInsets.all(12),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
      // Dos rutas + home
      initialRoute: '/',
      routes: {
        '/': (ctx) => const HomePage(),
        TrexPage.route: (ctx) => const TrexPage(),
        TriceratopsPage.route: (ctx) => const TriceratopsPage(),
      },
    );
  }
}

