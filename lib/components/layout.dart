import 'package:flutter/material.dart';

import 'header.dart';
import 'sidebar.dart';

class Layout extends StatefulWidget {
  final String titulo;
  final Widget child;

  const Layout({
    super.key,
    required this.titulo,
    required this.child,
  });

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  bool sidebarAberta = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        titulo: widget.titulo,
        onMenuPressed: () {
          setState(() {
            sidebarAberta = !sidebarAberta;
          });
        },
      ),

      body: Row(
        children: [

          if (sidebarAberta)
            const Sidebar(),

          Expanded(
  child: Container(
    width: double.infinity,
    height: double.infinity,
    color: const Color(0xFF0C0C0E),
    child: widget.child,
  ),
),

        ],
      ),
    );
  }
}