import 'dart:js';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool showBottomMenu = false;
  var thresholdScroll =
      100; // min pixel/second to be considered as screen scroll
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onPanEnd: (details) {
        // scroll down pixelPerSecond increase
        if (details.velocity.pixelsPerSecond.dy > thresholdScroll) {
          setState(() {
            showBottomMenu = true;
          });
        }
        // scroll up pixelPerSecond descrease
        else if (details.velocity.pixelsPerSecond.dy < -thresholdScroll) {
          setState(() {
            showBottomMenu = false;
          });
        }
      },
      child: Scaffold(
          body: Stack(
        children: [
          Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Expanded(
                    flex: 7,
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
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                  Expanded(
                    flex: 3,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 235, 53, 34),
                                padding: EdgeInsets.all(14),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            child: Text(
                              "Create a new account",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  fontSize: 18),
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 235, 53, 34),
                                    width: 2),
                                padding: EdgeInsets.all(14),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            child: Text(
                              "Sign in",
                              style: GoogleFonts.poppins(
                                  color: Color.fromARGB(255, 235, 53, 34),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                    color: Color.fromARGB(255, 171, 171, 171),
                                    width: 2),
                                padding: EdgeInsets.all(14),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "images/welcome_screen/google.png")),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6)),
                                Text(
                                  "Continue with Google",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          // Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                          Align(
                              alignment: Alignment.center,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    // foregroundColor: Colors.white,
                                    splashFactory: NoSplash.splashFactory),
                                onPressed: (() {
                                  setState(() {
                                    showBottomMenu = true;
                                  });
                                }),
                                child: Text(
                                  "Show more",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 171, 171, 171),
                                      fontWeight: FontWeight.w500),
                                ),
                              ))
                        ]),
                  )
                ],
              )),
          Opacity(opacity: showBottomMenu ? 1.0 : 0),
          // menu widgets
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 200),
            child: SocialMenuWidget(),
            bottom:
                showBottomMenu ? -20 : -(MediaQuery.of(context).size.height),
          )
        ],
      )),
    ));
  }
}

class SocialMenuWidget extends StatelessWidget {
  const SocialMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        padding: EdgeInsets.all(20),
        width: width,
        //height: height / 2, // take 1/3 height of the screen
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          // Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "You can connect your social media accounts to create an account on Delaft",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Color.fromARGB(255, 171, 171, 171),
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 235, 53, 34),
                padding: EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Text(
              "Create a new account",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  fontSize: 18),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(
                    color: Color.fromARGB(255, 235, 53, 34), width: 2),
                padding: EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Text(
              "Sign in",
              style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 235, 53, 34),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(
                    color: Color.fromARGB(255, 171, 171, 171), width: 2),
                padding: EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage("images/welcome_screen/google.png")),
                Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                Text(
                  "Continue with Google",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0E70E3),
                padding: EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook),
                Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                Text(
                  "Facebook",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.all(14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.apple),
                Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                Text(
                  "Apple",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(
                    // foregroundColor: Colors.white,
                    splashFactory: NoSplash.splashFactory),
                onPressed: (() {}),
                child: Text(
                  "Show less",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Color.fromARGB(255, 171, 171, 171),
                      fontWeight: FontWeight.w500),
                ),
              )),
          Padding(padding: EdgeInsets.symmetric(vertical: 8))
        ]),
      ),
    );
  }
}
