import 'package:flutter/material.dart';
import 'my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accueil')),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('Bienvenue !', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
