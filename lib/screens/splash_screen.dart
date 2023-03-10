import 'package:flutter/material.dart';
import 'package:food_book_mobile/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.push(context, MaterialPageRoute(builder: (context) {
    //     return OnboardingScreen();
    //   }));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFF55349),
      body: Center(
          child: Container(
        child: Icon(
          Icons.food_bank_rounded,
          color: Colors.white,
          size: 65,
        ),
      )),
      extendBodyBehindAppBar: true,
    ));
  }
}
