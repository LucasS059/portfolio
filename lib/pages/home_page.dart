import 'package:flutter/material.dart';
import 'package:boxicons/boxicons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

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
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 700) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Oii, Eu sou o Lucas!',
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
                                  color: const Color(0xFF00ABF0),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Sou um entusiasta da tecnologia apaixonado pelo desenvolvimento de software. Este é o meu portfólio, onde compartilho alguns dos projetos que tenho trabalhado, minhas experiências, habilidades e certificados. Espero que você goste e se sinta inspirado pela minha jornada no mundo da programação!',
                                style: TextStyle(
                                  fontSize: screenWidth > 600 ? 18 : 16,
                                  color: Colors.white70,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      launch('https://www.linkedin.com/in/seu_linkedin');
                                    },
                                    icon: const Icon(
                                      Boxicons.bxl_linkedin,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      launch('https://github.com/seu_github');
                                    },
                                    icon: const Icon(
                                      Boxicons.bxl_github,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      launch('mailto:seu_email');
                                    },
                                    icon: const Icon(
                                      Boxicons.bx_envelope,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'assets/images/boneco_apenas.png',
                              width: screenWidth > 600 ? 0.4 * screenWidth : 0.8 * screenWidth,
                              height: screenWidth > 600 ? 0.4 * screenWidth : 0.8 * screenWidth,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Oii, Eu sou o Lucas!',
                                  style: TextStyle(
                                    fontSize: screenWidth > 1440 ? 50 : screenWidth > 700 ? 40 : 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Desenvolvedor Frontend',
                                  style: TextStyle(
                                    fontSize: screenWidth > 1440 ? 30 : screenWidth > 700 ? 25 : 15,
                                    color: const Color(0xFF00ABF0),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Sou um entusiasta da tecnologia apaixonado pelo desenvolvimento de software. Este é o meu portfólio, onde compartilho alguns dos projetos que tenho trabalhado, minhas experiências, habilidades e certificados. Espero que você gostee se sinta inspirado pela minha jornada no mundo da programação!',
                                  style: TextStyle(
                                    fontSize: screenWidth > 1440 ? 20 : screenWidth > 700 ? 18 : 16,
                                    color: Colors.white70,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        launch('https://www.linkedin.com/in/seu_linkedin');
                                      },
                                      icon: const Icon(
                                        Boxicons.bxl_linkedin,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        launch('https://github.com/seu_github');
                                      },
                                      icon: const Icon(
                                        Boxicons.bxl_github,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        launch('mailto:seu_email');
                                      },
                                      icon: const Icon(
                                        Boxicons.bx_envelope,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/images/boneco_apenas.png',
                                width: screenWidth > 700 ? 0.4 * screenWidth : 0.2 * screenWidth,
                                height: screenWidth > 700 ? 0.4 * screenWidth : 0.2 * screenWidth,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

