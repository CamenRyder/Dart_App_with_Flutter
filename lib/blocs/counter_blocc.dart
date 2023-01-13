import 'dart:async';

import 'package:counter/counter_page.dart';

class CounterBlocc {
  StreamController _streamController = StreamController<int>.broadcast();
  int index = 0;
  Stream get CounterStream => _streamController.stream;

  void increaseIndex() {
    index = index + 1;
    _streamController.sink.add(index);
  }

  void decreaseIndex() {
    index = index - 1;
    _streamController.sink.add(index); 
  }

  void dispose() {
    _streamController.close();
  }
}
