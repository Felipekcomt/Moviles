import 'package:flutter/material.dart';
import 'package:practice1/screens/hero_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperHero App'),
        centerTitle: true,
      ),
      body: HeroList(),
    );
  }
}
