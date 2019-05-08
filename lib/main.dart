import 'package:app3/src/home/home_index.dart';
import 'package:app3/src/home/widgets/home_controller.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: HomeIndex(),
      ),
    );
  }
}
