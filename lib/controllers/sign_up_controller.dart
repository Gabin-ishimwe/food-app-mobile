import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';

class SignUpContoller extends GetxController {
  // static method to get signUpController
  static SignUpContoller get instance => Get.find();

  // textFielController to get data from textField
  final firstNameController = TextEditingController();
  final lastNameContoller = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();

  void userRegister(String firstName, String lastName, String email,
      String password, String phoneNumber) {
    print("object-----");
    print(firstName);
    print(lastName);
    print(email);
    print(password);
    print(phoneNumber);
  }

  void rand() {
    print("something...");
  }
}
