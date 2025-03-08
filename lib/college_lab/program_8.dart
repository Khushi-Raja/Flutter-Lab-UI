import 'package:flutter/material.dart';

class Program8 extends StatelessWidget {
  const Program8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.purpleAccent,)),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.yellowAccent,),flex: 2,),
              Expanded(child: Column(
                children: [
                  Expanded(child: Container(color: Colors.lightGreenAccent,)),
                  Expanded(child: Container(color: Colors.pinkAccent,)),
                ],
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.redAccent,)),
              Expanded(child: Container(color: Colors.white,)),
              Expanded(child: Container(color: Colors.cyanAccent,)),
            ],
          )),
        ],
      ),
    );
  }
}
