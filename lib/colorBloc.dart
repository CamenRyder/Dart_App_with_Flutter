import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';

class ColorBloc {
  StreamController _streamController = StreamController<Color>.broadcast();
  Stream get colorStream => _streamController.stream ;

  void changeColor() {
    _streamController.sink.add(Colors.red);
  }
   void changeColor2() {
    _streamController.sink.add(Colors.green[700]);
  }

  void dispose() {
    _streamController.close();
  }
}
