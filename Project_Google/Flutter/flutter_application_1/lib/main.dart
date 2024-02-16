import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/all_cats.dart';
import 'catsHomeScreen.dart';
import 'model/Cats.dart';

final Cats = allCast.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();
void main() {
//This same up cod but the up is profishnol
  /*final listOfCatsAsJson = allCast;
  final listOfCatsAsObjects = <Cat>[];
  for (var i = 0; i < listOfCatsAsJson.length; i++) {
    final catAsJson = listOfCatsAsJson[i];
    final catAsObject = Cat.fromJson(catAsJson);
    listOfCatsAsObjects.add(catAsObject);
  }*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CatsHomeScreen()
     
    );
  }
}
