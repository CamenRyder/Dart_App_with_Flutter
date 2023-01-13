import 'package:counter/blocs/counter_bloc.dart';
import 'package:counter/events/counter_even.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, state) {
            return Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.red,
                      border: Border.all(color: Colors.red)),
                  child: TextButton(
                    onPressed: (() {
                      CounterBloc().add(CounterEvent.decrement);
                    }),
                    child: Text(
                      "Increase",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Text(
                  state.toString(),
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.blue,
                      border: Border.all(color: Colors.blue)),
                  child: TextButton(
                    onPressed: (() {
                      CounterBloc().add(CounterEvent.increment);
                    }),
                    child: Text(
                      "Decrease",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
