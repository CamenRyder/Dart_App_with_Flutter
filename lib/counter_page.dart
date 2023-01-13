import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Text(
          "This is counter app!",
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
