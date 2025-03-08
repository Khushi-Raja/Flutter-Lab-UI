import 'package:flutter/material.dart';

class Program7 extends StatelessWidget {
  const Program7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.orangeAccent,)),
              Expanded(child: Column(
                children: [
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.redAccent,)),
                          Expanded(child: Container(color: Colors.yellowAccent,)),
                        ],
                      )),
                      Expanded(child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.cyanAccent,)),
                          Expanded(child: Container(color: Colors.pinkAccent,)),
                        ],
                      )),
                    ],
                  )),
                  Expanded(child: Container(color: Colors.purpleAccent,)),
                ],
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.white,)),
              Expanded(child: Column(
                children: [
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.yellowAccent,)),
                      Expanded(child: Container(color: Colors.lightGreenAccent,)),
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.tealAccent,)),
                      Expanded(child: Container(color: Colors.red,)),
                    ],
                  )),
                ],
              )),
              Expanded(child: Container(color: Colors.amber,)),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.lightGreenAccent,)),
              Expanded(child: Container(color: Colors.deepOrangeAccent,)),
              Expanded(child: Container(color: Colors.pinkAccent,)),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Column(
                children: [
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.cyanAccent,)),
                          Expanded(child: Container(color: Colors.lime,)),

                        ],
                      )),
                      Expanded(child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.yellowAccent,)),
                          Expanded(child: Container(color: Colors.greenAccent,)),
                        ],
                      )),
                    ],
                  )),
                  Expanded(child: Container(color: Colors.white,)),
                ],
              )),
              Expanded(child: Container(color: Colors.purpleAccent,)),
              Expanded(child: Container(color: Colors.amber,)),
              Expanded(child: Column(
                children: [
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.tealAccent,)),
                          Expanded(child: Container(color: Colors.purpleAccent,)),
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.deepOrange,)),
                          Expanded(child: Container(color: Colors.white10,)),
                        ],
                      )),
                    ],
                  )),
                  Expanded(child: Container(color: Colors.yellowAccent,)),
                ],
              )),

            ],
          )),
        ],
      ),
    );
  }
}
