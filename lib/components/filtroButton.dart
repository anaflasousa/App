import 'package:flutter/material.dart';

class FiltroButton extends StatelessWidget {
  final String texto;
  final bool selecionado;
  final VoidCallback onPressed;

  const FiltroButton({
    super.key,
    required this.texto,
    required this.selecionado,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            selecionado ? Colors.blue : const Color(0xFF17171A),
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(texto),
    );
  }
}