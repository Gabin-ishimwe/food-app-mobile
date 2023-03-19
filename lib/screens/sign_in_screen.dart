import 'package:flutter/material.dart';
import 'package:food_book_mobile/controllers/auth_controller.dart';
import 'package:food_book_mobile/repositories/authentication_controller.dart';
import 'package:food_book_mobile/screens/sign_up_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  AuthController authController = Get.put(AuthController());
  AuthenticationRepository authenticationRepository =
      Get.put(AuthenticationRepository());
  var toggle = true;
  var formState = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Form(
          key: formState,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      splashFactory: NoSplash.splashFactory),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    }));
                  },
                  child: Text(
                    "Create account",
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF0E7DE3), fontSize: 14),
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: GoogleFonts.poppins(fontSize: 12),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: authController.emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your email";
                    }
                    if (!EmailValidator.validate(value)) {
                      return "Enter valid email";
                    }
                    return null;
                  },
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
                  keyboardType: TextInputType.emailAddress,
                  controller: authController.passwordController,
                  obscureText: toggle,
                  validator: (value) {
                    RegExp regex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    } else {
                      if (!regex.hasMatch(value)) {
                        return 'Enter valid password';
                      } else {
                        return null;
                      }
                    }
                  },
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFEBEBEB), width: 3),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 3)),
                      hintText: "Enter your password",
                      hintStyle: GoogleFonts.poppins(
                          color: const Color(0xFF828282), fontSize: 14),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            toggle = !toggle;
                          });
                        },
                        child: Icon(
                            toggle ? Icons.visibility : Icons.visibility_off),
                      )
                      // suffixIconColor:
                      ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isLoading = true;
                });
                if (formState.currentState!.validate()) {
                  authController
                      .userSignIn(authController.emailController.text,
                          authController.passwordController.text)
                      .then((value) => {
                            setState(() {
                              isLoading = false;
                            }),
                          })
                      .catchError((e) => {
                            setState(() {
                              isLoading = false;
                            }),
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor:
                                    Color.fromARGB(255, 235, 53, 34),
                                behavior: SnackBarBehavior.floating,
                                content: Row(children: [
                                  Icon(
                                    Icons.error,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Invalid Credentials, Try again !!!",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ])))
                          });
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 235, 53, 34),
                  // backgroundColor: const Color(0xFFE1E1E1),
                  padding: const EdgeInsets.all(14),
                  elevation: 0,
                  minimumSize: const Size.fromHeight(28),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
              child: isLoading
                  ? SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      "Continue",
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
      ),
    )));
  }
}
