import 'dart:convert';

import 'package:film/constantes/api_constante.dart';
import 'package:film/model/film_model.dart';
import 'package:http/http.dart' as http;

String url = baseApiUrl;

Future<List<Film>> GetFilm() async {
  String url = baseApiUrl;
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    //display UI} *
    var body = response.body;
    var json = jsonDecode(body);
  } else {
    //Show Error Message
    throw Exception('Failed to load album');
  }
  return [];
}
