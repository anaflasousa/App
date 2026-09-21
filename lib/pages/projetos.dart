import 'package:flutter/material.dart';
import '../components/layout.dart';

class ProjetosPage extends StatelessWidget {

  const ProjetosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      titulo: 'Projetos',
      child: const Center(
        child: Text(
          'Projetos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}