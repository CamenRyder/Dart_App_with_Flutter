import 'package:flutter/material.dart';

import '../Enity/Food.dart';

class detailFood extends StatelessWidget {
  late Food food;
  late Color color;
  detailFood({required this.food, required this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: color,
            title: Text(
              food.foodName,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                clipBehavior: Clip.hardEdge,
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/loading.gif',
                    image: food.urlNameImage),
              ),
              Container(
                height: 300,
                child: ListView.builder(
                    itemCount: food.foodElement.length,
                    itemBuilder: ((context, index) {
                      String ingredient = food.foodElement[index].toString();
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: color,
                          child: Text("${index + 1}"),
                        ),
                        title: Text(
                          ingredient,
                          style: TextStyle(color: color),
                        ),
                      );
                    })),
              ),
            ],
          ),
        ));
  }
}
