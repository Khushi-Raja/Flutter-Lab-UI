import 'package:flutter/material.dart';
import 'package:my_second/responsive/constants.dart';
import 'package:my_second/responsive/util/my_box.dart';
import 'package:my_second/responsive/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return MyBox();
                      },
                    ),
                  ),
                ),
                Expanded(child: ListView.builder(
                  itemBuilder: (context, index) {
                    return MyTile();
                  },
                ))
              ],
            ),flex: 2,
          ),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(color: Colors.yellowAccent,)),
            ],
          ))
        ],
      ),
    );
  }
}
