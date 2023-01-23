import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("Flutter Demo")),
        body: Padding(
      padding: EdgeInsets.only(top: 35, right: 20, left: 20, bottom: 20),
      child: Container(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            flex: 7,
            child: Container(
              color: Color.fromARGB(255, 255, 234, 233),
              padding: EdgeInsets.all(16),
              child: Column(children: [
                Text(
                  "Skip",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Color.fromARGB(255, 235, 53, 34),
                  )),
                ),
                SvgPicture.asset(
                  "images/onboarding/online_groceries.svg",
                  semanticsLabel: "logo",
                  height: 200,
                  width: 200,
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ]),
      ),
    ));
  }
}
