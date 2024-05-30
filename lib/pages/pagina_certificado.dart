import 'package:flutter/material.dart';

class CertificadosPage extends StatelessWidget {
  const CertificadosPage({super.key});

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
          double padding = constraints.maxWidth > 700 ? 20.0 : 10.0;
          double fontSize = constraints.maxWidth > 700 ? 24 : 20;
          return SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Programa de Atividades Especiais (PAE)',
                      style: TextStyle(
                        fontSize: fontSize,
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
                              'No Instituto Mauá de Tecnologia (IMT), estou participando do Programa de Atividades Especiais (PAE). Este programa oferece uma ampla gama de atividades especiais para alunos de todos os cursos e séries do CEUN-IMT, incluindo:',
                              style: TextStyle(color: Colors.white70, fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            _buildItem('Engenharias'),
                            _buildItem('Administração'),
                            _buildItem('Design'),
                            _buildItem('Ciência da Computação'),
                            _buildItem('Sistemas de Informação'),
                            _buildItem('Inteligência Artificial e Ciência de Dados'),
                            _buildItem('Arquitetura e Urbanismo'),
                            _buildItem('Relações Internacionais'),
                            const SizedBox(height: 10),
                            const Text(
                              'A PAE visa a flexibilização da formação acadêmica, articulando os conteúdos com o campo de atuação profissional. O programa utiliza estratégias ativas de aprendizagem para desenvolver competências essenciais, com uma abordagem centrada no aluno. Além disso, valoriza a transdisciplinaridade e as soft skills, destacando a importância da valorização do ser humano.',
                              style: TextStyle(color: Colors.white70, fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Para cada PAE concluída, recebo um certificado. Este certificado é concedido após a participação em, pelo menos, 75% dos encontros, totalizando 40 horas de atividades. O sistema de avaliação é simples, baseado em "Cumpriu" ou "Não cumpriu".',
                              style: TextStyle(color: Colors.white70, fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Até o momento, participei de três PAEs, sendo elas:',
                              style: TextStyle(color: Colors.white70, fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            _buildItem('1. Desenvolvimento de Aplicativo de Celular através do Android Studio (certificado)'),
                            _buildItem('2. Desenvolvimento de Sistemas Eletrônicos e Automação com Arduino (certificado)'),
                            _buildItem('3. Desenvolvimento de Aplicações Híbridas com Flutter (certificado)'),
                            const SizedBox(height: 10),
                            const Text(
                              'Essas atividades têm sido fundamentais para enriquecer minha formação e desenvolver habilidades técnicas e transversais que serão essenciais para minha carreira profissional.',
                              style: TextStyle(color: Colors.white70, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
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

  Widget _buildItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_right,
            color: Colors.lightBlue,
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
