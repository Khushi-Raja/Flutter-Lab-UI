import 'package:flutter/material.dart';

class Program2 extends StatelessWidget {
  Widget getCustomExpanded(favColor, {setFlex = 1}) {
    return Expanded(
      child: Container(
        color: favColor,
      ),
      flex: setFlex,
    );
  }

  const Program2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          getCustomExpanded(Colors.orange),
          getCustomExpanded(Colors.white),
          getCustomExpanded(Colors.lightGreenAccent),
        ],
      ),
    );
  }
}
