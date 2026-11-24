import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {
  final String titre;
  final int total;

  const AnimePage({
    super.key,
    required this.titre,
    required this.total,
  });

  @override
  State<AnimePage> createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  int vus = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animé')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.titre,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            const Text('Épisodes vus'),
            Text('$vus / ${widget.total}', style: const TextStyle(fontSize: 40)),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    if (vus > 0) setState(() => vus--);
                  },
                  child: const Text('-1'),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () => setState(() => vus = 0),
                  child: const Text('Zéro'),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () {
                    if (vus < widget.total) setState(() => vus++);
                  },
                  child: const Text('+1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
