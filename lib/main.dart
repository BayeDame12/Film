import 'package:film/pages/home_film.dart';
import 'package:film/widgets/appBar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: FilmAppBarr('FilmApp', Icon(Icons.access_alarm_sharp)),
        body: HomeFilm(),
      ),
    );
  }
}
