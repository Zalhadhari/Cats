import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/Cat_Card.dart';
import 'package:flutter_application_1/model/Cats.dart';
import 'main.dart';

class CatsHomeScreen extends StatefulWidget {
  const CatsHomeScreen({super.key});

  @override
  State<CatsHomeScreen> createState() => _CatsHomeScreenState();
}

class _CatsHomeScreenState extends State<CatsHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Cats',),
          backgroundColor:Colors.orange ,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        ),
        //in the all coulem has tow imegs
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: Cats.length,
          itemBuilder: (context, index) {
            final cat = Cats[index];
            return CatCard(cat: cat);
          },
        )
        /*GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          CatCard(
             imageLink:"https://api-ninjas.com/images/cats/abyssinian.jpg", 
             catName: 'Abyssinian',
          ),  
          CatCard(imageLink:"https://api-ninjas.com/images/cats/aegean.jpg" , catName: "Aegean"),
          
        ],
      ),*/
        );
  }
}
