import 'package:flutter/material.dart';
import 'package:boxicons/boxicons.dart';

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
      body: LayoutBuilder(
        builder: (context, constraints) {
          double padding = constraints.maxWidth > 700 ? 20.0 : 10.0;
          double headingFontSize = constraints.maxWidth > 700 ? 24 : 20;
          double cardPadding = constraints.maxWidth > 700 ? 20.0 : 10.0;

          return SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Habilidades Técnicas',
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
                        padding: EdgeInsets.all(cardPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSkillRow(
                              '• Conhecimento de linguagens de programação como JavaScript, Python, PHP.',
                              [
                                Boxicons.bxl_javascript,
                                Boxicons.bxl_python,
                                Boxicons.bxl_php,
                              ],
                              [
                                Colors.yellow,
                                Colors.blue,
                                Colors.blueAccent,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Entendimento de conceitos de banco de dados e experiência com SQL, MongoDB.',
                              [
                                Boxicons.bxs_data,
                                Boxicons.bxs_data,
                              ],
                              [
                                Colors.orange,
                                Colors.green,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Conhecimento de ferramentas de controle de versão, como Git.',
                              [
                                Boxicons.bxl_git,
                              ],
                              [
                                Colors.orange,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Capacidade de resolver problemas de forma eficiente e criativa.',
                              [
                                Boxicons.bxs_brain,
                              ],
                              [
                                Colors.purple,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Capacidade de escrever código limpo, modular e reutilizável.',
                              [
                                Boxicons.bx_code_block,
                              ],
                              [
                                Colors.cyan,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Familiaridade com metodologias de desenvolvimento ágil, como Scrum ou Kanban.',
                              [
                                Boxicons.bx_sitemap,
                              ],
                              [
                                Colors.teal,
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Divider(color: Colors.lightBlue),
                    const SizedBox(height: 20),
                    Text(
                      'Habilidades Interpessoais',
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
                        padding: EdgeInsets.all(cardPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSkillRow(
                              '• Boa capacidade de comunicação e trabalho em equipe.',
                              [
                                Boxicons.bxs_chat,
                              ],
                              [
                                Colors.green,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Habilidade para colaborar efetivamente com designers, gerentes de projeto e outros membros da equipe.',
                              [
                                Boxicons.bxs_group,
                              ],
                              [
                                Colors.blueAccent,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Capacidade de aprender e se adaptar rapidamente a novas tecnologias e ferramentas.',
                              [
                                Boxicons.bxs_book_open,
                              ],
                              [
                                Colors.amber,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Capacidade de gerenciar o tempo e priorizar tarefas de forma eficiente.',
                              [
                                Boxicons.bxs_time,
                              ],
                              [
                                Colors.redAccent,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Ser proativo e ter uma mentalidade de resolução de problemas.',
                              [
                                Boxicons.bxs_bulb,
                              ],
                              [
                                Colors.yellow,
                              ],
                            ),
                            const SizedBox(height: 10),
                            _buildSkillRow(
                              '• Capacidade de receber e incorporar feedback de forma construtiva.',
                              [
                                Boxicons.bxs_message_rounded_dots,
                              ],
                              [
                                Colors.orange,
                              ],
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

  Widget _buildSkillRow(String text, List<IconData> icons, List<Color> colors) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ),
        Row(
          children: List.generate(
            icons.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Icon(
                icons[index],
                color: colors[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
