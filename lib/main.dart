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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color(0xff191826),
        appBar: FilmAppBarr(
          'Movies',
          Icon(Icons.search),
        ),
        body: MyHomePage(),
      ),
    );
  }
}
