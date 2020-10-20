import 'package:flutter/material.dart';

import '../screens/category_meals.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color bgColor;

  CategoryItem(this.id, this.title, this.bgColor);

  void onTapCategory(BuildContext ctx) {
    // Navigator.of(ctx).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoryMealsScreen(id, title);
    //     },
    //   ),
    // );
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTapCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [bgColor.withOpacity(0.7), bgColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
