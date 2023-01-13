import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foody/Enity/Category.dart';
import 'package:foody/Modules/foodPage.dart';

class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => FoodPage(category: category))));
      },
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [category.color.withOpacity(0.85), category.color],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(6)),
        child: Center(
            child: Text(
          category.countryName,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
