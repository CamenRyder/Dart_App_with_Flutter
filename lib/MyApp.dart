import 'package:flutter/material.dart';
import 'package:infinite_list/service/services.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getCommentFormAPI(20,20);  
    // TODO: implement build
    return MaterialApp(
      title: "Infinte App use builder !",
      home: Scaffold(
          body: SafeArea(
        minimum: EdgeInsets.all(10),
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return ListTile(
              leading: Text(
                " ${index + 1} ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text(
                "Goodmorning, guys!",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              isThreeLine: true,
              subtitle: Text(
                "Today is 14/1 you have to learning about tutorial message heyy:)",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            );
          }),
          itemCount: 50,
        ),
      )),
    );
  }
}
