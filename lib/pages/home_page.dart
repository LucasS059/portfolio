import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Lucas Silva',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: const Color(0xFF081B29),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: screenWidth > 600
              ? [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
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
      drawer: screenWidth <= 600
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xFF081B29),
                    ),
                    child: Text(
                      'Lucas Silva',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
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
            child: screenWidth >= 768 && screenWidth <= 2560
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Oii, Eu sou o Lucas!',
                                  style: TextStyle(
                                    fontSize: screenWidth > 1440 ? 50 : screenWidth > 600 ? 40 : 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'MinhaFonte', // Aplicando a fonte
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Desenvolvedor Frontend',
                                  style: TextStyle(
                                    fontSize: screenWidth > 1440 ? 30 : screenWidth > 600 ? 25 : 15,
                                    color: const Color(0xFF00ABF0),
                                    fontFamily: 'MinhaFonte', // Aplicando a fonte
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Row(
                                  children: [
                                    Icon(
                                      Boxicons.bxl_github,
                                      size: 50,
                                    ),
                                    Icon(
                                      Boxicons.bx_envelope,
                                      size: 50,
                                    ),
                                    Icon(
                                      Boxicons.bxl_linkedin,
                                      size: 50,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'Sou um entusiasta da tecnologia apaixonado pelo desenvolvimento de software. Este é o meu portfólio, onde compartilho alguns dos projetos que tenho trabalhado, minhas experiências, habilidades e certificados. Espero que você goste e se sinta inspirado pela minha jornada no mundo da programação!',
                                  style: TextStyle(
                                    fontSize: screenWidth > 1440 ? 20 : screenWidth > 600 ? 18 : 16,
                                    color: Colors.white70,
                                    fontFamily: 'MinhaFonte', // Aplicando a fonte
                                  ),
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
                                width: screenWidth > 200 ? 0.4 * screenWidth : 0.2 * screenWidth,
                                height: screenWidth > 200 ? 0.4 * screenWidth : 0.2 * screenWidth,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
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
                                  fontFamily: 'MinhaFonte', // Aplicando a fonte
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Desenvolvedor Frontend',
                                style: TextStyle(
                                  fontSize: screenWidth > 600 ? 25 : 20,
                                  color: const Color(0xFF00ABF0),
                                  fontFamily: 'MinhaFonte', // Aplicando a fonte
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Icon(
                                    Boxicons.bxl_github,
                                    size: 50,
                                  ),
                                  Icon(
                                    Boxicons.bx_envelope,
                                    size: 50,
                                  ),
                                  Icon(
                                    Boxicons.bxl_linkedin,
                                    size: 50,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                  'Sou um entusiasta da tecnologia apaixonado pelo desenvolvimento de software. Este é o meu portfólio, onde compartilho alguns dos projetos que tenho trabalhado, minhas experiências, habilidades e certificados. Espero que você goste e se sinta inspirado pela minha jornada no mundo da programação!',
                                style: TextStyle(
                                  fontSize: screenWidth > 600 ? 18 : 16,
                                  color: Colors.white70,
                                  fontFamily: 'MinhaFonte', // Aplicando a fonte
                                ),
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
                  ),
          ),
        ),
      ),
    );
  }
}
