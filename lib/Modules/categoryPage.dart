import 'package:flutter/material.dart';
import 'package:foody/Data/Fake_data.dart';
import 'package:foody/Enity/Category.dart';
import 'package:foody/Modules/categoryItem.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
        children: CATEGORY_FOOD
            .map((elementCategory) => CategoryItem(category: elementCategory))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 3,
        ));
  }
}
