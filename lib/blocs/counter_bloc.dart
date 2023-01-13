import 'package:counter/events/counter_even.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(super.initialState);

  @override
  // TODO: implement initialState
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    print("Default state: " + state.toString());
    switch (event) {
      case CounterEvent.increment:
        var newState = state + 1;
        print("Default state increase: " + newState.toString());
        yield newState;
        break;
      case CounterEvent.decrement:
        int newState = state - 1;
        print("Default state decrease: " + newState.toString());
        yield newState;
        break;
    }
    // TODO: implement mapEventToState
  }
}
