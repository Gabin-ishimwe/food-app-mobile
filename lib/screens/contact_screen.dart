import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:food_book_mobile/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  var maskFormatter = MaskTextInputFormatter(
      mask: '+### ###-###-###',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20),
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
          Text("Get started with Foodly",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 24)),
          // Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "Enter your phone number to use foodly and enjoy your food :)",
              style: GoogleFonts.poppins(
                  color: const Color(0xFF828282), fontSize: 12),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Phone number",
                style: GoogleFonts.poppins(fontSize: 12),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [maskFormatter],
                decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEBEBEB), width: 3),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 3)),
                  hintText: "+250 787-857-036",
                  hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF828282), fontSize: 14),
                  // suffixIconColor:
                ),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 53, 34),
                // backgroundColor: const Color(0xFFE1E1E1),
                padding: const EdgeInsets.all(14),
                elevation: 0,
                minimumSize: const Size.fromHeight(28),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            child: Text(
              "Sign up",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    // color: Color(0xFFC4C4C4),
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
