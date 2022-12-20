// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Buttion extends StatelessWidget {
  void pressButtion(String name) {
    print(name);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // ElevatedButton
          // child: ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     shadowColor: Colors.lightGreen,
          //     elevation: 20,
          //     // primary: Colors.purple,
          //     backgroundColor: Colors.pinkAccent,
          //     disabledBackgroundColor: Colors.blueAccent,
          //   ),
          //   onLongPress: () => print('Viradiya'),
          //   onPressed: () => pressButtion('Sahil'),
          //   child: Icon(
          //     Icons.add,
          //     color: Colors.white,
          //   ),
          // ),
//OutlinedButton
          // child: OutlinedButton(
          //     style: OutlinedButton.styleFrom(
          //         backgroundColor: Colors.grey,
          //         padding: EdgeInsets.symmetric(horizontal: 30),
          //         shadowColor: Colors.lightGreen,
          //         elevation: 20,
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(50)),
          //         disabledForegroundColor: Colors.pink[300]),
          //     onPressed: () {
          //       print('Viradiya');
          //     },
          //     onLongPress: () {
          //       print('Sahil');
          //     },
          //     child: Icon(Icons.add)),
//Icon Buttion
          // child: IconButton(
          //   onPressed: () => print('sahil'),
          //   icon: Icon(Icons.add),
          //   color: Colors.red,
          //   iconSize: 50,
          //   splashColor: Colors.green,
          //   padding: EdgeInsets.all(20),
          //   tooltip: 'description',
          // ),
//Ink
          child: Ink(
            // color: Colors.blue, // defalut Squre
            decoration:
                ShapeDecoration(shape: CircleBorder(), color: Colors.blue),
            child: IconButton(
              onPressed: () => print('sahil'),
              icon: Icon(Icons.android),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Addition'),
          icon: Icon(Icons.add),
          onPressed: () => print('sahil'),
          backgroundColor: Colors.pink,
          tooltip: 'Hii',
        ),
      ),
    );
  }
}
