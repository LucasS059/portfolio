import 'package:flutter/material.dart';
import 'package:boxicons/boxicons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
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
      body: Stack(
        children: [
          _buildGradientHeader(screenWidth),
          _buildContent(screenWidth, context),
        ],
      ),
    );
  }

  // Função para criar o cabeçalho com gradiente
  Widget _buildGradientHeader(double screenWidth) {
    return Container(
      height: screenWidth < 700 ? 400 : 500,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF00ABF0), Color(0xFF081B29)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
          bottomRight: Radius.circular(80),
        ),
      ),
    );
  }

  // Função para o conteúdo principal
  Widget _buildContent(double screenWidth, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Center(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/Lucas.heic'),
              backgroundColor: Colors.transparent,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text(
                  'Lucas Silva Barboza',
                  style: TextStyle(
                    fontSize: screenWidth > 600 ? 40 : 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Desenvolvedor Frontend',
                  style: TextStyle(
                    fontSize: screenWidth > 600 ? 25 : 20,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Apaixonado por desenvolvimento de software e sempre buscando desafios. Aqui está meu portfólio com projetos, habilidades e experiências.',
                  style: TextStyle(
                    fontSize: screenWidth > 600 ? 18 : 16,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                _buildSocialIcons(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Função para construir os ícones de redes sociais com efeito de hover
  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialIcon(
          Boxicons.bxl_linkedin,
          'https://www.linkedin.com/in/lucas-silva-barboza-a2568b285/',
        ),
        _buildSocialIcon(
          Boxicons.bxl_github,
          'https://github.com/LucasS059',
        ),
        _buildSocialIcon(
          Boxicons.bx_envelope,
          'mailto:lucasbarboza299@gmail.com',
        ),
      ],
    );
  }

  // Função para construir ícones com efeito de hover
  Widget _buildSocialIcon(IconData icon, String url) {
    return MouseRegion(
      onEnter: (_) {
        // Efeito de hover pode ser adicionado aqui se necessário
      },
      child: IconButton(
        onPressed: () {
          launch(url);
        },
        icon: Icon(icon, size: 50, color: Colors.white),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: const Color(0xFF00ABF0),
      ),
    );
  }

  // Função para construir AppBar com melhorias de layout
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

  // Função para construir Drawer
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
              height: 70,
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
