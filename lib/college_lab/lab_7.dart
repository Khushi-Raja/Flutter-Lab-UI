import 'package:flutter/material.dart';

class Lab7 extends StatefulWidget {
  const Lab7({super.key});

  @override
  State<Lab7> createState() => _Lab7State();
}

class _Lab7State extends State<Lab7> {
  TextEditingController name = TextEditingController();

  Widget getCustomText(name, {favColor, sizeFont}) {
    return Text(
      name,
      style: TextStyle(
        color: favColor,
        fontSize: sizeFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Khushi",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'CustomFont',
            ),
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            getCustomText(
              "Khushi",
              favColor: Colors.black,
              sizeFont: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: "Enter your name",
                    hintText: "Khushi Raja",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "Click",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              name.text,
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
