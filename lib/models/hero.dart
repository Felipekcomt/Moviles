import 'package:practice1/models/Poster.dart';
import 'package:practice1/models/PowerStats.dart';

class SuperHero {
  String id;
  String name;
  PowerStats powerstats;
  Poster poster;

  SuperHero(
      {required this.id,
      required this.name,
      required this.powerstats,
      required this.poster});

  factory SuperHero.fromJson(Map<String, dynamic> map) {
    return SuperHero(
      id: map['id'],
      name: map['name'],
      powerstats: PowerStats.fromJson(map['powerstats']),
      poster: Poster.fromJson(map['image']),
    );
  }
}
