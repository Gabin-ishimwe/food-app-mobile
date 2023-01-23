import 'package:flutter/material.dart';
import 'package:food_book_mobile/screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Book Application",
      home: OnboardingScreen(),
    );
  }
}
