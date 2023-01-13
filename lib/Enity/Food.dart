class Food {
  late int categoryId;
  late String foodName;
  late String urlNameImage;
  late Duration duration;
  late List<String> foodElement;
  late Complexityy complexity;

  Food(
      {required this.categoryId,
      this.complexity = Complexityy.Easy,
      required this.duration,
      required this.foodName,
      required this.urlNameImage,
      required this.foodElement});
}

enum Complexityy {
  Hard,
  Easy,
  Medium,
}
