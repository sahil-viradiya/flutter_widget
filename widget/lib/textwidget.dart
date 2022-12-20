import 'package:flutter/material.dart';

class Tex extends StatefulWidget {
  const Tex({super.key});

  @override
  State<Tex> createState() => _TexState();
}

class _TexState extends State<Tex> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        // body: const Center(
        //   child: Text(
        //     'Hello World',
        //     maxLines: 3,
        //     style: TextStyle(
        //       backgroundColor: Colors.blueAccent,
        //       color: Colors.white,
        //       fontSize: 30,
        //       fontStyle: FontStyle.normal,
        //     ),
        //   ),
        // ),
        body: Center(
          child: RichText(
            // ignore: prefer_const_constructors
            text: TextSpan(
              text: 'Sahil',
              // ignore: prefer_const_constructors
              style: TextStyle(color: Colors.grey, fontSize: 25),
              // ignore: prefer_const_literals_to_create_immutables
              children: <TextSpan>[
                // ignore: prefer_const_constructors
                TextSpan(
                  text: 'Viradiya',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 30,
                  ),
                ),
                // ignore: prefer_const_constructors
                TextSpan(
                  text: ' : Flutter Devloper',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
