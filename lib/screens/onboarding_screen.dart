import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import 'package:food_book_mobile/models/onboarding_model.dart';
import 'package:food_book_mobile/screens/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Flutter Demo")),
      //   body: Container(
      // padding: EdgeInsets.only(top: 35, right: 20, left: 20, bottom: 20),
      body: Column(children: [
        Expanded(
          child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) => {
                    setState(
                      () {
                        currentIndex = index;
                      },
                    )
                  },
              itemCount: onboardContents.length,
              itemBuilder: (_, index) {
                return Container(
                  padding:
                      EdgeInsets.only(top: 35, right: 20, left: 20, bottom: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Container(
                            // color: Color.fromARGB(255, 255, 234, 233),
                            padding: EdgeInsets.only(
                                top: 12, left: 18, right: 18, bottom: 18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color.fromARGB(255, 255, 234, 233),
                            ),
                            child: Column(children: [
                              Align(
                                child: Container(
                                  margin: EdgeInsets.zero,
                                  child: TextButton(
                                    child: Text(
                                      "Skip",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        color: Color.fromARGB(255, 235, 53, 34),
                                        fontSize: 16,
                                      )),
                                    ),
                                    onPressed: (() {
                                      // skip onboarding
                                      // navigate to other screen
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return WelcomeScreen();
                                      })));
                                    }),
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.all(0)),
                                  ),
                                ),
                                alignment: Alignment.topRight,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: SvgPicture.asset(
                                    onboardContents[index].image,
                                    semanticsLabel: "logo",
                                    height: 250,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    onboardContents.length,
                                    (index) => Container(
                                        height: 10,
                                        width: currentIndex == index ? 25 : 10,
                                        margin: EdgeInsets.only(right: 5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color:
                                              Color.fromARGB(255, 235, 53, 34),
                                        )),
                                  ))
                            ]),
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Text(
                                        onboardContents[index].title,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold)),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 8),
                                      child: Text(
                                        onboardContents[index].description,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 150, 150, 150))),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ]),
                            )),
                      ]),
                );
              }),
          // flex: 9,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              if (currentIndex == onboardContents.length - 1) {
                // navigate on another screen
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return WelcomeScreen();
                })));
              }
              _controller.nextPage(
                  duration: Duration(milliseconds: 400), curve: Curves.ease);
            },
            child: Text(
              currentIndex == onboardContents.length - 1 ? "Continue" : "Next",
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
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        )
        // Expanded(
        //   child: ElevatedButton(
        //     onPressed: () {},
        //     child: Text(
        //       "Next",
        //       style: GoogleFonts.poppins(
        //           textStyle: TextStyle(
        //             fontWeight: FontWeight.bold,
        //             color: Colors.white,
        //           ),
        //           fontSize: 20),
        //     ),
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor: Color.fromARGB(255, 235, 53, 34),
        //         padding: EdgeInsets.all(14),
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.all(Radius.circular(8)))),
        //   ),
        //   flex: 1,
        // )
      ]),
    );
  }
}
