import 'package:flutter/material.dart';
import '../components/layout.dart';
import '../components/codigoCard.dart';

class CodigosPage extends StatelessWidget {
  const CodigosPage({super.key});

  // Cards com os códigos
  final List<Map<String, String>> codigos = const [
    {
      'titulo': 'Código Cubesat',
      'descricao':
          'Código desenvolvido para a oficina de Cubesat, programação para receber os dados dos sensores. ',
      'linguagem': 'C++',
      'autor': 'Equipe Espacial Tarde',
    },
    {
      'titulo': 'Exemplo 2 ',
      'descricao':
          'Exemplo de um código de outra oficina.',
      'linguagem': 'Alguma',
      'autor': 'A definir',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Layout(
      titulo: 'Códigos',
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
                    'Central de códigos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Confira códigos para as oficinas desenvolvidas no CVT-E.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Lista de códigos
            ...codigos.map(
              (codigo) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CodigoCard(
                  titulo: codigo['titulo']!,
                  descricao: codigo['descricao']!,
                  linguagem: codigo['linguagem']!,
                  autor: codigo['autor']!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}