import 'package:flutter/material.dart';
import 'package:foody/Modules/categoryPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[500],
          title: Text(
            "Foody",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(minimum: EdgeInsets.all(10), child: CategoryPage()),
      ),
    );
  }
}


// recycleView 
