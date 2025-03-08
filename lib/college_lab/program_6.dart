import 'package:flutter/material.dart';

class Program6 extends StatelessWidget {
  const Program6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
                flex: 3,
              ),
              Expanded(
                  child: Container(
                color: Colors.pink,
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.blueAccent,
              )),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.yellowAccent,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.redAccent,
                      )),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.purpleAccent,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.lightGreenAccent,
                      )),
                    ],
                  )),
                ],
              )),
              Expanded(
                  child: Container(
                color: Colors.amber,
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.lightGreenAccent,
              )),
              Expanded(
                  child: Container(
                color: Colors.red,
              )),
              Expanded(
                  child: Container(
                color: Colors.purpleAccent,
              )),
              Expanded(
                  child: Container(
                color: Colors.greenAccent,
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.orangeAccent,
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                color: Colors.greenAccent,
                              )),
                              Expanded(
                                  child: Container(
                                color: Colors.limeAccent,
                              )),
                            ],
                          )),
                          Expanded(
                              child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                color: Colors.red,
                              )),
                              Expanded(
                                  child: Container(
                                color: Colors.orange,
                              )),
                            ],
                          )),
                        ],
                      )),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.orangeAccent,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.purple.shade100,
                      )),
                    ],
                  )),
                ],
              )),
              Expanded(
                  child: Container(
                color: Colors.pinkAccent,
              )),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                color: Colors.white,
                              )),
                              Expanded(
                                  child: Container(
                                color: Colors.purple,
                              )),
                            ],
                          )),
                          Expanded(
                              child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                color: Colors.red,
                              )),
                              Expanded(
                                  child: Container(
                                color: Colors.yellowAccent,
                              )),
                            ],
                          )),
                        ],
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.cyan,
                      )),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.greenAccent,
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.amberAccent,
                      )),
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
