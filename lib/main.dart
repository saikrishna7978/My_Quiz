import 'package:flutter/material.dart';
import 'package:learning_app10/Home_Screen1.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
