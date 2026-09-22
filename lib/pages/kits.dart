import 'package:flutter/material.dart';

import '../components/layout.dart';
import '../components/kitsCard.dart';
import '../components/filtroButton.dart';

class KitsPage extends StatefulWidget {
  const KitsPage({super.key});

  @override
  State<KitsPage> createState() => _KitsPageState();
}

class _KitsPageState extends State<KitsPage> {
  String filtroCategoria = 'Todas';
  String filtroTurno = 'Todos';

  final List<Map<String, String>> kits = const [
    {
      'titulo': 'Kit de Astronomia',
      'descricao':
          'Conjunto de materiais utilizados para atividades e observações relacionadas à astronomia.',
      'quantidade': '1 kit',
      'responsavel': 'A definir',
      'categoria': 'Astronômico',
      'turno': 'Manhã',
    },
    {
      'titulo': 'Kit de Robótica Espacial',
      'descricao':
          'Materiais utilizados em atividades práticas relacionadas à robótica e exploração espacial.',
      'quantidade': '3 kits',
      'responsavel': 'A definir',
      'categoria': 'Espacial',
      'turno': 'Tarde',
    },
    {
      'titulo': 'Kit de Observação',
      'descricao':
          'Materiais utilizados para atividades de observação e estudos astronômicos.',
      'quantidade': '2 kits',
      'responsavel': 'A definir',
      'categoria': 'Astronômico',
      'turno': 'Tarde',
    },
    {
      'titulo': 'Kit de Exploração Espacial',
      'descricao':
          'Conjunto de materiais para atividades relacionadas à exploração espacial.',
      'quantidade': '2 kits',
      'responsavel': 'A definir',
      'categoria': 'Espacial',
      'turno': 'Manhã',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final kitsFiltrados = kits.where((kit) {
      final categoriaCorresponde =
          filtroCategoria == 'Todas' ||
          kit['categoria'] == filtroCategoria;

      final turnoCorresponde =
          filtroTurno == 'Todos' ||
          kit['turno'] == filtroTurno;

      return categoriaCorresponde && turnoCorresponde;
    }).toList();

    return Layout(
      titulo: 'Kits',
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
                    '🧰 Central de Kits',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Encontre kits e materiais disponíveis no CVT-E.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ÁREA DOS FILTROS
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF17171A),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.white10,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'Filtros',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // FILTRO DE CATEGORIA
                  const Text(
                    'Categoria',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      FiltroButton(
                        texto: 'Todas',
                        selecionado: filtroCategoria == 'Todas',
                        onPressed: () {
                          setState(() {
                            filtroCategoria = 'Todas';
                          });
                        },
                      ),

                      const SizedBox(width: 10),

                      FiltroButton(
                        texto: 'Astronômico',
                        selecionado:
                            filtroCategoria == 'Astronômico',
                        onPressed: () {
                          setState(() {
                            filtroCategoria = 'Astronômico';
                          });
                        },
                      ),

                      const SizedBox(width: 10),

                      FiltroButton(
                        texto: 'Espacial',
                        selecionado:
                            filtroCategoria == 'Espacial',
                        onPressed: () {
                          setState(() {
                            filtroCategoria = 'Espacial';
                          });
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // FILTRO DE TURNO
                  const Text(
                    'Turno',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      FiltroButton(
                        texto: 'Todos',
                        selecionado: filtroTurno == 'Todos',
                        onPressed: () {
                          setState(() {
                            filtroTurno = 'Todos';
                          });
                        },
                      ),

                      const SizedBox(width: 10),

                      FiltroButton(
                        texto: 'Manhã',
                        selecionado: filtroTurno == 'Manhã',
                        onPressed: () {
                          setState(() {
                            filtroTurno = 'Manhã';
                          });
                        },
                      ),

                      const SizedBox(width: 10),

                      FiltroButton(
                        texto: 'Tarde',
                        selecionado: filtroTurno == 'Tarde',
                        onPressed: () {
                          setState(() {
                            filtroTurno = 'Tarde';
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // TÍTULO DOS KITS
            const Text(
              'Kits disponíveis',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            // LISTA DE KITS
            ...kitsFiltrados.map(
              (kit) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: KitCard(
                  titulo: kit['titulo']!,
                  descricao: kit['descricao']!,
                  quantidade: kit['quantidade']!,
                  responsavel: kit['responsavel']!,
                  categoria: kit['categoria']!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}