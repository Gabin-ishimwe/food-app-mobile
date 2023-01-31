import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      margin: const EdgeInsets.all(20),
      child: Form(
        key: formState,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: const Color.fromARGB(255, 255, 234, 233),
                elevation: 0,
                shape: const CircleBorder(),
                splashFactory: NoSplash.splashFactory,
                padding: const EdgeInsets.all(12)),
            child: const Icon(Icons.arrow_left, color: Color(0xFFF55349)),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          Text("Sign in",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 24)),
          // Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          Row(
            children: [
              Text(
                "New user?",
                style: GoogleFonts.poppins(
                    color: const Color(0xFF828282), fontSize: 12),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
              Text(
                "Create account",
                style: GoogleFonts.poppins(
                    color: const Color(0xFF0E7DE3), fontSize: 14),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              TextFormField(
                decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFEBEBEB), width: 3),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 3)),
                    hintText: "Enter your email",
                    hintStyle: GoogleFonts.poppins(
                        color: const Color(0xFF828282), fontSize: 14)),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 12)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEBEBEB), width: 3),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 3)),
                  hintText: "Enter your password",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF828282), fontSize: 14),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  // suffixIconColor:
                ),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
          ElevatedButton(
            onPressed: () {
              print("sign in");
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 53, 34),
                padding: const EdgeInsets.all(14),
                minimumSize: const Size.fromHeight(28),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Text(
              "Create a new account",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  fontSize: 16),
            ),
          ),
        ]),
      ),
    )));
  }
}
