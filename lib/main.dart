import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';



import './products_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("EasyList"),
        ),
        body: ProductManager(),
      ),
    );
  }
}
