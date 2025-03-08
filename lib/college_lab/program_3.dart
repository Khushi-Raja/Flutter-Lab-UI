import 'package:flutter/material.dart';

class Program3 extends StatelessWidget {
  Widget getCustomExpanded(favColor, {setFlex = 1}) {
    return Expanded(
      child: Container(
        color: favColor,
      ),
      flex: setFlex,
    );
  }

  const Program3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.orange,
                      )),
                  Expanded(
                      child: Container(
                        color: Colors.cyanAccent,
                      )),
                  Expanded(
                      child: Container(
                        color: Colors.lightGreenAccent,
                      )),
                ],
              )),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.pinkAccent,
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purpleAccent,
                    ),
                    flex: 3,
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.yellowAccent,
                      )),
                ],
              )),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.greenAccent,
                      )),
                  Expanded(
                    child: Container(
                      color: Colors.redAccent,
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orangeAccent,
                    ),
                    flex: 3,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
