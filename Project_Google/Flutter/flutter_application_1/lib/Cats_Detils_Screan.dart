import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cat_Detils.dart';
import 'package:flutter_application_1/model/Cats.dart';

class CatDetilsScrean extends StatelessWidget {
  final Cat cat;
  const CatDetilsScrean({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(
        cat.name
      ),
      backgroundColor: Colors.orange,
    ),
    body:CatDetailsWidget(
      cat: cat
    ),
    );
  }
}
