import 'package:flutter/material.dart';

class ProjetoCard extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String status;
  final String responsavel;
  final String data;
  final IconData icone;

  const ProjetoCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.status,
    required this.responsavel,
    required this.data,
    required this.icone,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ícone do projeto
          Container(
            width: 150,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icone,
              color: Colors.white,
              size: 55,
            ),
          ),

          const SizedBox(width: 20),

          // Informações
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        titulo,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Status
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: status == 'Concluído'
                            ? Colors.green.withOpacity(0.2)
                            : Colors.orange.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: status == 'Concluído'
                              ? Colors.green
                              : Colors.orange,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Text(
                  descricao,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  children: [
                    const Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                      size: 19,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      responsavel,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(width: 25),

                    const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey,
                      size: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      data,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                    onPressed: () {
                      // Depois vamos abrir os detalhes do projeto.
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    child: const Text(
                      'Ver projeto',
                    ),
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