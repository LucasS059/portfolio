import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lucas Silva',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF081B29),
        iconTheme: const IconThemeData(color: Colors.white), // Define a cor do ícone das três barrinhas
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            if (orientation == Orientation.portrait) {
              return ListView(
                children: [
                  Column(
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
                          color: Color(0xFF00ABF0), // Cor alterada
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
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Image.asset(
                      'assets/images/teste.png', // Substitua pelo caminho da sua imagem
                      width: screenWidth > 600 ? 0.5 * screenWidth : 0.8 * screenWidth,
                      height: screenWidth > 600 ? 0.5 * screenWidth : 0.8 * screenWidth,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            fontSize: screenWidth > 600 ? 25 : 15,
                            color: Color(0xFF00ABF0), 
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
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Image.asset(
                        'assets/images/teste.png',
                        width: screenWidth > 600 ? 0.5 * screenWidth : 0.8 * screenWidth,
                        height: screenWidth > 600 ? 0.5 * screenWidth : 0.8 * screenWidth,
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
