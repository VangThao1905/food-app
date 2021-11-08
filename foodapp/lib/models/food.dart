import 'dart:math';

class Food {
  int? id;
  String name;
  String urlName;
  Duration duration;
  Complexity complexity;

  List<String> ingredients = [];
  int categoryId;

  Food(
      {required this.name,
      required this.urlName,
      required this.duration,
      required this.complexity,
      required this.ingredients,
      required this.categoryId}) {
    this.id = Random().nextInt(100);
  }
}

enum Complexity { Simple, Medium, Hard }

extension ParseToString on Complexity {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
