// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class DIMG extends StatefulWidget {
  const DIMG({super.key});

  @override
  State<DIMG> createState() => _DIMGState();
}

class _DIMGState extends State<DIMG> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            // color: Colors.lightBluex,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                'https://avatars.mds.yandex.net/i?id=bd2a71f5799b369af837f97cb234cd54-4033630-images-thumbs&ref=rim&n=33&w=173&h=188',
                scale: 1.0,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
