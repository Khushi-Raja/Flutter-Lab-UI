import 'package:flutter/material.dart';

class Program4 extends StatelessWidget {
  const Program4({super.key});

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
                      Expanded(child: Container(color: Colors.white,)),
                      Expanded(child: Container(color: Colors.lightGreenAccent,)),
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.amber,)),
                      Expanded(child: Container(color: Colors.cyan,)),
                    ],
                  )),
                ],
              )),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.yellowAccent,)),
              Expanded(child: Row(
                children: [
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.redAccent,),),
                      Expanded(child: Container(color: Colors.purpleAccent,),flex: 2,),
                      Expanded(child: Container(color: Colors.lightGreenAccent,),),
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.orangeAccent,),flex: 2,),
                      Expanded(child: Container(color: Colors.white,),),
                      Expanded(child: Container(color: Colors.green,),flex: 2,),
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.green,),),
                      Expanded(child: Container(color: Colors.red,),flex: 2,),
                      Expanded(child: Container(color: Colors.brown,),),
                    ],
                  )),

                ],
              )),
              Expanded(child: Container(color: Colors.cyanAccent,)),
            ],
          )),
          Expanded(child: Container(color: Colors.redAccent,)),
        ],
      ),
    );
  }
}
