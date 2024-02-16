import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/model/Cats.dart';
import 'Cats_Detils_Screan.dart';
class CatCard extends StatelessWidget {
  final Cat cat;
  const CatCard({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onDoubleTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatDetilsScrean(cat: cat);
        }));
      },
      child: Card(
          child: Column(
        children: [
          //Cats Images
          Expanded(
              child: Image.network(
                  width: double.infinity, fit: BoxFit.cover,cat.imageLink)),
          //Cat Name
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              cat.name,
              textAlign: TextAlign.center,
               style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold ,
                color: Colors.orange
                ),
                ),
          )
        ],
      )
      ),
    );
  }
}
