import 'dart:math';

import 'package:counter/events/counter_even.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  // CounterBloc(super.initialState);

  CounterBloc() : super(0);
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    // TODO: implement mapEventToState

    switch (event) {
      case CounterEvent.increment:
        var newState = state + 1;
        yield newState; 
        break;
      case CounterEvent.decrement:
        var newState = state - 1;
        yield newState; 
        break;
    }
  }
}
