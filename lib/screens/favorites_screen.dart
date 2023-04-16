import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../Models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text(
          'You have no Favorites--Start Adding Some',
          style: TextStyle(color: Colors.grey[900], fontSize: 19),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
            complexity: favoriteMeals[index].complexity,
            affordability: favoriteMeals[index].affordability,
          );
          // return Text(favoriteMeals[index].title);
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
