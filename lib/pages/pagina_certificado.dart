import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CertificadosPage extends StatelessWidget {
  const CertificadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.asset(
              'assets/images/logo.jpeg',
              height: 50,
            ),
          ),
          backgroundColor: const Color(0xFF081B29),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: screenWidth > 700 ? _buildAppBarActions(context) : null,
        ),
      ),
      drawer: screenWidth <= 700 ? _buildDrawer(context) : null,
      backgroundColor: const Color(0xFF081B29),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double padding = constraints.maxWidth > 700 ? 40.0 : 20.0;
          double fontSize = constraints.maxWidth > 700 ? 24 : 20;

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Cabeçalho introdutório
                  _buildIntroSection(context, fontSize),
                  const SizedBox(height: 20),

                  // Grade de certificados
                  _buildCertificatesGrid(context, constraints),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Função para construir a seção de introdução
  Widget _buildIntroSection(BuildContext context, double fontSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Meus Certificados',
          style: GoogleFonts.poppins(
            fontSize: fontSize,
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Aqui estão os certificados que obtive durante a minha formação, destacando habilidades práticas e experiências profissionais que enriqueceram meu aprendizado. Cada um representa um marco importante no meu desenvolvimento técnico.',
          style: GoogleFonts.poppins(
            fontSize: fontSize - 4,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }

  // Função para construir a grade de certificados
  Widget _buildCertificatesGrid(
      BuildContext context, BoxConstraints constraints) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 20.0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: constraints.maxWidth > 700 ? 3 : 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio:
            0.9, // Ajuste de proporção entre largura e altura dos cards
      ),
      itemCount: certificates.length,
      itemBuilder: (context, index) {
        return _buildCertificateCard(certificates[index]);
      },
    );
  }

  // Função para construir os cards de certificados
  Widget _buildCertificateCard(Certificate certificate) {
    return Card(
      color: const Color(0xFF102A43),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ícone ou Imagem representando o certificado
            Icon(
              certificate.icon,
              size: 40,
              color: Colors.lightBlueAccent,
            ),
            const SizedBox(height: 15),
            // Nome do certificado
            Text(
              certificate.title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Descrição do certificado
            Expanded(
              child: Text(
                certificate.description,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Função para construir o AppBar
  List<Widget> _buildAppBarActions(BuildContext context) {
    return [
      TextButton(
        onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
        child: const Text('Home', style: TextStyle(color: Colors.white)),
      ),
      TextButton(
        onPressed: () => Navigator.pushNamed(context, '/habilidades'),
        child: const Text('Habilidades', style: TextStyle(color: Colors.white)),
      ),
      TextButton(
        onPressed: () => Navigator.pushNamed(context, '/certificados'),
        child:
            const Text('Certificados', style: TextStyle(color: Colors.white)),
      ),
      TextButton(
        onPressed: () => Navigator.pushNamed(context, '/projetos'),
        child: const Text('Projetos', style: TextStyle(color: Colors.white)),
      ),
    ];
  }

  // Função para construir o Drawer
  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF081B29),
            ),
            child: Image.asset(
              'assets/images/logo.jpeg',
              height: 50,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, '/home'),
          ),
          ListTile(
            leading: const Icon(Icons.build),
            title: const Text('Habilidades'),
            onTap: () => Navigator.pushNamed(context, '/habilidades'),
          ),
          ListTile(
            leading: const Icon(Icons.card_membership),
            title: const Text('Certificados'),
            onTap: () => Navigator.pushNamed(context, '/certificados'),
          ),
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('Projetos'),
            onTap: () => Navigator.pushNamed(context, '/projetos'),
          ),
        ],
      ),
    );
  }
}

// Estrutura para os certificados
class Certificate {
  final String title;
  final String description;
  final IconData icon;

  Certificate(
      {required this.title, required this.description, required this.icon});
}

// Lista de certificados
final List<Certificate> certificates = [
  Certificate(
    title: 'Desenvolvimento de Aplicativo - Android Studio',
    description: 'Desenvolvimento de aplicativos nativos com Android Studio.',
    icon: Icons.android,
  ),
  Certificate(
    title: 'Sistemas Eletrônicos e Automação com Arduino',
    description: 'Automação com Arduino e integração de sistemas eletrônicos.',
    icon: Icons.electrical_services,
  ),
  Certificate(
    title: 'Aplicações Híbridas com Flutter',
    description:
        'Desenvolvimento de aplicações móveis multiplataforma com Flutter.',
    icon: Icons.phone_android,
  ),
  // Adicione mais certificados conforme necessário
];
