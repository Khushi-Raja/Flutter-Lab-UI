import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.purple,
        color: Colors.yellow,
        animationDuration:  Duration(milliseconds: 300),
        onTap: (index){
          print(index);
          //Navigation
        },
        items: [
          Icon(Icons.home,),
          Icon(Icons.chat_bubble),
          Icon(Icons.favorite),
          Icon(Icons.insights),
          Icon(Icons.person),
        ],
      ),
    );
  }
}