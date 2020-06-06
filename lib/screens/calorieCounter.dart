import 'package:flutter/material.dart';

class CalorieCounter extends StatefulWidget {
  @override
  _CalorieCounterState createState() => _CalorieCounterState();
}

class _CalorieCounterState extends State<CalorieCounter> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Calorie Counter', style: TextStyle(fontSize: 30))
    );
  }
}
