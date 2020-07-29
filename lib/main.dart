import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random acak = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 50.0 + acak.nextInt(101),
              height: 50.0 + acak.nextInt(101),
              color: Color.fromARGB(
                  255, acak.nextInt(256), acak.nextInt(256), acak.nextInt(256)),
            ),
          ),
        ),
      ),
    );
  }
}
