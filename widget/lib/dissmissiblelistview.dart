// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class DLIST extends StatefulWidget {
  const DLIST({super.key});

  @override
  State<DLIST> createState() => _DLISTState();
}

class _DLISTState extends State<DLIST> {
  List<int> items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Dismissible List Viwe')),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Container(
          color: Colors.grey,
          padding: EdgeInsets.only(top: 30),
          height: 200,
          child: ListView.separated(
            padding: EdgeInsets.all(10),
            itemCount: items.length,
            itemBuilder: (context, index) => Dismissible(
              key: ValueKey(123),
              direction: DismissDirection.endToStart,
              onDismissed: ((direction) => print(direction)),
              background: Container(
                color: Colors.redAccent,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(15),
                child: Icon(
                  Icons.delete,
                  size: 40,
                ),
              ),
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: ListTile(title: Text('Count  ${items[index]}')),
              ),
            ),
            separatorBuilder: (context, index) => Divider(),
          ),
        ),
      ),
    );
  }
}
