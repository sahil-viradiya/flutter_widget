// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GRIDV extends StatefulWidget {
  const GRIDV({super.key});

  @override
  State<GRIDV> createState() => _GRIDVState();
}

class _GRIDVState extends State<GRIDV> {
  List<int> dummy = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('GridView'),
          ),
        ),
        body: GridView(
          scrollDirection: Axis.vertical,
          // reverse: true,
          physics: ScrollPhysics(),
          padding: EdgeInsets.all(8.0),
          controller: ScrollController(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          children: dummy
              .map((e) => Container(
                    height: 30,
                    width: 20,
                    color: Colors.redAccent,
                    child: Center(child: Text('$e')),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
