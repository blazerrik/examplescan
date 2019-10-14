import 'package:flutter/material.dart';

class Producsts extends StatelessWidget {
  final List<String> products_list;

  Producsts([this.products_list = const []]);

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: products_list
            .map((element) => Card(
          child: Column(
            children: <Widget>[
              Text(element)
            ],
          ),
        ))
            .toList());
  }


}






