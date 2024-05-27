import 'package:flutter/material.dart';

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
              height: 70,
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
                      'assets/images/logo.png',
                      height: 70,
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Habilidades Técnicas',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ...[
                  'Conhecimento de linguagens de programação como JavaScript, Python, PHP.',
                  'Entendimento de conceitos de banco de dados e experiência com SQL, MongoDB.',
                  'Conhecimento de ferramentas de controle de versão, como Git.',
                  'Capacidade de resolver problemas de forma eficiente e criativa.',
                  'Capacidade de escrever código limpo, modular e reutilizável.',
                  'Familiaridade com metodologias de desenvolvimento ágil, como Scrum ou Kanban.',
                ].map((skill) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        '• $skill',
                        style: const TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    )),
                const SizedBox(height: 20),
                const Text(
                  'Habilidades Interpessoais',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ...[
                  'Boa capacidade de comunicação e trabalho em equipe.',
                  'Habilidade para colaborar efetivamente com designers, gerentes de projeto e outros membros da equipe.',
                  'Capacidade de aprender e se adaptar rapidamente a novas tecnologias e ferramentas.',
                  'Capacidade de gerenciar o tempo e priorizar tarefas de forma eficiente.',
                  'Ser proativo e ter uma mentalidade de resolução de problemas.',
                  'Capacidade de receber e incorporar feedback de forma construtiva.',
                ].map((skill) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        '• $skill',
                        style: const TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
