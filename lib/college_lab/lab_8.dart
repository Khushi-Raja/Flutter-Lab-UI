import 'package:flutter/material.dart';

class Lab8 extends StatelessWidget {
  const Lab8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/pooh.png",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: Text(
              "Khushi",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
