import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_book_mobile/firebase_options.dart';
import 'package:food_book_mobile/repositories/authentication_controller.dart';
import 'package:food_book_mobile/screens/onboarding_screen.dart';
import 'package:food_book_mobile/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize firebase before app starts
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Food Book Application",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
          primarySwatch: Colors.red,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
    );
  }
}
