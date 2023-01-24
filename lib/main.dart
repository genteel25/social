import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _random = Random();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 900),
            child: Container(
              width: _random.nextInt(150).toDouble(),
              height: 100,
              color: const Color.fromRGBO(0, 100, 150, 1),
              child: const Text("Okay"),
            ),
          ),
        ),
      ),
    );
  }
}
