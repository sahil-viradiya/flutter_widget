// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './textwidget.dart';
import './buttion.dart';
import './container_padding.dart';
import './image.dart';

void main(List<String> args) {
  return runApp(Img());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Tex(),
        );
  }
}
