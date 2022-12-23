// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class SETST extends StatefulWidget {
  const SETST({super.key});

  @override
  State<SETST> createState() => _SETSTState();
}

class _SETSTState extends State<SETST> {
  var count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('SetState')),
        ),
        body: Center(
          child: Text(
            '$count',
            style: TextStyle(fontSize: 25),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Add'),
          icon: Icon(Icons.add),
          onPressed: () {
            // ignore: avoid_print
            print('press');
            setState(() {
              count++;
            });
          },
          backgroundColor: Colors.pinkAccent,
          tooltip: 'Don\'t LongPress ',
        ),
      ),
    );
  }
}
