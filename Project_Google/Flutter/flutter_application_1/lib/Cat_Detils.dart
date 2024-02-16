import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Cats.dart';

class CatDetailsWidget extends StatefulWidget {
  final Cat cat;
  const CatDetailsWidget({super.key, required this.cat});

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {
  bool isNameColored = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Cat Image
        Image.network(widget.cat.imageLink),
        //cat Name
        Text(
          widget.cat.name,
          style: TextStyle(
           fontSize: 32, 
           fontWeight: FontWeight.bold,
           color: isNameColored? Colors.orange: Colors.black
          ),

        ),
        //Cat Inf
        Text("Origin: ${widget.cat.origin}"),
        Text("Max Weight: ${widget.cat.maxWeight} "),
        Text("Min Weight: ${widget.cat.minWeight} "),
        Text("Length: ${widget.cat.length}"),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isNameColored = !isNameColored;
              });
            },
            child: Text('Change Name Color')   
         )
      ],
    );
  }
}
