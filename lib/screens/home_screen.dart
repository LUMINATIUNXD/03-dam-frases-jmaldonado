import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis frases (0)'),
      ),
      body: const Center(
        child: Text(
          'Aún no hay frases.\nToca + para agregar la primera.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Agregar frase',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('El formulario se agregará en el siguiente avance.'),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
