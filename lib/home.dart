import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool sidebarAberta = false;

  @override
  Widget build(BuildContext context) {
    return appBar();
  }

  Scaffold appBar() {
    return Scaffold(
    appBar: AppBar(
      title:Text(
        'CVTE / Página Inicial',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
           setState(() {
          sidebarAberta = !sidebarAberta;
        });
        },
          child: Container(
          margin: EdgeInsets.all(10),
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

          actions: [
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
              margin: EdgeInsets.all(10),
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
          ]
          ),
      body: Row(
        children: [
          if(sidebarAberta)
          Container(
            width: 240,
            color: const Color(0xFF121215),
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(22, 20, 10, 10),
                child: Text(
                  'Menu de navegação',
              style: TextStyle(
              color: Color(0xFF71717A),
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        TextButton(
              onPressed: () {},
              child: const Text(
                'Página Inicial',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        ),
        
      
       Expanded(
        child: Container(
        color: const Color(0xFF0C0C0E),
      ),
        ),
      ],
    ),
  );
  }
}