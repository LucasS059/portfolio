import 'package:flutter/material.dart';
import 'package:portfolio_em_flutter/pages/pagina_certificado.dart';
import 'package:portfolio_em_flutter/pages/pagina_habilidade.dart';
import 'package:portfolio_em_flutter/pages/pagina_projetos.dart';
import 'pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio do Lucas ',
      home:  const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/habilidades': (context) => const HabilidadesPage(),
        '/certificados': (context) => const CertificadosPage(),
        '/projetos': (context) => const ProjetosPage(),
      },
    );
  }
}