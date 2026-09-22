import 'package:flutter/material.dart';

class CodigoCard extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String linguagem;
  final String autor;

  const CodigoCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.linguagem,
    required this.autor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF17171A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.code,
              color: Colors.blue,
              size: 30,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  descricao,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    const Icon(
                      Icons.terminal,
                      color: Colors.grey,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      linguagem,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),

                    const SizedBox(width: 20),

                    const Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      autor,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 15),

          OutlinedButton(
            onPressed: () {
              // Depois vamos abrir o código.
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(
                color: Colors.blue,
              ),
            ),
            child: const Text(
              'Ver código',
            ),
          ),
        ],
      ),
    );
  }
}