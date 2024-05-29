import 'package:flutter/material.dart';

class CertificadosPage extends StatelessWidget {
  const CertificadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certificados'),
        backgroundColor: const Color(0xFF081B29), // Mantém o mesmo esquema de cores
        iconTheme: const IconThemeData(color: Colors.white), // Mantém a cor do ícone da appbar
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Conteúdo da página de certificados aqui
                Text(
                  'Conteúdo da página de certificados aqui',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
