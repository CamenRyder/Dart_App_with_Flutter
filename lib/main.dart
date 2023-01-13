import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Counter App chu gi nua!",
        home: Center(
          child: Text("App counter number!"),
        ));
  }
}
