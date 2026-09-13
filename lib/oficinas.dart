import 'package:flutter/material.dart';
import 'components/layout.dart';

class OficinasPage extends StatelessWidget {

  const OficinasPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Layout(
      titulo: 'Oficinas',
      child: const Center(
        child: Text(
          'Oficinas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}