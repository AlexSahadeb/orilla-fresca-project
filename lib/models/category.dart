import 'package:flutter/cupertino.dart';

class Category {
  String name;
  String icon;
  Color color;
  String imgName;
  List<Category> subcategoris;
  Category(
      {required this.name,
      required this.icon,
      required this.color,
      required this.imgName,
      required this.subcategoris});
}
