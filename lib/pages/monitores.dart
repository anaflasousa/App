import 'package:flutter/material.dart';

import '../components/campoPesquisa.dart';

import '../components/layout.dart';
import '../components/monitoresCard.dart';

class MonitoresPage extends StatefulWidget {
  const MonitoresPage({super.key});

  @override
  State<MonitoresPage> createState() => _MonitoresPageState();
}

class _MonitoresPageState extends State<MonitoresPage> {
  final TextEditingController pesquisaController = TextEditingController();

  final List<Map<String, String>> monitores = const [
    {
      'nome': 'Monitor 1',
      'imagem': '',
      'equipe': 'Equipe Espacial • Tarde',
      'ingresso': '2025',
      'email': 'A definir',
      'ano': '3º ano',
      'curso': 'Técnico em Informática',
    },
    {
      'nome': 'Monitor 2',
      'imagem': '',
      'equipe': 'Equipe Astronômica • Manhã',
      'ingresso': 'A definir',
      'email': 'A definir',
      'ano': '2º ano',
      'curso': 'Técnico em Mecatrônica',
    },
    {
      'nome': 'Monitor 3',
      'imagem': '',
      'equipe': 'Equipe Espacial • Manhã',
      'ingresso': 'A definir',
      'email': 'A definir',
      'ano': '4º ano',
      'curso': 'Técnico em Informática',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final pesquisa = pesquisaController.text.toLowerCase();

    final monitoresFiltrados = monitores.where((monitor) {
      return monitor['nome']!.toLowerCase().contains(pesquisa) ||
          monitor['equipe']!.toLowerCase().contains(pesquisa) ||
          monitor['email']!.toLowerCase().contains(pesquisa) ||
          monitor['curso']!.toLowerCase().contains(pesquisa);
    }).toList();

    return Layout(
      titulo: 'Monitores',
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CABEÇALHO
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF17171A),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monitores',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Conheça a equipe de monitores do CVT-E.',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // CAMPO DE PESQUISA
            CampoPesquisa(
              controller: pesquisaController,
              onChanged: (valor) {
                setState(() {});
              },
            ),

            const SizedBox(height: 30),

            // TÍTULO
            const Text(
              'Equipe de monitores',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            // MONITORES FILTRADOS
            ...monitoresFiltrados.map(
              (monitor) => Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: MonitoresCard(
                  nome: monitor['nome'] ?? 'A definir',
                  imagem: monitor['imagem'] ?? '',
                  equipe: monitor['equipe'] ?? 'A definir',
                  ingresso: monitor['ingresso'] ?? 'A definir',
                  email: monitor['email'] ?? 'A definir',
                  ano: monitor['ano'] ?? 'A definir',
                  curso: monitor['curso'] ?? 'A definir',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
