import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Llambi Minimercado')),
      body: const Center(
        child: Text('Bienvenido a Llambi', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
