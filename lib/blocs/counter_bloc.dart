import 'package:counter/events/counter_even.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  // TODO: implement initialState
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    print(state); 
    switch (event) {
      case CounterEvent.increment:
        break;
      case CounterEvent.decrement:
        break;
    }
    // TODO: implement mapEventToState
  }
}
