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
            flex: 6,
            child: Container(
              // color: Color.fromARGB(255, 255, 234, 233),
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 255, 234, 233),
              ),
              child: Column(children: [
                Align(
                  child: Text(
                    "Skip",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      color: Color.fromARGB(255, 235, 53, 34),
                      fontSize: 16,
                    )),
                  ),
                  alignment: Alignment.topRight,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SvgPicture.asset(
                    "images/onboarding/online_groceries.svg",
                    semanticsLabel: "logo",
                    height: 250,
                    width: 250,
                  ),
                )
                // Row(
                //   children: [

                //   ],
                // )
              ]),
            ),
          ),
          Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Shop from your favorite restaurant",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          child: Text(
                            "A diverse list of different dining restaurants throughout the territory and around your area carefully selected",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 150, 150, 150))),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Next",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 235, 53, 34),
                              padding: EdgeInsets.all(14),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                        ),
                      ]),
                ),
              )),
        ]),
      ),
    ));
  }
}
