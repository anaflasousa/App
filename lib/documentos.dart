import 'package:flutter/material.dart';
import 'components/layout.dart';

class DocumentosPage extends StatelessWidget {

  const DocumentosPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Layout(
      titulo: 'Documentos',
      child: const Center(
        child: Text(
          'Documentos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
