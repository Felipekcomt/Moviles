import 'package:flutter/material.dart';
import 'package:practice1/models/hero.dart';

class HeroDetail extends StatelessWidget {
  final SuperHero hero;
  HeroDetail(this.hero);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(hero.poster.url),
        Text(hero.name),
        Text(hero.powerstats.intelligence),
        Text(hero.powerstats.strength),
        Text(hero.powerstats.speed)
      ],
    );
  }
}
