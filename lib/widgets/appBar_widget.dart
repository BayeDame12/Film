import 'package:flutter/material.dart';

FilmAppBarr(
  String titreText,
  Icon monicon,
) {
  return AppBar(
    title: Text(titreText),
    centerTitle: true,
    elevation: 10.0,
    backgroundColor: Colors.black,
    actions: [
      IconButton(onPressed: () {}, icon: (monicon)),
    ],
  );
}
