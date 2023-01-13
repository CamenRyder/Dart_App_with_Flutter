import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  Stream<int> aStreamFunction() async*{
        
  }
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
