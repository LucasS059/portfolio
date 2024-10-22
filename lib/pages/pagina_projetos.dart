import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjetosPage extends StatelessWidget {
  const ProjetosPage({super.key});

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
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildIntroSection(context),
                  const SizedBox(height: 20),
                  _buildProjectsGrid(context, constraints),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Função para construir a seção de introdução
  Widget _buildIntroSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Meus Projetos',
          style: GoogleFonts.poppins(
            fontSize: 28,
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Aqui estão alguns dos projetos em que trabalhei, refletindo meu compromisso com o desenvolvimento de soluções inovadoras e impactantes.',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }

  // Função para construir a grade de projetos
  Widget _buildProjectsGrid(BuildContext context, BoxConstraints constraints) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: constraints.maxWidth > 700 ? 2 : 1,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1.2, // Proporção dos cards
      ),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return _buildProjectCard(projects[index]);
      },
    );
  }

  // Função para construir os cards de projetos
  Widget _buildProjectCard(Project project) {
    return Card(
      color: const Color(0xFF102A43),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                project.imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  project.description,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    launch(project.githubLink);
                  },
                  child: Text(
                    'Ver no GitHub',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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

// Estrutura para os projetos
class Project {
  final String title;
  final String description;
  final String githubLink;
  final String imagePath;

  Project({
    required this.title,
    required this.description,
    required this.githubLink,
    required this.imagePath,
  });
}

// Lista de projetos
final List<Project> projects = [
  Project(
    title: 'Site para Missão Ambiental',
    description:
        'Desenvolvi um site para promover a conscientização ambiental e divulgar as iniciativas da Missão Ambiental. Utilizando HTML, CSS e JavaScript, criei um design responsivo e intuitivo.',
    githubLink: 'https://github.com/LucasS059/PI-MissaoAmbiental.git',
    imagePath: 'assets/images/MissaoAmbiental.png',
  ),
  Project(
    title: 'Aplicativo Móvel - YE Gestão de Saúde',
    description:
        'Contribuí para o desenvolvimento de um aplicativo móvel que facilita o acesso aos serviços de saúde da instituição, utilizando React Native e Firebase.',
    githubLink: 'https://github.com/LucasS059/YE_GESTAO_DE_SAUDE.git',
    imagePath: 'assets/images/Tela_App_YEGestao.jpg',
  ),
  // Adicione mais projetos conforme necessário
];
