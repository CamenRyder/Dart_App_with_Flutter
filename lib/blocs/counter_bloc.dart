import 'package:counter/events/counter_even.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  

  @override
  int get initialState => 0;  
  @override
  Stream<int> mapEventToState(CounterEvent event) async*{
    // TODO: implement mapEventToState
  }

  
}
