// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class IMG extends StatefulWidget {
  const IMG({super.key});

  @override
  State<IMG> createState() => _IMGState();
}

class _IMGState extends State<IMG> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // padding: EdgeInsets.all(100.0),
          // margin: EdgeInsets.all(50.0),
          height: double.infinity,
          width: double.infinity,
          // color: Colors.blueAccent,
          child: Center(
            child: Image.network(
              'https://cdn3.iconfinder.com/data/icons/seo-accessibility-usability-2-1/256/Coding-1024.png',
              frameBuilder: (
                context,
                child,
                frame,
                wasSynchronouslyLoaded,
              ) =>
                  Padding(
                padding: EdgeInsets.all(100.0),
                child: child,
              ),
              loadingBuilder: (
                context,
                child,
                loadingProgress,
              ) {
                if (loadingProgress == null) {
                  return child;
                }

                //Loading builder
                return Center(
                  child: Text(
                    'Loading',
                  ),
                  // child: CircularProgressIndicator(
                  //   value: loadingProgress.expectedTotalBytes != null
                  //       ? loadingProgress.cumulativeBytesLoaded /
                  //           loadingProgress.expectedTotalBytes!
                  //       : null,
                  // ),
                );
              },

              //Error Builder
              errorBuilder: (context, error, stackTrace) => Center(
                child: Text('Error'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
