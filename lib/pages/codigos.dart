import 'package:flutter/material.dart';
import '../components/layout.dart';

class CodigosPage extends StatelessWidget {
  const CodigosPage({super.key});

  @override
  Widget build(BuildContext context) {
 return Layout(
      titulo: 'Códigos',
      child: const Center(
        child: Text(
          'Códigos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}