import 'package:flutter/material.dart';
import 'components/layout.dart';

class IdeiasPage extends StatelessWidget {

  const IdeiasPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Layout(
      titulo: 'Ideias',
      child: const Center(
        child: Text(
          'Ideias',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}