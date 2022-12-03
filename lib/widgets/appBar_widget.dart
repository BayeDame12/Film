import 'package:flutter/material.dart';

FilmAppBarr(
  String titreText,
  Icon monicon,
) {
  return AppBar(
    title: Text(titreText,
        style: TextStyle(fontSize: 25, color: Color(0xfff43370))),
    centerTitle: true,
    elevation: 10.0,
    backgroundColor: Colors.black,
    actions: [
      IconButton(onPressed: () {}, icon: (monicon)),
    ],
  );
}
