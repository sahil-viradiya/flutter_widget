// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:widget/screen2.dart';

class MEDIAQ extends StatelessWidget {
  const MEDIAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('MediaQuery'),
          ),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.pinkAccent,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SCREEN2()));
          }),
          child: Icon(Icons.skip_next),
        ),
      ),
    );
  }
}
