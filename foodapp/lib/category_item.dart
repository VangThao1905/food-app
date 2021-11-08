import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return Container(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(this.category.content,
              style: Theme.of(context).textTheme.subtitle1),
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [_color.withOpacity(0.6), _color],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
          color: _color,
          borderRadius: BorderRadius.circular(20)),
    ));
  }
}
