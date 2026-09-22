import 'package:flutter/material.dart';

class MonitoresCard extends StatelessWidget {
  final String nome;
  final String imagem;
  final String equipe;
  final String ingresso;
  final String email;
  final String ano;
  final String curso;

  const MonitoresCard({
    super.key,
    required this.nome,
    required this.imagem,
    required this.equipe,
    required this.ingresso,
    required this.email,
    required this.ano,
    required this.curso,
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
          // Foto do monitor
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              width: 180,
              height: 210,
              color: Colors.black26,
              child: imagem.isEmpty
                  ? const Icon(
                      Icons.person_outline,
                      color: Colors.grey,
                      size: 70,
                    )
                  : Image.asset(
                      imagem,
                      fit: BoxFit.cover,
                    ),
            ),
          ),

          const SizedBox(width: 24),

          // Informações
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    equipe,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                _Informacao(
                  icone: Icons.calendar_today_outlined,
                  titulo: 'Ingresso no projeto',
                  valor: ingresso,
                ),

                const SizedBox(height: 14),

                _Informacao(
                  icone: Icons.email_outlined,
                  titulo: 'E-mail',
                  valor: email,
                ),

                const SizedBox(height: 14),

                _Informacao(
                  icone: Icons.school_outlined,
                  titulo: 'Ano',
                  valor: ano,
                ),

                const SizedBox(height: 14),

                _Informacao(
                  icone: Icons.menu_book_outlined,
                  titulo: 'Curso',
                  valor: curso,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Informacao extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String valor;

  const _Informacao({
    required this.icone,
    required this.titulo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icone,
          color: Colors.grey,
          size: 19,
        ),

        const SizedBox(width: 10),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 11,
              ),
            ),

            const SizedBox(height: 2),

            Text(
              valor,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}