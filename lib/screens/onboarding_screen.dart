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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: screenWidth,
        height: screenHeigth,
        child: Column(children: [
          Container(
            height: screenHeigth * (0.86), // take 85% of screen
            child: Expanded(
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
                      padding: const EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color:
                                      const Color.fromARGB(255, 255, 234, 233),
                                ),
                                child: Column(children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      child: TextButton(
                                        onPressed: (() {
                                          // skip onboarding
                                          // navigate to other screen
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: ((context) {
                                            return const WelcomeScreen();
                                          })));
                                        }),
                                        style: TextButton.styleFrom(
                                            padding: const EdgeInsets.all(0),
                                            splashFactory:
                                                NoSplash.splashFactory),
                                        child: Text(
                                          "Skip",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 235, 53, 34),
                                            fontSize: 14,
                                          )),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: SvgPicture.asset(
                                        onboardContents[index].image,
                                        semanticsLabel: "logo",
                                        height: 250,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(
                                        onboardContents.length,
                                        (index) => Container(
                                            height: 10,
                                            width:
                                                currentIndex == index ? 25 : 10,
                                            margin:
                                                const EdgeInsets.only(right: 5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color.fromARGB(
                                                  255, 235, 53, 34),
                                            )),
                                      ))
                                ]),
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisSize: MainAxisSize.max,
                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ),
                                          child: Text(
                                            onboardContents[index].title,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 5),
                                          child: Text(
                                            onboardContents[index].description,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
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
            ),
          ),
          Container(
            width: screenWidth,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
            child: ElevatedButton(
              onPressed: () {
                if (currentIndex == onboardContents.length - 1) {
                  // navigate on another screen
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const WelcomeScreen();
                  })));
                }
                _controller.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 235, 53, 34),
                  padding: const EdgeInsets.all(14),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
              child: Text(
                currentIndex == onboardContents.length - 1
                    ? "Continue"
                    : "Next",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    fontSize: 18),
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
