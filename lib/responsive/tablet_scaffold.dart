import 'package:flutter/material.dart';
import 'package:my_second/responsive/constants.dart';
import 'package:my_second/responsive/util/my_box.dart';
import 'package:my_second/responsive/util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackground,
        drawer: myDrawer,
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
                ),
              ),
            ),
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return MyTile();
            },))
          ],
        ),
    );
  }
}
