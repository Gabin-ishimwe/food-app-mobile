import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      margin: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_left, color: Color(0xFFF55349)),
          style: ElevatedButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: const Color.fromARGB(255, 255, 234, 233),
              elevation: 0,
              shape: const CircleBorder(),
              splashFactory: NoSplash.splashFactory,
              padding: const EdgeInsets.all(12)),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
        Text("Sign in",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 28)),
        // Padding(padding: EdgeInsets.symmetric(vertical: 8)),
        Row(
          children: [
            Text(
              "New user?",
              style:
                  GoogleFonts.poppins(color: Color(0xFF828282), fontSize: 14),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
            Text(
              "Create account",
              style:
                  GoogleFonts.poppins(color: Color(0xFF0E7DE3), fontSize: 16),
            )
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 16)),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            TextField(
              decoration: InputDecoration(label: Text("Enter your email")),
            )
          ],
        )
      ]),
    )));
  }
}
