// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Img extends StatefulWidget {
  const Img({super.key});

  @override
  State<Img> createState() => _ImgState();
}

class _ImgState extends State<Img> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Image.asset(
          "asset/IMG_1627.JPG",
          scale: 1.0,
          height: 100,
          width: 100,
          fit: BoxFit.scaleDown,
          alignment: Alignment.center,
          repeat: ImageRepeat.repeatY,
          frameBuilder: (
            BuildContext context,
            Widget child,
            int? frame,
            bool? wasSynchronouslyLoaded,
          ) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(100.0),
              child: child,
            );
          },
        ),
      ),
    );
  }
}
