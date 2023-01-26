import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Welcome Page",
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          color: Color.fromARGB(255, 235, 53, 34),
          fontSize: 16,
        )),
      )),
    );
  }
}
