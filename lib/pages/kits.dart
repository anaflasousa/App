import 'package:flutter/material.dart';
import '../components/layout.dart';

class KitsPage extends StatelessWidget {

  const KitsPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Layout(
      titulo: 'Kits',
      child: const Center(
        child: Text(
          'Kits',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}