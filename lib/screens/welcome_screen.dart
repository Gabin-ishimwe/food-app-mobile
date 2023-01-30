import 'package:flutter/material.dart';
import 'package:food_book_mobile/screens/sign_in_screen.dart';
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

  void closeBottomMenu() {
    setState(() {
      showBottomMenu = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: GestureDetector(
      onPanEnd: (details) {
        // scroll up pixelPerSecond increase
        if (details.velocity.pixelsPerSecond.dy > thresholdScroll) {
          setState(() {
            showBottomMenu = true;
          });
        }
        // scroll down pixelPerSecond descrease
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
              margin: const EdgeInsets.all(20),
              width: screenWidth,
              height: screenHeight,
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.58,
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
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
                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4)),
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
                  const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print("new account");
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 235, 53, 34),
                              padding: const EdgeInsets.all(14),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          child: Text(
                            "Create a new account",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                fontSize: 18),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8)),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignInScreen();
                            }));
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 235, 53, 34),
                                  width: 2),
                              padding: const EdgeInsets.all(14),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          child: Text(
                            "Sign in",
                            style: GoogleFonts.poppins(
                                color: const Color.fromARGB(255, 235, 53, 34),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8)),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: const BorderSide(
                                  color: Color.fromARGB(255, 171, 171, 171),
                                  width: 2),
                              padding: const EdgeInsets.all(14),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                  image: AssetImage(
                                      "images/welcome_screen/google.png")),
                              const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6)),
                              Text(
                                "Continue with Google",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
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
                                print("show more");
                                setState(() {
                                  showBottomMenu = true;
                                });
                              }),
                              child: Text(
                                "Show more",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: const Color.fromARGB(
                                        255, 171, 171, 171),
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                      ])
                ],
              )),
          IgnorePointer(
            child: Opacity(
              opacity: showBottomMenu ? 1.0 : 0,
              child: Container(color: Colors.black.withOpacity(0.3)),
            ),
          ),
          // menu widgets
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 200),
            bottom:
                showBottomMenu ? -20 : -(MediaQuery.of(context).size.height),
            child: SocialMenuWidget(
              closeBottomMenu: closeBottomMenu,
            ),
          )
        ],
      )),
    ));
  }
}

class SocialMenuWidget extends StatelessWidget {
  var closeBottomMenu;

  SocialMenuWidget({super.key, required this.closeBottomMenu});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        width: width,
        //height: height / 2, // take 1/3 height of the screen
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          // Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "You can connect your social media accounts to create an account on Delaft",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 171, 171, 171),
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 53, 34),
                padding: const EdgeInsets.all(14),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Text(
              "Create a new account",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  fontSize: 18),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          OutlinedButton(
            onPressed: () {
              print("sign in ");
            },
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Color.fromARGB(255, 235, 53, 34), width: 2),
                padding: const EdgeInsets.all(14),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Text(
              "Sign in",
              style: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 235, 53, 34),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Color.fromARGB(255, 171, 171, 171), width: 2),
                padding: const EdgeInsets.all(14),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                    image: AssetImage("images/welcome_screen/google.png")),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                Text(
                  "Continue with Google",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0E70E3),
                padding: const EdgeInsets.all(14),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.facebook),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                Text(
                  "Facebook",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.all(14),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.apple),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                Text(
                  "Apple",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
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
                onPressed: (() {
                  closeBottomMenu();
                }),
                child: Text(
                  "Show less",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 171, 171, 171),
                      fontWeight: FontWeight.w500),
                ),
              )),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8))
        ]),
      ),
    );
  }
}
