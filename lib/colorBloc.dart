import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';

class ColorBloc {
  StreamController _streamController = StreamController<Color>.broadcast();
  Stream get colorStream => _streamController.stream ;

  void changeColor() {
    _streamController.sink.add(Colors.red);
  }

  void dispose() {
    _streamController.close();
  }
}
