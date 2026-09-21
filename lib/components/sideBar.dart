import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/home.dart';
import '../pages/oficinas.dart';
import '../pages/projetos.dart';
import '../pages/documentos.dart';
import '../pages/codigos.dart';
import '../pages/kits.dart';
import '../pages/ideias.dart';
import '../pages/monitores.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: const Color(0xFF121215),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //Divisão: Menu de navegação
          const Padding(
            padding: EdgeInsets.fromLTRB(22, 20, 10, 10),
            child: Text(
              'Menu de navegação',
              style: TextStyle(
                color: Color(0xFF71717A),
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Pag inicial
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/home.svg',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Página Inicial',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          //Oficinas
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OficinasPage(),
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/newspaper.svg',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Oficinas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          //Projetos
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProjetosPage(),
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/rocket.svg',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Projetos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          //Documentos
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DocumentosPage(),
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/note.svg',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Documentos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          //Códigos
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CodigosPage(),
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/computer.svg',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Códigos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          //Kits
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const KitsPage(),
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/kit.svg',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Kits',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          //Divisão: Comunicação e pessoas
          const Padding(
            padding: EdgeInsets.fromLTRB(22, 20, 10, 10),
            child: Text(
              'Comunicação e pessoas',
              style: TextStyle(
                color: Color(0xFF71717A),
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Ideias e sugestões
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const IdeiasPage(),
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/bubble.svg',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Ideias e sugestões',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          
          //Monitores
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MonitoresPage(),
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/team.svg',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Monitores',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}