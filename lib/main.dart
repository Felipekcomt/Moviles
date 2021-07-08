import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice1/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuperHero App',
      theme: ThemeData.light(),
      home: Home(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
