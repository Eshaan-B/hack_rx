import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/loginPage.dart';
import 'screens/registrationPage.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=>WelcomeScreen(),
        '/register': (context)=> RegistrationPage(),
        '/login': (context)=> LoginPage(),
        '/dashboard': (context)=> Dashboard(),
      },
    );
  }
}