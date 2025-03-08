import 'package:flutter/material.dart';

class Program9 extends StatelessWidget {
  const Program9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Column(
                children: [
                  Expanded(child: Container(color: Colors.deepOrangeAccent,)),
                  Expanded(child: Container(color: Colors.yellowAccent,)),

                ],
              )),
              Expanded(child: Row(
                children: [
                  Expanded(child: Container(color: Colors.white,)),
                  Expanded(child: Container(color: Colors.orange,)),
                  Expanded(child: Container(color: Colors.amber,)),
                ],
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Column(
                children: [
                  Expanded(child: Container(color: Colors.purpleAccent,)),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.deepOrangeAccent,)),
                      Expanded(child: Container(color: Colors.white,)),
                      Expanded(child: Container(color: Colors.pinkAccent,)),
                    ],
                  ),flex: 2,),
                ],
              )),
              Expanded(child: Column(
                children: [
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.lightGreenAccent,)),
                      Expanded(child: Container(color: Colors.red,)),
                      Expanded(child: Container(color: Colors.cyanAccent,)),
                      Expanded(child: Container(color: Colors.yellowAccent,)),
                      Expanded(child: Container(color: Colors.lightGreenAccent,)),
                    ],
                  )),
                  Expanded(child: Container(color: Colors.white,)),
                ],
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Column(
                children: [
                  Expanded(child: Container(color: Colors.amber,)),
                  Expanded(child: Container(color: Colors.redAccent,)),
                  Expanded(child: Container(color: Colors.yellowAccent,)),
                ],
              )),
              Expanded(child: Column(
                children: [
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.deepOrangeAccent,),flex: 3,),
                      Expanded(child: Container(color: Colors.yellowAccent,)),
                      Expanded(child: Container(color: Colors.lightGreenAccent,),flex: 2,),
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.white,)),
                      Expanded(child: Container(color: Colors.lightGreen,)),
                      Expanded(child: Container(color: Colors.pink,)),
                    ],
                  )),
                ],
              )),
            ],
          )),
        ],
      ),
    );
  }
}
