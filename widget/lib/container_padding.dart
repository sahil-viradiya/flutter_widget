// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Contain extends StatefulWidget {
  const Contain({super.key});

  @override
  State<Contain> createState() => _ContainState();
}

class _ContainState extends State<Contain> {
  @override
  Widget build(BuildContext context) {
    // return Container();
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            // width: 500,
            constraints: BoxConstraints(maxHeight: 50, minHeight: 25),
            width: double.infinity,
            height: double.maxFinite,
            margin: EdgeInsets.only(right: 30.0, left: 30.0),

            padding: EdgeInsets.all(10.0),
            // padding: EdgeInsets.symmetric(horizontal: 10.2, vertical: 20.2),
            // padding: EdgeInsets.only(
            //     left: 20.2, right: 3.3, top: 25.2, bottom: 44.4),
            // color: Colors.blue,

            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'Hello World\nI am sahil Viradiya',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
