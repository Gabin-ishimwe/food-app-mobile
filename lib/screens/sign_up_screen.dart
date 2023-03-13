import 'package:flutter/material.dart';
import 'package:food_book_mobile/controllers/sign_up_controller.dart';
import 'package:food_book_mobile/screens/contact_screen.dart';
import 'package:food_book_mobile/screens/sign_in_screen.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpContoller signUpContoller = Get.put(SignUpContoller());
  var toggle = true;
  var formState = GlobalKey<FormState>();
  bool isLoading = false;
  var changeScreen = false;
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
        child: Form(
          key: formState,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ElevatedButton(
              onPressed: () {
                if (changeScreen) {
                  setState(() {
                    changeScreen = false;
                  });
                } else {
                  Navigator.pop(context);
                }
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
            !changeScreen
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign up",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      // Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                      Row(
                        children: [
                          Text(
                            "Arleady have an account?",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFF828282), fontSize: 12),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2)),
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(0),
                                splashFactory: NoSplash.splashFactory),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignInScreen();
                              }));
                            },
                            child: Text(
                              "Sign in",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xFF0E7DE3), fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First name",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          TextFormField(
                            controller: signUpContoller.firstNameController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your first name";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFFEBEBEB), width: 3),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 3)),
                                hintText: "Enter your first name",
                                hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xFF828282),
                                    fontSize: 14)),
                          )
                        ],
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Last name",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          TextFormField(
                            controller: signUpContoller.lastNameContoller,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter your last name";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFFEBEBEB), width: 3),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 3)),
                                hintText: "Enter your last name",
                                hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xFF828282),
                                    fontSize: 14)),
                          )
                        ],
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: signUpContoller.emailController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                                  borderSide: BorderSide(
                                      color: Color(0xFFEBEBEB), width: 3),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 3)),
                                hintText: "Enter your email",
                                hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xFF828282),
                                    fontSize: 14)),
                          )
                        ],
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: signUpContoller.passwordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                                  borderSide: BorderSide(
                                      color: Color(0xFFEBEBEB), width: 3),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 3)),
                                hintText: "Enter your password",
                                hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xFF828282),
                                    fontSize: 14),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      toggle = !toggle;
                                    });
                                  },
                                  child: Icon(toggle
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                )
                                // suffixIconColor:
                                ),
                          )
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16)),
                      ElevatedButton(
                        onPressed: () {
                          // signUpContoller.rand();

                          if (formState.currentState!.validate()) {
                            setState(() {
                              changeScreen = true;
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 235, 53, 34),
                            // backgroundColor: const Color(0xFFE1E1E1),
                            padding: const EdgeInsets.all(14),
                            elevation: 0,
                            minimumSize: const Size.fromHeight(28),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                        child: Text(
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
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10)),
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
                            controller: signUpContoller.phoneNumberController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Phone number is required";
                              }
                            },
                            decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFEBEBEB), width: 3),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue, width: 3)),
                              hintText: "+250 787-857-036",
                              hintStyle: GoogleFonts.poppins(
                                  color: const Color(0xFF828282), fontSize: 14),
                              // suffixIconColor:
                            ),
                          )
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16)),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isLoading = true;
                          });
                          if (formState.currentState!.validate()) {
                            signUpContoller
                                .registerWithemailAndPassword(
                                    signUpContoller.emailController.text.trim(),
                                    signUpContoller.passwordController.text
                                        .trim())
                                .then((value) => {
                                      print(value),
                                      setState(() {
                                        isLoading = false;
                                      }),
                                    })
                                .catchError((e) {
                              setState(() {
                                isLoading = false;
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
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
                                          "Server Error, Try again !!!",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ])));
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 235, 53, 34),
                            // backgroundColor: const Color(0xFFE1E1E1),
                            padding: const EdgeInsets.all(14),
                            elevation: 0,
                            minimumSize: const Size.fromHeight(28),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                        child: isLoading
                            ? SizedBox(
                                height: 24,
                                width: 24,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                            : Text(
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
                    ],
                  )
          ]),
        ),
      ),
    )));
  }
}
