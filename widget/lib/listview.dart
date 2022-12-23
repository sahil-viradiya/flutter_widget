// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, avoid_print

import 'package:flutter/material.dart';

// import 'package:widget/textwidget.dart';

class Listv extends StatefulWidget {
  @override
  State<Listv> createState() => _ListvState();
}

class _ListvState extends State<Listv> {
  List<int> items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: SingleChildScrollView(
          child: SizedBox(
            height: 200,
            child: Container(
              margin: EdgeInsets.only(top: 50),
              color: Colors.pinkAccent,
              // padding: EdgeInsets.all(7.0),
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) => ListTile(
                  title: Center(child: Text('Count => ${items[index]}')),
                  subtitle: Center(
                    child: Text(
                      'sub',
                    ),
                  ),
                  leading: Icon(Icons.done),
                  trailing: Icon(Icons.close),
                  onTap: () => print('Close ${items[index]}'),
                ),
              ),
            ),
          ),
        ),
        // child: ListView(
        //   scrollDirection: Axis.vertical,
        //   padding: EdgeInsets.all(0),
        //   children: items
        //       .map(
        //         (e) => Text('Count : $e'),
        //       )
        //       .toList(),
        // ),
      ),
    );
  }
}
