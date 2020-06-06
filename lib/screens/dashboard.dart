import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'mealPlanner.dart';
import 'calorieCounter.dart';
import 'chatBot.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int pageNumber = 1;
  List<Widget> pages=[
        MealPlanner(),
    ChatBot(),
    CalorieCounter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
      leading:CircleAvatar(
          backgroundImage: AssetImage('assets/images/healthrx.png'),
        ),

        backgroundColor: Colors.purpleAccent,
        title: Text('HealthRX'),
        centerTitle: true,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: pageNumber,
        animationDuration: Duration(milliseconds: 250 ),
        height: 50,
        backgroundColor: Colors.purpleAccent,
        color: Colors.white,
        items: <Widget>[
          Icon(Icons.fastfood),
          Icon(Icons.adb),
          Icon(Icons.add_to_queue),
        ],
        onTap: (index){
          setState(() {
            pageNumber = index;
          });
        },
      ),
      body: pages[pageNumber]
    );
  }
}
