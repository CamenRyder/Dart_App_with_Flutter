import 'package:counter/blocs/counter_bloc.dart';
import 'package:counter/events/counter_even.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.read<CounterBloc>();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Aduu bloc ne!"),
      ),
      body: SafeArea(
          minimum: EdgeInsets.all(12),
          child: BlocBuilder<CounterBloc, int>(
            builder: (context, state) {
// todo progress case !

              return Container(
                margin: EdgeInsets.only(top: 235),
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Two actions/events here: ",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 180,
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6)),
                          child: TextButton(
                            child: Text(
                              "Increment",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              counterBloc.add(CounterEvent.increment);
                            },
                          ),
                        ),
                        Container(
                          width: 180,
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(6)),
                          child: TextButton(
                            child: Text(
                              "Decrement",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              counterBloc.add(CounterEvent.decrement);
                            },
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.blue, width: 2)),
                        child: Center(
                          child: Text(
                            "$state",
                            style: TextStyle(
                                fontSize: 80,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
              );
            },
          )),
    );
  }
}
