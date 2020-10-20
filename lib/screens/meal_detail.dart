import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final Meal selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(selectedMeal.imageUrl),
          ),
        ],
      ),
    );
  }
}
