import 'package:flutter/material.dart';
import 'package:my_second/college_lab/program_1.dart';
import 'package:my_second/college_lab/program_2.dart';
import 'package:my_second/college_lab/program_7.dart';
import 'package:my_second/college_lab/program_9.dart';
import 'package:my_second/college_lab/program_3.dart';
import 'package:my_second/college_lab/program_4.dart';
import 'package:my_second/college_lab/program_5.dart';
import 'package:my_second/college_lab/program_6.dart';
import 'package:my_second/college_lab/program_8.dart';

class Lab6 extends StatelessWidget {
  const Lab6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Program1();
                    },
                  ));
                },
                child: Container(
                  color: Colors.orange,
                  child: Center(
                      child: Text(
                    'Program1',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Program2();
                    },
                  ));
                },
                child: Container(
                  color: Colors.white,
                  child: Center(
                      child: Text(
                    'Program2',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Program3();
                    },
                  ));
                },
                child: Container(
                  color: Colors.lightGreenAccent,
                  child: Center(
                      child: Text(
                    "Program3",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Program4();
                    },
                  ));
                },
                child: Container(
                  color: Colors.pinkAccent,
                  child: Center(
                      child: Text(
                    'Program4',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Program5();
                    },
                  ));
                },
                child: Container(
                  color: Colors.purpleAccent,
                  child: Center(
                      child: Text(
                    'Program5',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Program6();
                    },
                  ));
                },
                child: Container(
                  color: Colors.yellowAccent,
                  child: Center(
                      child: Text(
                    'Program6',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Program7();
                    },
                  ));
                },
                child: Container(
                  color: Colors.amber,
                  child: Center(
                      child: Text(
                    'Program7',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return Program8();
                    },
                  ));
                },
                child: Container(
                  color: Colors.cyanAccent,
                  child: Center(
                      child: Text(
                    'Program8',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
                ),
              )),
              Expanded(
                  child: InkWell(onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return Program9();
                    },));
                  },
                    child: Container(
                                    color: Colors.redAccent,
                                    child: Center(
                      child: Text(
                    'Program9',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                                    )),
                                  ),
                  )),
            ],
          )),
        ],
      ),
    );
  }
}
