import 'package:flutter/material.dart';

class HabilidadesPage extends StatelessWidget {
  const HabilidadesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habilidades'),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text('Conteúdo da página de habilidades aqui'),
      ),
    );
  }
}