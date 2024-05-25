// pages/certificados_page.dart
import 'package:flutter/material.dart';

class CertificadosPage extends StatelessWidget {
  const CertificadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certificados'),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text('Conteúdo da página de certificados aqui'),
      ),
    );
  }
}