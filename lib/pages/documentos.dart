import 'package:flutter/material.dart';
import '../components/layout.dart';
import '../components/documentoCard.dart';
import '../components/filtroButton.dart';

class DocumentosPage extends StatefulWidget {
  const DocumentosPage({super.key});

  @override
  State<DocumentosPage> createState() => _DocumentosPageState();
}

class _DocumentosPageState extends State<DocumentosPage> {
  String filtroSelecionado = 'Todos';

  final List<Map<String, dynamic>> documentos = [
    {
      'titulo': 'Manual do CVT-E',
      'descricao':
          'Documento com informações gerais sobre o Centro Vocacional Tecnológico para monitores novatos.',
      'categoria': 'Institucional',
      'data': 'Setembro de 2026',
    },
    {
      'titulo': 'Regulamento das Oficinas',
      'descricao':
          'Orientações e regras para participação nas oficinas do CVT-E.',
      'categoria': 'Oficinas',
      'data': 'Setembro de 2026',
    },
    {
      'titulo': 'Modelo de Relatório de Projeto',
      'descricao':
          'Modelo utilizado para elaboração de relatórios de projetos desenvolvidos no CVT-E.',
      'categoria': 'Projetos',
      'data': 'Agosto de 2026',
    },

    {
      'titulo': 'Guia de Uso do Óculos VR e Planetário.',
      'descricao':
          'Instruções para utilização do óculos de realidade virtual e do planetário do CVT-E.',
      'categoria': 'Oficinas',
      'data': 'Agosto de 2026',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final documentosFiltrados = filtroSelecionado == 'Todos'
        ? documentos
        : documentos
            .where(
              (documento) =>
                  documento['categoria'] == filtroSelecionado,
            )
            .toList();

    return Layout(
      titulo: 'Documentos',
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
                    'Documentos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Acesse documentos e materiais importantes do CVT-E.',
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
                  texto: 'Institucional',
                  selecionado:
                      filtroSelecionado == 'Institucional',
                  onPressed: () {
                    setState(() {
                      filtroSelecionado = 'Institucional';
                    });
                  },
                ),

                const SizedBox(width: 10),

                FiltroButton(
                  texto: 'Oficinas',
                  selecionado: filtroSelecionado == 'Oficinas',
                  onPressed: () {
                    setState(() {
                      filtroSelecionado = 'Oficinas';
                    });
                  },
                ),

                const SizedBox(width: 10),

                FiltroButton(
                  texto: 'Projetos',
                  selecionado: filtroSelecionado == 'Projetos',
                  onPressed: () {
                    setState(() {
                      filtroSelecionado = 'Projetos';
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Documentos
            ...documentosFiltrados.map(
              (documento) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: DocumentoCard(
                  titulo: documento['titulo'],
                  descricao: documento['descricao'],
                  categoria: documento['categoria'],
                  data: documento['data'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}