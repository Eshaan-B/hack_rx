import 'package:flutter/material.dart';

class MealPlanner extends StatefulWidget {
  @override
  _MealPlannerState createState() => _MealPlannerState();
}

class _MealPlannerState extends State<MealPlanner> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Meal Planner', style: TextStyle(fontSize: 30))
    );
  }
}
