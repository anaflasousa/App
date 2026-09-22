import 'package:flutter/material.dart';
import '../components/layout.dart';
import '../components/projetoCard.dart';
import '../components/filtroButton.dart';

class ProjetosPage extends StatefulWidget {
  const ProjetosPage({super.key});

  @override
  State<ProjetosPage> createState() => _ProjetosPageState();
}

class _ProjetosPageState extends State<ProjetosPage> {
  String filtroSelecionado = 'Todos';

  final List<Map<String, dynamic>> projetos = [
    {
      'titulo': 'Jogo CVT-E',
      'descricao':
          'Projeto voltado para estudos e atividades práticas relacionadas à astronomia.',
      'status': 'Em andamento',
      'responsavel': 'Kislan e Gustavo',
      'data': 'Setembro de 2026',
      'icone': Icons.public,
    },
    {
      'titulo': 'Oficina de Programação',
      'descricao':
          'Projeto voltado para estudos e atividades práticas relacionadas à programação e desenvolvimento de software.',
      'status': 'Em andamento',
      'responsavel': 'Ana Flávia',
      'data': 'Setembro de 2026',
      'icone': Icons.computer_outlined,
    },
    {
      'titulo': 'Projeto de Sonda Espacial',
      'descricao':
          'Projeto voltado para estudos e atividades práticas relacionadas à robótica e exploração espacial.',
      'status': 'Em andamento',
      'responsavel': 'João Pedro',
      'data': 'Agosto de 2026',
      'icone': Icons.smart_toy_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final projetosFiltrados = filtroSelecionado == 'Todos'
        ? projetos
        : projetos
            .where(
              (projeto) =>
                  projeto['status'] == filtroSelecionado,
            )
            .toList();

    return Layout(
      titulo: 'Projetos',
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cabeçalho
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
                    'Projetos do CVT-E',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Conheça os projetos desenvolvidos e em desenvolvimento pela Equipe do CVT-E.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Filtros
            Row(
              children: [
                FiltroButton(
                  texto: 'Todos',
                  selecionado: filtroSelecionado == 'Todos',
                  onPressed: () {
                    setState(() {
                      filtroSelecionado = 'Todos';
                    });
                  },
                ),

                const SizedBox(width: 10),

                FiltroButton(
                  texto: 'Em andamento',
                  selecionado:
                      filtroSelecionado == 'Em andamento',
                  onPressed: () {
                    setState(() {
                      filtroSelecionado = 'Em andamento';
                    });
                  },
                ),

                const SizedBox(width: 10),

                FiltroButton(
                  texto: 'Concluídos',
                  selecionado:
                      filtroSelecionado == 'Concluído',
                  onPressed: () {
                    setState(() {
                      filtroSelecionado = 'Concluído';
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Projetos
            ...projetosFiltrados.map(
              (projeto) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ProjetoCard(
                  titulo: projeto['titulo'],
                  descricao: projeto['descricao'],
                  status: projeto['status'],
                  responsavel: projeto['responsavel'],
                  data: projeto['data'],
                  icone: projeto['icone'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}