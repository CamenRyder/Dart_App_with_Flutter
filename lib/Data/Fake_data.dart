import 'package:flutter/material.dart';

import '../Enity/Category.dart';
import '../Enity/Food.dart';

final List<Category> CATEGORY_FOOD = [
  Category(id: 1, countryName: "Viet Nam", color: Colors.red),
  Category(
      id: 2,
      countryName: "United States",
      color: Color.fromARGB(255, 13, 89, 151)),
  Category(
      id: 3, countryName: "Thai Lan", color: Color.fromARGB(255, 134, 67, 42)),
  Category(
      id: 4, countryName: "Singapore", color: Color.fromARGB(255, 97, 60, 160)),
  Category(
      id: 5, countryName: "Russia", color: Color.fromARGB(255, 123, 133, 40)),
  Category(
      id: 6, countryName: "Japan", color: Color.fromARGB(255, 49, 122, 52)),
];

var FOODLIST = [
  Food(
      categoryId: 1,
      foodName: "Banh Xeo",
      urlNameImage:
          "https://cdn.daotaobeptruong.vn/wp-content/uploads/2020/01/cach-do-banh-xeo-ngon-gion-lau.jpg",
      duration: Duration(minutes: 3),
      foodElement: ["Vegetables", "Shrimp", "Pork", "Flour"],
      complexity: Complexityy.Medium),
  Food(
      categoryId: 1,
      foodName: "Pho bo",
      urlNameImage:
          "https://cdn.beptruong.edu.vn/wp-content/uploads/2016/07/gioi-thieu-pho-bo-ha-noi.jpg",
      duration: Duration(minutes: 15),
      foodElement: ["Vegetables", "Soup", "Rice noodle", "Beef"],
      complexity: Complexityy.Hard),
  Food(
      categoryId: 1,
      foodName: "Rice Cake Square",
      urlNameImage:
          "https://cdn.beptruong.edu.vn/wp-content/uploads/2020/12/hinh-anh-banh-chung.jpg",
      duration: Duration(minutes: 5),
      foodElement: ["Dong leaves", "Pork", "Sticky rice", "Green bean"],
      complexity: Complexityy.Hard),
  Food(
      categoryId: 1,
      foodName: "Com Tam",
      urlNameImage:
          "https://top10quynhon.com/wp-content/uploads/com-tam-nguyen-730x550.jpg",
      duration: Duration(minutes: 15),
      foodElement: [
        "Egg",
        "Mixed water sauce",
        "Rice",
        "Pork side",
        "Vegetables"
      ],
      complexity: Complexityy.Medium),
  Food(
      categoryId: 1,
      foodName: "Noodles with soup",
      urlNameImage:
          "https://giadinh.tv/wp-content/uploads/2020/09/cach-pha-nuoc-cham-bun-cha.jpg",
      duration: Duration(minutes: 10),
      foodElement: ["Vegetables", "Soup mixed", "Rice noodle", "Pork"],
      complexity: Complexityy.Medium),
  //Beignets, New Orleans, Florida
  Food(
      categoryId: 2,
      foodName: "Beignets, New Orleans",
      urlNameImage:
          "https://wiki-travel.com.vn/uploads/picture/thanhhuong-161418031419-banh-a.jpg",
      duration: Duration(minutes: 18),
      foodElement: ["Soup", "Bread", "Pork", "flour"],
      complexity: Complexityy.Medium),

  Food(
      categoryId: 2,
      foodName: "Cheese steak",
      urlNameImage:
          "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/philly-cheesesteak-3c4be15.jpg",
      duration: Duration(minutes: 7),
      foodElement: ["Onion", "Bread", "Steak", "Cheese"],
      complexity: Complexityy.Medium),
  Food(
      categoryId: 2,
      foodName: "Florida",
      urlNameImage:
          "https://wiki-travel.com.vn/uploads/picture/thanhhuong-161418031456-banh-chanh.jpg",
      duration: Duration(minutes: 7),
      foodElement: ["Sugar", "Lemon", "Flour"],
      complexity: Complexityy.Medium),
  Food(
      categoryId: 2,
      foodName: "Hotdog",
      urlNameImage:
          "https://wiki-travel.com.vn/uploads/picture/thanhhuong-161518031515-hot-dog.jpg",
      duration: Duration(minutes: 7),
      foodElement: ["chili sauce", "Bread", "sausage", "Cheese"],
      complexity: Complexityy.Medium),

  Food(
      categoryId: 3,
      foodName: "Pad Thai",
      urlNameImage:
          "https://cdn.alongwalker.co/vn/wp-content/uploads/2022/04/04172437/image-10-mon-an-truyen-thong-cua-thai-lan-164904267669342.jpg",
      duration: Duration(minutes: 18),
      foodElement: ["Vegetable", "Shrmip", "Soup", "fried onion"],
      complexity: Complexityy.Easy),
];
