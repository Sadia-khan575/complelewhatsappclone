import 'package:flutter/material.dart';
import 'views/starting_view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(), // Splash Screen is the initial screen
    );
  }
}
