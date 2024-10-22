import 'package:flutter/material.dart';
import 'package:boxicons/boxicons.dart';
import 'package:google_fonts/google_fonts.dart';

class HabilidadesPage extends StatelessWidget {
  const HabilidadesPage({super.key});

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
                  _buildHeaderSection(context),
                  const SizedBox(height: 20),
                  _buildSkillsSection(
                      context, 'Habilidades Técnicas', technicalSkills),
                  const SizedBox(height: 30),
                  _buildSkillsSection(context, 'Habilidades Interpessoais',
                      interpersonalSkills),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Função para construir o cabeçalho
  Widget _buildHeaderSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Minhas Habilidades',
          style: GoogleFonts.poppins(
            fontSize: 30,
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Aqui estão as principais habilidades que desenvolvi ao longo da minha carreira, divididas entre habilidades técnicas e interpessoais.',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }

  // Função para construir uma seção de habilidades (técnicas ou interpessoais)
  Widget _buildSkillsSection(
      BuildContext context, String sectionTitle, List<Skill> skills) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionTitle,
          style: GoogleFonts.poppins(
            fontSize: 24,
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        GridView.builder(
          padding: const EdgeInsets.only(top: 10),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 700 ? 2 : 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.8,
          ),
          itemCount: skills.length,
          itemBuilder: (context, index) {
            return _buildSkillCard(skills[index]);
          },
        ),
      ],
    );
  }

  // Função para construir os cards de habilidades
  Widget _buildSkillCard(Skill skill) {
    return Card(
      color: const Color(0xFF102A43),
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  skill.icon,
                  size: 40,
                  color: skill.iconColor,
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Text(
                    skill.title,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              skill.description,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white70,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  // Função para construir o AppBar com melhorias de layout
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

// Estrutura para habilidades
class Skill {
  final String title;
  final String description;
  final IconData icon;
  final Color iconColor;

  Skill({
    required this.title,
    required this.description,
    required this.icon,
    required this.iconColor,
  });
}

// Lista de habilidades técnicas
final List<Skill> technicalSkills = [
  Skill(
    title: 'Linguagens de Programação',
    description: 'JavaScript, Python, e outras linguagens amplamente usadas.',
    icon: Boxicons.bxl_javascript,
    iconColor: Colors.yellow,
  ),
  Skill(
    title: 'Banco de Dados',
    description: 'Experiência com MySQL, MongoDB para gerenciamento de dados.',
    icon: Boxicons.bxs_data,
    iconColor: Colors.orange,
  ),
  Skill(
    title: 'Controle de Versão',
    description: 'Conhecimento em Git para versionamento de projetos.',
    icon: Boxicons.bxl_git,
    iconColor: Colors.redAccent,
  ),
  Skill(
    title: 'Metodologias Ágeis',
    description:
        'Familiaridade com Scrum e Kanban para organização de projetos.',
    icon: Boxicons.bx_sitemap,
    iconColor: Colors.teal,
  ),
];

// Lista de habilidades interpessoais
final List<Skill> interpersonalSkills = [
  Skill(
    title: 'Trabalho em Equipe',
    description:
        'Capacidade de colaborar com designers, gerentes de projeto, e membros da equipe.',
    icon: Boxicons.bxs_group,
    iconColor: Colors.blueAccent,
  ),
  Skill(
    title: 'Adaptação e Aprendizado',
    description:
        'Habilidade de aprender e se adaptar rapidamente a novas tecnologias.',
    icon: Boxicons.bxs_book_open,
    iconColor: Colors.amber,
  ),
  Skill(
    title: 'Gerenciamento de Tempo',
    description:
        'Capacidade de gerenciar o tempo e priorizar tarefas com eficiência.',
    icon: Boxicons.bxs_time,
    iconColor: Colors.redAccent,
  ),
  Skill(
    title: 'Proatividade',
    description: 'Mentalidade de resolução de problemas e busca por soluções.',
    icon: Boxicons.bxs_bulb,
    iconColor: Colors.yellow,
  ),
];
