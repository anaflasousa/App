import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../login.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  final VoidCallback onMenuPressed;

  const Header({
    super.key,
    required this.titulo,
    required this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'CVTE / $titulo',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),

      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,

      // BOTÃO DO MENU
      leading: GestureDetector(
        onTap: onMenuPressed,
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/menu.svg',
            height: 20,
            width: 20,
          ),
        ),
      ),

      // BOTÃO DE PERFIL
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/icons/profile.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}