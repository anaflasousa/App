import 'package:flutter/material.dart';
import '../components/layout.dart';
import '../components/oficinaCard.dart';
import '../components/filtroButton.dart';

class OficinasPage extends StatefulWidget {
  const OficinasPage({super.key});

  @override
  State<OficinasPage> createState() => _OficinasPageState();
}

class _OficinasPageState extends State<OficinasPage> {
  String filtroSelecionado = 'Todas';

  final List<Map<String, dynamic>> oficinas = [
    {
      'titulo': 'Introdução à Astronomia',
      'categoria': 'Astronômico',
      'descricao':
          'Conheça conceitos básicos sobre astronomia, planetas, estrelas e outros corpos celestes.',
      'duracao': '2 horas',
      'participantes': '15 pessoas',
      'responsavel': 'A definir',
      'icone': Icons.public,
    },
    {
      'titulo': 'Exploração Espacial',
      'categoria': 'Espacial',
      'descricao':
          'Aprenda sobre exploração espacial, missões, foguetes e tecnologias utilizadas no espaço.',
      'duracao': '2 horas',
      'participantes': '15 pessoas',
      'responsavel': 'A definir',
      'icone': Icons.rocket_launch,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final oficinasFiltradas = filtroSelecionado == 'Todas'
        ? oficinas
        : oficinas
            .where(
              (oficina) =>
                  oficina['categoria'] == filtroSelecionado,
            )
            .toList();

    return Layout(
      titulo: 'Oficinas',
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
                    'Central de Oficinas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Encontre oficinas e atividades disponíveis no CVT-E.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // FILTROS
            Row(
              children: [
                FiltroButton(
                  texto: 'Todas',
                  selecionado: filtroSelecionado == 'Todas',
                  onPressed: () {
                    setState(() {
                      filtroSelecionado = 'Todas';
                    });
                  },
                ),

                const SizedBox(width: 10),

                FiltroButton(
                  texto: 'Astronômico',
                  selecionado: filtroSelecionado == 'Astronômico',
                  onPressed: () {
                    setState(() {
                      filtroSelecionado = 'Astronômico';
                    });
                  },
                ),

                const SizedBox(width: 10),

                FiltroButton(
                  texto: 'Espacial',
                  selecionado: filtroSelecionado == 'Espacial',
                  onPressed: () {
                    setState(() {
                      filtroSelecionado = 'Espacial';
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 24),

            // OFICINAS
            ...oficinasFiltradas.map(
              (oficina) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: OficinaCard(
                  titulo: oficina['titulo'],
                  categoria: oficina['categoria'],
                  descricao: oficina['descricao'],
                  duracao: oficina['duracao'],
                  participantes: oficina['participantes'],
                  responsavel: oficina['responsavel'],
                  icone: oficina['icone'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}