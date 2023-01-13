import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foody/Enity/Category.dart';
import 'package:foody/Enity/Food.dart';
import 'package:foody/Modules/foodList.dart';

import '../Data/Fake_data.dart';

class FoodPage extends StatelessWidget {
  Category category;
  FoodPage({required this.category});

  @override
  Widget build(BuildContext context) {
    List<Food> foods = FOODLIST
        .where(
          (element) => element.categoryId == category.id,
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: category.color,
        title: Text(
          "${category.countryName}\'s Food.",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          minimum: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: foods.length,
              itemBuilder: ((context, index) {
                return FoodList(food: foods[index], color: category.color);
              }))),
    );
  }
}
