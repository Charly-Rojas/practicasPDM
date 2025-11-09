import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Dinosaurios')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _IntroCard(colorScheme: cs),
              const SizedBox(height: 8),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Dinos', style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () => Navigator.pushNamed(context, TrexPage.route),
                              icon: const Icon(Icons.travel_explore),
                              label: const Text('Ver T‑Rex'),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () => Navigator.pushNamed(context, TriceratopsPage.route),
                              icon: const Icon(Icons.eco),
                              label: const Text('Ver Triceratops'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _IntroCard extends StatelessWidget {
  final ColorScheme colorScheme;
  const _IntroCard({required this.colorScheme});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Row(
              children: [
                const Icon(Icons.landscape),
                const SizedBox(width: 8),
                Text('Era Mesozoica', style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/banner.jpg',
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  height: 160,
                  alignment: Alignment.center,
                  child: const Icon(Icons.image_not_supported, size: 64),
                ),
              ),
            ),

            const SizedBox(height: 16),
            Text(
              'Hace entre 252 y 66 millones de años, los dinosaurios dominaron la Tierra. Esta app te muestra dos especies icónicas con datos clave y una breve descripción.',
            ),
          ],
        ),
      ),
    );
  }
}

class DinoDetailScaffold extends StatelessWidget {
  final String title;
  final String imageAsset;
  final String period;
  final String diet;
  final String region;
  final double? lengthMeters;
  final double? weightTons;
  final String description;
  final List<String> facts;

  const DinoDetailScaffold({
    super.key,
    required this.title,
    required this.imageAsset,
    required this.period,
    required this.diet,
    required this.region,
    this.lengthMeters,
    this.weightTons,
    required this.description,
    this.facts = const [],
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imageAsset,
                    height: 220,
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) => Container(
                      height: 220,
                      alignment: Alignment.center,
                      child: const Icon(Icons.image_not_supported, size: 64),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _infoChip(Icons.schedule, period),
                    _infoChip(diet.toLowerCase().contains('herb') ? Icons.eco : Icons.restaurant, diet),
                    _infoChip(Icons.public, region),
                    if (lengthMeters != null) _infoChip(Icons.straighten, '${lengthMeters!.toStringAsFixed(1)} m'),
                    if (weightTons != null) _infoChip(Icons.fitness_center, '${weightTons!.toStringAsFixed(1)} t'),
                  ],
                ),
                const SizedBox(height: 12),
                Text('Descripción', style: theme.textTheme.titleMedium),
                const SizedBox(height: 6),
                Text(description),
                if (facts.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Text('Datos curiosos', style: theme.textTheme.titleMedium),
                  const SizedBox(height: 6),
                  for (final f in facts)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.check_circle_outline, size: 18),
                          const SizedBox(width: 8),
                          Expanded(child: Text(f)),
                        ],
                      ),
                    ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _infoChip(IconData icon, String label) => Chip(
    avatar: Icon(icon, size: 18),
    label: Text(label),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
}

class TrexPage extends StatelessWidget {
  static const route = '/dino/trex';
  const TrexPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const DinoDetailScaffold(
      title: 'Tyrannosaurus rex',
      imageAsset: 'assets/trex.png',
      period: 'Cretácico tardío (68–66 Ma)',
      diet: 'Carnívoro',
      region: 'Norteamérica (Oeste)',
      lengthMeters: 12.3,
      weightTons: 8.8,
      description:
      'El T‑Rex fue uno de los mayores depredadores terrestres. Poseía una mordida con enorme fuerza, cabeza masiva y extremidades anteriores reducidas pero robustas. Dominó ecosistemas del Maastrichtiano.',
      facts: [
        'Su mordida está entre las más potentes estimadas para un animal terrestre.',
        'Se han hallado impresiones de piel y múltiples especímenes bien conservados.',
      ],
    );
  }
}

class TriceratopsPage extends StatelessWidget {
  static const route = '/dino/triceratops';
  const TriceratopsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const DinoDetailScaffold(
      title: 'Triceratops',
      imageAsset: 'assets/triceratops.png',
      period: 'Cretácico tardío (68–66 Ma)',
      diet: 'Herbívoro',
      region: 'Norteamérica (Oeste)',
      lengthMeters: 8.0,
      weightTons: 6.1,
      description:
      'Triceratops era un ceratópsido cuadrúpedo con tres cuernos faciales y una gran gola ósea. '
          'Probablemente usaba sus cuernos para defensa y exhibición, y se alimentaba de vegetación baja.',
      facts: [
        'Convivió temporalmente con T‑Rex en el Maastrichtiano tardío.',
        'Existen varias especies y variaciones en la ornamentación craneal.',
      ],
    );
  }
}
