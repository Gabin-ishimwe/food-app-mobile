import 'dart:math';

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
      body: Container(
          margin: EdgeInsets.only(top: 35, right: 20, left: 20, bottom: 20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "images/welcome_screen/background.png"))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "A wonderful serenity taken possession",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 26),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                        Text(
                          "I am alone, and feel the charm of existence in this spot, which was created for the bliss",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        )
                      ]),
                ),
                flex: 7,
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8)),
              Expanded(
                child: Container(
                  // width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Create a new account",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 235, 53, 34),
                              padding: EdgeInsets.all(14),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Sign in",
                            style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 235, 53, 34),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(
                                  color: Color.fromARGB(255, 235, 53, 34),
                                  width: 2),
                              padding: EdgeInsets.all(14),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                        )
                      ]),
                ),
                flex: 3,
              )
            ],
          )),
    );
  }
}
