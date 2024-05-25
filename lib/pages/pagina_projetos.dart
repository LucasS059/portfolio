import 'package:flutter/material.dart';

class ProjetosPage extends StatelessWidget {
  const ProjetosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projetos'),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text('Conteúdo da página de projetos aqui'),
      ),
    );
  }
}