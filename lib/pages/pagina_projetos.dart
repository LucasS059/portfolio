import 'package:flutter/material.dart';

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
          actions: screenWidth > 700
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
      drawer: screenWidth <= 700
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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(screenWidth > 700 ? 40.0 : 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Esses projetos representam apenas uma pequena amostra da minha experiência de trabalho, mas refletem meu compromisso com o desenvolvimento de soluções práticas e impactantes em diferentes áreas. Cada projeto contribuiu para o meu crescimento profissional e me permitiu aprimorar minhas habilidades como desenvolvedor de software.',
                  style: TextStyle(
                    fontSize: screenWidth > 700 ? 20 : 16,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: screenWidth > 700 ? 40 : 20),
                const Divider(color: Colors.lightBlue),
                SizedBox(height: screenWidth > 700 ? 40 : 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Site para Missão Ambiental',
                      style: TextStyle(
                        fontSize: screenWidth > 700 ? 24 : 20,
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
                              'Participei do desenvolvimento de um site para promover a conscientização ambiental e divulgar as iniciativas da Missão Ambiental, uma organização dedicada à preservação do meio ambiente. O site foi desenvolvido utilizando HTML, CSS e JavaScript, com ênfase na criação de um design responsivo e intuitivo para oferecer aos usuários uma experiência agradável em qualquer dispositivo. O objetivo principal era fornecer informações sobre os projetos e atividades disponíveis na Missão Ambiental, onde foi possível explorar a atuação da organização e as soluções sustentáveis implementadas.\n\nLink para o projeto no GitHub: https://github.com/seuusuario/seurepositorio',
                              style: TextStyle(color: Colors.white70, fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              'assets/images/logo.jpeg',
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenWidth > 700 ? 40 : 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aplicativo móvel para a YE Gestão de Saúde São Camilo',
                      style: TextStyle(
                        fontSize: screenWidth > 700 ? 24 : 20,
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
                              'Como parte de uma equipe de desenvolvimento, contribuí para a criação de um aplicativo móvel para a YE Gestão de Saúde São Camilo. O aplicativo tinha como objetivo facilitar o acesso dos pacientes aos serviços de saúde oferecidos pela instituição, permitindo agendar consultas, receber lembretes de medicamentos, acessar resultados de exames e receber notícias e atualizações sobre saúde.\n\nO desenvolvimento do aplicativo foi feito utilizando tecnologias como React Native para a construção da interface de usuário e integração com APIs externas para acessar os sistemas de gestão de saúde. Também utilizamos o Firebase como banco de dados e para a autenticação dos usuários, garantindo segurança e eficiência no gerenciamento das informações dos pacientes. O projeto foi uma oportunidade para aplicar conceitos de UX/UI design e garantir uma experiência eficiente e                        amigável para os usuários.\n\nLink para o projeto no GitHub: https://github.com/seuusuario/seurepositorio',
                              style: TextStyle(color: Colors.white70, fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            Image.asset(
                              'assets/images/logo.jpeg',
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

