import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String titulo;
  final String quantidade;
  final IconData icone;

  const Cards({
    super.key,
    required this.titulo,
    required this.quantidade,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 130,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFF17171A),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icone,
              color: Colors.white,
              size: 28,
            ),

            const Spacer(),

            Text(
              titulo,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 4),

            Text(
              quantidade,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}