// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// ignore_for_file: avoid_unnecessary_containers
// ignore_for_file: prefer_const_constructors
class SIZEB extends StatefulWidget {
  const SIZEB({super.key});

  @override
  State<SIZEB> createState() => _SIZEBState();
}

class _SIZEBState extends State<SIZEB> {
  // ignore: prefer_typing_uninitialized_variables
  var _textcontroller;

  @override
  void initState() {
    _textcontroller = TextEditingController();
    _textcontroller.text = '2';
    super.initState();
  }

  @override
  void dispose() {
    _textcontroller = TextEditingController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('SiZE_BOX')),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: _textcontroller,
              ),
              Expanded(
                // height: 300,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      '${(index + 1) * int.parse(_textcontroller.text)}',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: IconButton(
          onPressed: () {
            print(_textcontroller.text);
            setState(() {});
          },
          color: Colors.pinkAccent,
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}
