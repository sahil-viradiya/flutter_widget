import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: avoid_print

class TEXTF extends StatefulWidget {
  const TEXTF({super.key});

  @override
  State<TEXTF> createState() => _TEXTFState();
}

class _TEXTFState extends State<TEXTF> {
  // ignore: prefer_typing_uninitialized_variables
  var _textcontroller;

  @override
  void initState() {
    _textcontroller = TextEditingController();
    // _textcontroller.text = 'I am sahil viradiya';
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
          backgroundColor: Colors.deepPurpleAccent,
          title: Center(
            child: const Text('Text_Feild'),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: false,
              controller: _textcontroller,
              enableInteractiveSelection: false, //copy paste selectall
              enableSuggestions: false,
              // enabled: false,
              // obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(),
                ),
                fillColor: Colors.grey[200],
                filled: true,
                hintText: 'Enter Name',
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                icon: Icon(Icons.person),
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.pinkAccent),
              ),
              onChanged: (value) => print(value),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          onPressed: () => print(_textcontroller.text),
          child: Icon(
            Icons.done_outline,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
