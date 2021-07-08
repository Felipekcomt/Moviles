import 'package:flutter/material.dart';
import 'package:practice1/screens/heroe_details.dart';
import 'package:practice1/utils/http_helper.dart';
import 'package:practice1/models/hero.dart';

class HeroList extends StatefulWidget {
  @override
  _HeroListState createState() => _HeroListState();
}

class _HeroListState extends State<HeroList> {
  late HttpHelper httpHelper;
  late List heroes;

  @override
  void initState() {
    heroes = [];
    httpHelper = HttpHelper();
    searchHero();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: heroes.length,
        itemBuilder: (context, index) {
          return HeroRow(heroes[index]);
        });
  }

  Future searchHero() async {
    httpHelper.searchHero('superman').then((value) {
      setState(() {
        heroes = value;
      });
    });
  }
}

class HeroRow extends StatelessWidget {
  final SuperHero hero;
  HeroRow(this.hero);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(hero.name),
        subtitle: Text(hero.powerstats.intelligence),
        leading: Image.network(hero.poster.url),
        trailing: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HeroDetail(hero)));
          },
          icon: Icon(Icons.favorite),
        ),
      ),
    );
  }
}
