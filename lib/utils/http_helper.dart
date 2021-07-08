import 'dart:convert';
import 'dart:io';

import 'package:practice1/constants/api_path.dart';
import 'package:http/http.dart' as http;
import 'package:practice1/models/hero.dart';

class HttpHelper {
  Future<List> searchHero(String query) async {
    final strSearch = urlBase + urlToken + urlSearch + query;
    final url = Uri.parse(strSearch);
    List heroes = [];

    http.Response result = await http.get(url);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final heroesMap = jsonResponse['results'];
      heroes = heroesMap.map((map) => SuperHero.fromJson(map)).toList();
    }
    return heroes;
  }
}
