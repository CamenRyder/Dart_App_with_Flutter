import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                margin: EdgeInsets.only(bottom: 20),
                width: 300,
                // color: Colors.green[700],
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                    color: Colors.green[700],
                    borderRadius: BorderRadius.circular(12)),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue[800])),
                  onPressed: (() {}),
                  child: Text(
                    "Change",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
