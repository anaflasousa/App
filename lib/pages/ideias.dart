import 'package:flutter/material.dart';
import '../components/layout.dart';
import '../components/ideiaCard.dart';

class IdeiasPage extends StatelessWidget {
  const IdeiasPage({super.key});

  final List<Map<String, String>> comentarios = const [
    {
      'autor': 'Ana',
      'comentario':
          'Acho que poderíamos ter mais oficinas de robótica no CVT-E.',
      'data': '18/09/2026',
    },
    {
      'autor': 'Pedro',
      'comentario':
          'Seria interessante criar um espaço para apresentar os projetos desenvolvidos pelos alunos.',
      'data': '17/09/2026',
    },
    {
      'autor': 'Maria',
      'comentario':
          'Poderíamos realizar mais eventos e atividades relacionados à astronomia.',
      'data': '15/09/2026',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Layout(
      titulo: 'Ideias',
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
              child: Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ideias',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Compartilhe sugestões, opiniões e ideias para o CVT-E.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      // Depois criaremos o formulário.
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Enviar comentário'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Comentários da comunidade',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            ...comentarios.map(
              (comentario) => Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: IdeiaCard(
                  autor: comentario['autor']!,
                  comentario: comentario['comentario']!,
                  data: comentario['data']!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}