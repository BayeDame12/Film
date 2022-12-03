import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:film/model/film.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_cards/flutter_animated_cards.dart';
import 'package:video_player/video_player.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Film>> _futureGetTodos;

  /// Récupération de la liste de TODOs.
  Future<List<Film>> _getTodos() async {
    var response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=04c35731a5ee918f014970082a0088b1&page=1'));
    await Future<void>.delayed(const Duration(seconds: 1));
    var bodyJson = jsonDecode(response.body);
    //print(body['results']);
    List<Film> films = [];
    try {
      for (var filmJson in bodyJson['results']) {
        Film film = Film.fromJson(filmJson);
        films.add(film);
        print("AZIZ: ${film.title}");
      }
    } catch (e) {
      print("AZIZ:::: ${e.toString()}");
      return films;
    }

    return films;
  }

  @override
  void initState() {
    super.initState();
    _futureGetTodos = _getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<Film>>(
          future: _futureGetTodos,
          builder: (BuildContext context, AsyncSnapshot<List<Film>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData && snapshot.data != null) {
              List<Film> films = snapshot.data!;

              return ListView.builder(
                itemCount: films.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Card(
                            clipBehavior: Clip.antiAlias,
                            semanticContainer: true,
                            color: Colors.black87,
                            borderOnForeground: true,
                            elevation: 20.0,
                            child: SizedBox(
                              // height: 300,
                              width: 350,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.network(
                                    'https://image.tmdb.org/t/p/w1280' +
                                        films[index].poster_path,
                                  ),
                                  Text(
                                    films[index].title,
                                    style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        films[index].release_date,
                                        style:
                                            TextStyle(color: Colors.pinkAccent),
                                      ),
                                      Text(
                                        '${films[index].vote_average}',
                                        style:
                                            TextStyle(color: Colors.pinkAccent),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            } else {
              return Text(snapshot.error.toString());
            }
          },
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
