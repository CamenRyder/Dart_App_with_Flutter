import 'package:counter/counter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Stream<int> aStreamFunction() async* {
  //   yield 2;
  //   yield 18;
  //   yield 20;
  // }

  @override
  Widget build(BuildContext context) {
    // final elemenst = this.aStreamFunction();
    // elemenst.forEach(
    //   (element) {

    //   },
    // );

    // TODO: implement build
    return MaterialApp(
        title: "Counter App chu gi nua!",
        home: Center(
          child: CounterPage(),
        ));
  }
}
