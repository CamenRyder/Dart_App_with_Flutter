import 'package:counter/blocs/counter_bloc.dart';
import 'package:counter/blocs/counter_blocc.dart';
import 'package:counter/events/counter_even.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  CounterBlocc _counterBloc = new CounterBlocc();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
            initialData: 0,
            stream: _counterBloc.CounterStream,
            builder: ((context, asynData) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(9)),
                    child: TextButton(
                        onPressed: () {
                          _counterBloc.increaseIndex();
                        },
                        child: Text(
                          "Increase",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Text(
                    "Result: ${asynData.data}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(9)),
                    child: TextButton(
                        onPressed: () {
                          _counterBloc.decreaseIndex();
                        },
                        child: Text(
                          "Decrease",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              );
            })),
      ),
    );
  }
}
