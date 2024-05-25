import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lucas Silva',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF081B29),
        actions: [
          Builder(
            builder: (context) => MediaQuery.of(context).size.width > 600
                ? Row(
                    children: [
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
                    ],
                  )
                : IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
          ),
        ],
      ),
      drawer: MediaQuery.of(context).size.width <= 600
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  ListTile(
                    title: const Text('Habilidades'),
                    onTap: () {
                      Navigator.pushNamed(context, '/habilidades');
                    },
                  ),
                  ListTile(
                    title: const Text('Certificados'),
                    onTap: () {
                      Navigator.pushNamed(context, '/certificados');
                    },
                  ),
                  ListTile(
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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth > 600) {
                  // Se a largura da tela for maior que 600, exibir em layout de duas colunas
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
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Desenvolvedor Frontend',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Sou um entusiasta da tecnologia apaixonado pelo desenvolvimento de software. Este é o meu portfólio, onde compartilho alguns dos projetos que tenho trabalhado, minhas experiências, habilidades e certificados. Espero que você goste e se sinta inspirado pela minha jornada no mundo da programação!',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Container(
                            width: 200,
                            height: 200,
                            color: Colors.blue,
                            child: const Center(
                              child: Text(
                                'Sua imagem aqui',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Oii, Eu sou o Lucas!',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Desenvolvedor Frontend',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Sou um entusiasta da tecnologia apaixonado pelo desenvolvimento de software. Este é o meu portfólio, onde compartilho alguns dos projetos que tenho trabalhado, minhas experiências, habilidades e certificados. Espero que você goste e se sinta inspirado pela minha jornada no mundo da programação!',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: 200,
                          height: 200,
                          color: Colors.blue,
                          child: const Center(
                            child: Text(
                              'Sua imagem aqui',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
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
