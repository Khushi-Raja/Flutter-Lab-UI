import 'package:flutter/material.dart';

class Program5 extends StatelessWidget {
  const Program5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.purpleAccent,),flex: 2,),
              Expanded(child: Column(
                children: [
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.yellowAccent,)),
                      Expanded(child: Container(color: Colors.red,)),
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.pinkAccent,)),
                      Expanded(child: Container(color: Colors.white,)),
                    ],
                  )),
                ],
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.orangeAccent,)),
              Expanded(child: Row(
                children: [
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.cyanAccent,),flex: 2,),
                      Expanded(child: Container(color: Colors.greenAccent,),flex: 2,),
                      Expanded(child: Container(color: Colors.blueAccent,)),
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.orange,),flex: 2,),
                      Expanded(child: Container(color: Colors.pinkAccent,)),
                      Expanded(child: Container(color: Colors.pinkAccent.shade100,),flex: 2,),
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.pinkAccent,),flex: 2,),
                      Expanded(child: Container(color: Colors.blueAccent,),flex: 2,),
                      Expanded(child: Container(color: Colors.tealAccent,)),
                    ],
                  )),
                ],
              )),
              Expanded(child: Container(color: Colors.deepOrange,)),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.yellow,)),
              Expanded(child: Container(color: Colors.white,)),
              Expanded(child: Container(color: Colors.lightGreenAccent,)),
            ],
          )),
        ],
      ),
    );
  }
}
