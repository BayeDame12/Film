import 'package:film/model/film_model.dart';
import 'package:film/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomeFilm extends StatelessWidget {
  late Future<Film> futureFilm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<Film>(
          future: futureFilm,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text('salut');
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ],
    );
  }
}
