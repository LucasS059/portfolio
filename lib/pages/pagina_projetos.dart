import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjetosPage extends StatelessWidget {
  const ProjetosPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          actions: MediaQuery.of(context).size.width > 700
              ? [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/habilidades');
                    },
                    child: const Text(
                      'Habilidades',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/certificados');
                    },
                    child: const Text(
                      'Certificados',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/projetos');
                    },
                    child: const Text(
                      'Projetos',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]
              : null,
        ),
      ),
      drawer: MediaQuery.of(context).size.width <= 700
          ? Drawer(
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
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.build),
                    title: const Text('Habilidades'),
                    onTap: () {
                      Navigator.pushNamed(context, '/habilidades');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.card_membership),
                    title: const Text('Certificados'),
                    onTap: () {
                      Navigator.pushNamed(context, '/certificados');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.code),
                    title: const Text('Projetos'),
                    onTap: () {
                      Navigator.pushNamed(context, '/projetos');
                    },
                  ),
                ],
              ),
            )
          : null,
      backgroundColor: const Color(0xFF081B29),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double padding = constraints.maxWidth > 700 ? 40.0 : 20.0;
          double fontSize = constraints.maxWidth > 700 ? 20 : 16;
          double headingFontSize = constraints.maxWidth > 700 ? 24 : 20;
          double spacing = constraints.maxWidth > 700 ? 40 : 20;
          return SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Esses projetos representam apenas uma pequena amostra da minha experiência de trabalho, mas refletem meu compromisso com o desenvolvimento de soluções práticas e impactantes em diferentes áreas. Cada projeto contribuiu para o meu crescimento profissional e me permitiu aprimorar minhas habilidades como desenvolvedor de software.',
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: spacing),
                    const Divider(color: Colors.lightBlue),
                    SizedBox(height: spacing),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Site para Missão Ambiental',
                          style: TextStyle(
                            fontSize: headingFontSize,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Card(
                          color: const Color(0xFF102A43),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Participei do desenvolvimento de um site para promover a conscientização ambiental e divulgar as iniciativas da Missão Ambiental, uma organização dedicada à preservação do meio ambiente. O site foi desenvolvido utilizando HTML, CSS e JavaScript, com ênfase na criação de um design responsivo e intuitivo para oferecer aos usuários uma experiência agradável em qualquer dispositivo. O objetivo principal era fornecer informações sobre os projetos e atividades disponíveis na Missão Ambiental, onde foi possível explorar a atuação da organização e as soluções sustentáveis implementadas.\n\nLink para o projeto no GitHub: ',
                                  style: TextStyle(color: Colors.white70, fontSize: 16),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    launch('https://github.com/LucasS059/PI-MissaoAmbiental.git');
                                  },
                                  child: const Text(
                                    'https://github.com/LucasS059/PI-MissaoAmbiental.git',
                                    style: TextStyle(color: Colors.blue, fontSize: 16, decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/MissaoAmbiental.png',
                            height: constraints.maxWidth > 700 ? 300 : 500,
                            width: constraints.maxWidth > 700 ? 600 : 500,
                          ),
                        ),
                        SizedBox(height: spacing),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Aplicativo móvel para a YE Gestão de Saúde São Camilo',
                              style: TextStyle(
                                fontSize: headingFontSize,
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Card(
                              color: const Color(0xFF102A43),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Como parte de uma equipe de desenvolvimento, contribuí para a criação de um aplicativo móvel para a YE Gestão de Saúde São Camilo. O aplicativo tinha como objetivo facilitar o acesso dos clientes aos serviços de saúde oferecidos pela instituição, permitindo agendar consultas, receber lembretes de medicamentos, acessar resultados de exames e receber notícias e atualizações sobre saúde.\n\nO desenvolvimento do aplicativo foi feito utilizando tecnologias como React Native para a construção da interface de usuário e integração com APIs externas para acessar os sistemas de gestão de saúde. Também utilizamos o Firebase como banco de dados e para a autenticação dos usuários, garantindo segurança e eficiência no gerenciamento das informações dos pacientes. O projeto foi uma oportunidade para aplicar conceitos de UX/UI design e garantir uma experiência eficiente e amigável para os usuários.\n\nLink para o projeto no GitHub: ',
                                      style: TextStyle(color: Colors.white70, fontSize: 16),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        launch('https://github.com/LucasS059/YE_GESTAO_DE_SAUDE.git');
                                      },
                                      child: const Text(
                                        'https://github.com/LucasS059/YE_GESTAO_DE_SAUDE.git',
                                        style: TextStyle(color: Colors.blue, fontSize: 16, decoration: TextDecoration.underline),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'assets/images/Tela_App_YEGestao.jpg',
                                height: constraints.maxWidth > 700 ? 300 : 500,
                                width: constraints.maxWidth > 700 ? 300 : 500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

