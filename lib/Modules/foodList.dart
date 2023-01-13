import 'package:flutter/material.dart';
import 'package:foody/Modules/detailFood.dart';

import '../Enity/Food.dart';

class FoodList extends StatelessWidget {
  Food food;
  Color color;
  FoodList({required this.food, required this.color});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => detailFood(
                      food: food,
                      color: color,
                    ))));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: color, width: 1.5)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                clipBehavior: Clip.hardEdge,
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/loading.gif',
                    image: food.urlNameImage)),
          ),
          Text(
            food.foodName,
            style: TextStyle(
                color: color, fontSize: 18, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
