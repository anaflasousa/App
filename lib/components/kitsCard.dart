import 'package:flutter/material.dart';

class KitCard extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String quantidade;
  final String responsavel;
  final String categoria;

  const KitCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.quantidade,
    required this.responsavel,
    required this.categoria,
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
          // Ícone
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.15),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.inventory_2_outlined,
              color: Colors.blue,
              size: 34,
            ),
          ),

          const SizedBox(width: 18),

          // Informações
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 7),

                Text(
                  descricao,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    const Icon(
                      Icons.category_outlined,
                      color: Colors.grey,
                      size: 17,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      categoria,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),

                    const SizedBox(width: 20),

                    const Icon(
                      Icons.inventory_outlined,
                      color: Colors.grey,
                      size: 17,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      quantidade,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),

                    const SizedBox(width: 20),

                    const Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                      size: 17,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      responsavel,
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
              // Depois podemos abrir os detalhes do kit.
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(
                color: Colors.blue,
              ),
            ),
            child: const Text(
              'Ver kit',
            ),
          ),
        ],
      ),
    );
  }
}