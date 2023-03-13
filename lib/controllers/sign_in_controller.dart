import 'package:flutter/material.dart';
import 'package:food_book_mobile/repositories/authentication_controller.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final authRepository = Get.put(AuthenticationRepository());

  Future<void> userSignIn(String email, String password) async {
    try {
      await authRepository.loginWithEmailAndPassword(email, password);
    } catch (e) {
      printError(info: "Login error---------------------------");
      print(e);
    }
  }
}
